@interface HDIDSOutgoingResponse
- (HDIDSOutgoingResponse)init;
- (NSString)description;
- (id)nanoSyncDescription;
- (void)configureWithActivationRestore:(id)a3 syncStore:(id)a4 profile:(id)a5;
- (void)configureWithStatus:(id)a3 syncStore:(id)a4 profile:(id)a5;
- (void)dealloc;
- (void)send;
- (void)setPbResponse:(id)a3;
@end

@implementation HDIDSOutgoingResponse

- (HDIDSOutgoingResponse)init
{
  v6.receiver = self;
  v6.super_class = HDIDSOutgoingResponse;
  v2 = [(HDIDSOutgoingResponse *)&v6 init];
  if (v2)
  {
    v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v2];
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

- (void)send
{
  messageCenter = self->_messageCenter;
  v3 = self;
  v4 = v3;
  if (messageCenter)
  {
    v5 = [(HDIDSOutgoingResponse *)v3 messageID];
    v6 = [(HDIDSOutgoingResponse *)v4 requestMessageID];
    v7 = [(HDIDSOutgoingResponse *)v4 idsIdentifier];
    if (!v7)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:425 description:@"Response's request needs an idsIdentifier"];
    }

    v8 = [(HDIDSOutgoingResponse *)v4 toParticipant];

    if (!v8)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:426 description:@"Response's to participant not found"];
    }

    if (v4->_sent)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:427 description:@"You cannot call send twice for the same response object"];
    }

    v4->_sent = 1;
    queue = messageCenter->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__HDIDSMessageCenter__sendResponse___block_invoke;
    block[3] = &unk_27862AF40;
    block[4] = messageCenter;
    v17 = sel__sendResponse_;
    v18 = v5;
    v15 = v4;
    v16 = v7;
    v19 = v6;
    v10 = v7;
    dispatch_async(queue, block);
  }
}

- (id)nanoSyncDescription
{
  v3 = [(HDIDSOutgoingResponse *)self persistentUserInfo];
  v4 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:v3];

  LODWORD(v3) = [(HDIDSOutgoingResponse *)self messageID];
  v5 = [(HDIDSOutgoingResponse *)self idsIdentifier];
  v6 = [v4 nanoSyncDescription];
  v7 = FormattedMessageDescription(v3, 0, 0, v5, v6);

  return v7;
}

- (void)dealloc
{
  [(HKDaemonTransaction *)self->_transaction invalidate];
  v3.receiver = self;
  v3.super_class = HDIDSOutgoingResponse;
  [(HDIDSOutgoingResponse *)&v3 dealloc];
}

- (void)configureWithActivationRestore:(id)a3 syncStore:(id)a4 profile:(id)a5
{
  v14 = a4;
  v9 = a5;
  v10 = a3;
  if ([(HDIDSOutgoingResponse *)self messageID]!= 1)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDNanoSyncSupport.m" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"[self messageID] == HDNanoSyncMessageRestore"}];
  }

  v11 = [HDCodableNanoSyncMessage messageWithSyncStore:v14 profile:v9];
  [v11 setActivationRestore:v10];

  [(HDIDSOutgoingResponse *)self setPbResponse:v11];
  v12 = [v11 copyPersistentUserInfo];
  [(HDIDSOutgoingResponse *)self setPersistentUserInfo:v12];
}

- (void)configureWithStatus:(id)a3 syncStore:(id)a4 profile:(id)a5
{
  v14 = a4;
  v9 = a5;
  v10 = a3;
  if ([(HDIDSOutgoingResponse *)self messageID]!= 2)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDNanoSyncSupport.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"[self messageID] == HDNanoSyncMessageChanges"}];
  }

  v11 = [HDCodableNanoSyncMessage messageWithSyncStore:v14 profile:v9];
  [v11 setStatus:v10];

  [(HDIDSOutgoingResponse *)self setPbResponse:v11];
  v12 = [v11 copyPersistentUserInfo];
  [(HDIDSOutgoingResponse *)self setPersistentUserInfo:v12];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

- (void)setPbResponse:(id)a3
{
  v5 = a3;
  v6 = [(HDIDSMessageCenter *)self->_messageCenter _pbMappingForMessageID:?];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 16);
  }

  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:859 description:{@"Invalid pbResponse of type %@", v15}];
  }

  pbResponse = self->_pbResponse;
  self->_pbResponse = v5;
  v16 = v5;

  v11 = [(PBCodable *)self->_pbResponse data];
  data = self->_data;
  self->_data = v11;
}

@end