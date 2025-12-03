@interface HDIDSOutgoingResponse
- (HDIDSOutgoingResponse)init;
- (NSString)description;
- (id)nanoSyncDescription;
- (void)configureWithActivationRestore:(id)restore syncStore:(id)store profile:(id)profile;
- (void)configureWithStatus:(id)status syncStore:(id)store profile:(id)profile;
- (void)dealloc;
- (void)send;
- (void)setPbResponse:(id)response;
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
  selfCopy = self;
  v4 = selfCopy;
  if (messageCenter)
  {
    messageID = [(HDIDSOutgoingResponse *)selfCopy messageID];
    requestMessageID = [(HDIDSOutgoingResponse *)v4 requestMessageID];
    idsIdentifier = [(HDIDSOutgoingResponse *)v4 idsIdentifier];
    if (!idsIdentifier)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:425 description:@"Response's request needs an idsIdentifier"];
    }

    toParticipant = [(HDIDSOutgoingResponse *)v4 toParticipant];

    if (!toParticipant)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:426 description:@"Response's to participant not found"];
    }

    if (v4->_sent)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__sendResponse_ object:messageCenter file:@"HDIDSMessageCenter.m" lineNumber:427 description:@"You cannot call send twice for the same response object"];
    }

    v4->_sent = 1;
    queue = messageCenter->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__HDIDSMessageCenter__sendResponse___block_invoke;
    block[3] = &unk_27862AF40;
    block[4] = messageCenter;
    v17 = sel__sendResponse_;
    v18 = messageID;
    v15 = v4;
    v16 = idsIdentifier;
    v19 = requestMessageID;
    v10 = idsIdentifier;
    dispatch_async(queue, block);
  }
}

- (id)nanoSyncDescription
{
  persistentUserInfo = [(HDIDSOutgoingResponse *)self persistentUserInfo];
  v4 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:persistentUserInfo];

  LODWORD(persistentUserInfo) = [(HDIDSOutgoingResponse *)self messageID];
  idsIdentifier = [(HDIDSOutgoingResponse *)self idsIdentifier];
  nanoSyncDescription = [v4 nanoSyncDescription];
  v7 = FormattedMessageDescription(persistentUserInfo, 0, 0, idsIdentifier, nanoSyncDescription);

  return v7;
}

- (void)dealloc
{
  [(HKDaemonTransaction *)self->_transaction invalidate];
  v3.receiver = self;
  v3.super_class = HDIDSOutgoingResponse;
  [(HDIDSOutgoingResponse *)&v3 dealloc];
}

- (void)configureWithActivationRestore:(id)restore syncStore:(id)store profile:(id)profile
{
  storeCopy = store;
  profileCopy = profile;
  restoreCopy = restore;
  if ([(HDIDSOutgoingResponse *)self messageID]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncSupport.m" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"[self messageID] == HDNanoSyncMessageRestore"}];
  }

  v11 = [HDCodableNanoSyncMessage messageWithSyncStore:storeCopy profile:profileCopy];
  [v11 setActivationRestore:restoreCopy];

  [(HDIDSOutgoingResponse *)self setPbResponse:v11];
  copyPersistentUserInfo = [v11 copyPersistentUserInfo];
  [(HDIDSOutgoingResponse *)self setPersistentUserInfo:copyPersistentUserInfo];
}

- (void)configureWithStatus:(id)status syncStore:(id)store profile:(id)profile
{
  storeCopy = store;
  profileCopy = profile;
  statusCopy = status;
  if ([(HDIDSOutgoingResponse *)self messageID]!= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDNanoSyncSupport.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"[self messageID] == HDNanoSyncMessageChanges"}];
  }

  v11 = [HDCodableNanoSyncMessage messageWithSyncStore:storeCopy profile:profileCopy];
  [v11 setStatus:statusCopy];

  [(HDIDSOutgoingResponse *)self setPbResponse:v11];
  copyPersistentUserInfo = [v11 copyPersistentUserInfo];
  [(HDIDSOutgoingResponse *)self setPersistentUserInfo:copyPersistentUserInfo];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

- (void)setPbResponse:(id)response
{
  responseCopy = response;
  v6 = [(HDIDSMessageCenter *)self->_messageCenter _pbMappingForMessageID:?];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 16);
  }

  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:859 description:{@"Invalid pbResponse of type %@", v15}];
  }

  pbResponse = self->_pbResponse;
  self->_pbResponse = responseCopy;
  v16 = responseCopy;

  data = [(PBCodable *)self->_pbResponse data];
  data = self->_data;
  self->_data = data;
}

@end