@interface HDIDSInvitationManager
- (HDIDSInvitationManager)initWithServiceIdentifier:(id)a3 messageClass:(Class)a4 schema:(id)a5;
- (HDIDSInvitationManagerDelegate)delegate;
- (void)acceptInvitationWithUUID:(id)a3 codableObject:(id)a4 serverAcknowledgedBlock:(id)a5;
- (void)declineInvitationWithUUID:(id)a3 serverAcknowledgedBlock:(id)a4;
- (void)manager:(id)a3 incomingInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4;
- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4;
- (void)rescindInvitationWithUUID:(id)a3 serverAcknowledgedBlock:(id)a4;
- (void)sendInvitationToIdentifier:(id)a3 expirationDate:(id)a4 codableObject:(id)a5 serverAcknowledgedBlock:(id)a6;
@end

@implementation HDIDSInvitationManager

- (HDIDSInvitationManager)initWithServiceIdentifier:(id)a3 messageClass:(Class)a4 schema:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = HDIDSInvitationManager;
  v10 = [(HDIDSInvitationManager *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageClass, a4);
    v12 = [v9 copy];
    schema = v11->_schema;
    v11->_schema = v12;

    v14 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v14;

    v16 = HKCreateSerialDispatchQueue();
    IDSDelegateQueue = v11->_IDSDelegateQueue;
    v11->_IDSDelegateQueue = v16;

    if ((HKIsUnitTesting() & 1) == 0)
    {
      v18 = [objc_alloc(MEMORY[0x277D18730]) initWithServiceIdentifier:v8];
      [(HDIDSInvitationManager *)v11 setInvitationManager:v18];

      v19 = [(HDIDSInvitationManager *)v11 invitationManager];
      [v19 setDelegate:v11 queue:v11->_IDSDelegateQueue];
    }
  }

  return v11;
}

- (void)sendInvitationToIdentifier:(id)a3 expirationDate:(id)a4 codableObject:(id)a5 serverAcknowledgedBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HDIDSInvitationManager_sendInvitationToIdentifier_expirationDate_codableObject_serverAcknowledgedBlock___block_invoke;
  block[3] = &unk_27861F9C0;
  v20 = v12;
  v21 = self;
  v22 = v10;
  v23 = v11;
  v24 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_sync(queue, block);
}

void __106__HDIDSInvitationManager_sendInvitationToIdentifier_expirationDate_codableObject_serverAcknowledgedBlock___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ObjectDataKey";
  v2 = [*(a1 + 32) data];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v4 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:v3 schema:*(*(a1 + 40) + 40)];
  v5 = [*(a1 + 40) invitationManager];
  [v5 sendInvitationToDestination:*(a1 + 48) expirationDate:*(a1 + 56) context:v4 serverAcknowledgedBlock:*(a1 + 64)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rescindInvitationWithUUID:(id)a3 serverAcknowledgedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDIDSInvitationManager_rescindInvitationWithUUID_serverAcknowledgedBlock___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __76__HDIDSInvitationManager_rescindInvitationWithUUID_serverAcknowledgedBlock___block_invoke(id *a1)
{
  v2 = [a1[4] invitationManager];
  v3 = [v2 pendingInvitations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDIDSInvitationManager_rescindInvitationWithUUID_serverAcknowledgedBlock___block_invoke_2;
  v9[3] = &unk_27862DB30;
  v10 = a1[5];
  v4 = [v3 hk_anyObjectPassingTest:v9];

  if (v4)
  {
    v5 = [a1[4] invitationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__HDIDSInvitationManager_rescindInvitationWithUUID_serverAcknowledgedBlock___block_invoke_3;
    v7[3] = &unk_2786200D0;
    v8 = a1[6];
    [v5 cancelInvitation:v4 serverAcknowledgedBlock:v7];

    v6 = v8;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Invitation not found"];
    (*(a1[6] + 2))();
  }
}

uint64_t __76__HDIDSInvitationManager_rescindInvitationWithUUID_serverAcknowledgedBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)acceptInvitationWithUUID:(id)a3 codableObject:(id)a4 serverAcknowledgedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HDIDSInvitationManager_acceptInvitationWithUUID_codableObject_serverAcknowledgedBlock___block_invoke;
  v15[3] = &unk_278617468;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(queue, v15);
}

void __89__HDIDSInvitationManager_acceptInvitationWithUUID_codableObject_serverAcknowledgedBlock___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] invitationManager];
  v3 = [v2 receivedInvitations];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__HDIDSInvitationManager_acceptInvitationWithUUID_codableObject_serverAcknowledgedBlock___block_invoke_2;
  v12[3] = &unk_27862DB58;
  v13 = a1[5];
  v4 = [v3 hk_anyObjectPassingTest:v12];

  if (v4)
  {
    v14 = @"ObjectDataKey";
    v5 = [a1[6] data];
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v7 = [objc_alloc(MEMORY[0x277D186F0]) initWithDictionary:v6 schema:*(a1[4] + 5)];
    v8 = [a1[4] invitationManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__HDIDSInvitationManager_acceptInvitationWithUUID_codableObject_serverAcknowledgedBlock___block_invoke_3;
    v10[3] = &unk_2786200D0;
    v11 = a1[7];
    [v8 acceptInvitation:v4 withContext:v7 serverAcknowledgedBlock:v10];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Invitation not found"];
    (*(a1[7] + 2))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __89__HDIDSInvitationManager_acceptInvitationWithUUID_codableObject_serverAcknowledgedBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)declineInvitationWithUUID:(id)a3 serverAcknowledgedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDIDSInvitationManager_declineInvitationWithUUID_serverAcknowledgedBlock___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __76__HDIDSInvitationManager_declineInvitationWithUUID_serverAcknowledgedBlock___block_invoke(id *a1)
{
  v2 = [a1[4] invitationManager];
  v3 = [v2 receivedInvitations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDIDSInvitationManager_declineInvitationWithUUID_serverAcknowledgedBlock___block_invoke_2;
  v9[3] = &unk_27862DB58;
  v10 = a1[5];
  v4 = [v3 hk_anyObjectPassingTest:v9];

  if (v4)
  {
    v5 = [a1[4] invitationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__HDIDSInvitationManager_declineInvitationWithUUID_serverAcknowledgedBlock___block_invoke_3;
    v7[3] = &unk_2786200D0;
    v8 = a1[6];
    [v5 declineInvitation:v4 serverAcknowledgedBlock:v7];

    v6 = v8;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Invitation not found"];
    (*(a1[6] + 2))();
  }
}

uint64_t __76__HDIDSInvitationManager_declineInvitationWithUUID_serverAcknowledgedBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)manager:(id)a3 incomingInvitation:(id)a4
{
  v5 = a4;
  v16 = [v5 context];
  v6 = [v16 dictionary];
  v7 = [v6 objectForKeyedSubscript:@"ObjectDataKey"];

  v8 = [objc_alloc(self->_messageClass) initWithData:v7];
  v9 = [v5 fromID];
  v10 = [v9 _stripPotentialTokenURIWithToken:0];
  v11 = [v10 _stripFZIDPrefix];

  v12 = [HDIDSInvitation alloc];
  v13 = [v5 uniqueID];

  v14 = [(HDIDSInvitation *)v12 initWithUUID:v13 fromID:v11 codableObject:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained invitationManager:self didReceiveInvitation:v14];
}

- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4
{
  v5 = a4;
  v16 = [v5 context];
  v6 = [v16 dictionary];
  v7 = [v6 objectForKeyedSubscript:@"ObjectDataKey"];

  v8 = [objc_alloc(self->_messageClass) initWithData:v7];
  v9 = [v5 fromID];
  v10 = [v9 _stripPotentialTokenURIWithToken:0];
  v11 = [v10 _stripFZIDPrefix];

  v12 = [HDIDSInvitation alloc];
  v13 = [v5 uniqueID];

  v14 = [(HDIDSInvitation *)v12 initWithUUID:v13 fromID:v11 codableObject:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained invitationManager:self didRescindInvitation:v14];
}

- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4
{
  v5 = a4;
  v13 = [v5 context];
  v6 = [v13 dictionary];
  v7 = [v6 objectForKeyedSubscript:@"ObjectDataKey"];

  v8 = [objc_alloc(self->_messageClass) initWithData:v7];
  v9 = [HDIDSInvitation alloc];
  v10 = [v5 uniqueID];

  v11 = [(HDIDSInvitation *)v9 initWithUUID:v10 fromID:0 codableObject:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained invitationManager:self didAcceptInvitation:v11];
}

- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4
{
  v5 = a4;
  v13 = [v5 context];
  v6 = [v13 dictionary];
  v7 = [v6 objectForKeyedSubscript:@"ObjectDataKey"];

  v8 = [objc_alloc(self->_messageClass) initWithData:v7];
  v9 = [HDIDSInvitation alloc];
  v10 = [v5 uniqueID];

  v11 = [(HDIDSInvitation *)v9 initWithUUID:v10 fromID:0 codableObject:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained invitationManager:self didDeclineInvitation:v11];
}

- (HDIDSInvitationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end