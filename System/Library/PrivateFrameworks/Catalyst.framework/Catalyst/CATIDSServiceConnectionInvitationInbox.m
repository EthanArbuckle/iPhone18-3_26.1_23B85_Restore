@interface CATIDSServiceConnectionInvitationInbox
+ (id)acknowledgeTimerIdentifier;
- (CATIDSServiceConnectionInvitationInbox)initWithTimerSource:(id)a3 assertionProvider:(id)a4 workQueue:(id)a5 acknowledgeTimeout:(double)a6;
- (CATIDSServiceConnectionInvitationInboxDelegate)delegate;
- (void)acknowledgeTimerFiredWithInvitationIdentifier:(id)a3;
- (void)dealloc;
- (void)receiveAcknowledgeForInvitationIdentifier:(id)a3 connectionIdentifier:(id)a4;
- (void)receiveInvitationWithIdentifier:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5 messagingVersion:(unint64_t)a6 userInfo:(id)a7;
@end

@implementation CATIDSServiceConnectionInvitationInbox

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = CATIDSServiceConnectionInvitationInbox;
  [(CATIDSServiceConnectionInvitationInbox *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (CATIDSServiceConnectionInvitationInbox)initWithTimerSource:(id)a3 assertionProvider:(id)a4 workQueue:(id)a5 acknowledgeTimeout:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = CATIDSServiceConnectionInvitationInbox;
  v14 = [(CATIDSServiceConnectionInvitationInbox *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mTimerSource, a3);
    objc_storeStrong(&v15->mAssertionProvider, a4);
    objc_storeStrong(&v15->mWorkQueue, a5);
    v15->mAcknowledgeTimeout = a6;
    v16 = objc_opt_new();
    mInvitationsByInvitationID = v15->mInvitationsByInvitationID;
    v15->mInvitationsByInvitationID = v16;

    v18 = objc_opt_new();
    mAcknowledgeTimersByInvitationID = v15->mAcknowledgeTimersByInvitationID;
    v15->mAcknowledgeTimersByInvitationID = v18;
  }

  return v15;
}

- (void)receiveInvitationWithIdentifier:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5 messagingVersion:(unint64_t)a6 userInfo:(id)a7
{
  v26 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  CATAssertIsQueue(self->mWorkQueue);
  v15 = [(CATAssertionProviding *)self->mAssertionProvider acquireAssertion];
  v16 = [[CATIDSServiceConnectionInvitation alloc] initWithSenderAppleID:v12 senderAddress:v13 assertion:v15 messagingVersion:a6 userInfo:v14];
  objc_initWeak(&location, self);
  v17 = self->mWorkQueue;
  v18 = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  v19 = [(CATIDSServiceConnectionInvitation *)v16 connectionIdentifier];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __128__CATIDSServiceConnectionInvitationInbox_receiveInvitationWithIdentifier_senderAppleID_senderAddress_messagingVersion_userInfo___block_invoke;
  v27[3] = &unk_278DA7320;
  v20 = v17;
  v28 = v20;
  objc_copyWeak(&v34, &location);
  v21 = v15;
  v29 = v21;
  v22 = v26;
  v30 = v22;
  v23 = v16;
  v31 = v23;
  v24 = v12;
  v32 = v24;
  v25 = v13;
  v33 = v25;
  [v18 connectionInvitationInbox:self shouldConnectToAppleID:v24 connectionIdentifier:v19 userInfo:v14 responseHandler:v27];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __128__CATIDSServiceConnectionInvitationInbox_receiveInvitationWithIdentifier_senderAppleID_senderAddress_messagingVersion_userInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  CATAssertIsQueue(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = WeakRetained[1];
      v9 = [objc_opt_class() acknowledgeTimerIdentifier];
      v10 = *(v7 + 4);
      v11 = *(a1 + 32);
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __128__CATIDSServiceConnectionInvitationInbox_receiveInvitationWithIdentifier_senderAppleID_senderAddress_messagingVersion_userInfo___block_invoke_2;
      v22 = &unk_278DA72F8;
      objc_copyWeak(&v24, (a1 + 80));
      v23 = *(a1 + 48);
      v12 = [v8 scheduleOneShotTimerWithIdentifier:v9 timeInterval:v11 queue:&v19 fireHandler:v10];

      [*(v7 + 5) setObject:*(a1 + 56) forKeyedSubscript:{*(a1 + 48), v19, v20, v21, v22}];
      [*(v7 + 6) setObject:v12 forKeyedSubscript:*(a1 + 48)];
      v13 = [v7 delegate];
      v14 = *(a1 + 48);
      v15 = [*(a1 + 56) connectionIdentifier];
      [v13 connectionInvitationInbox:v7 wantsToAcceptInvitation:v14 connectionIdentifier:v15 destinationAddress:*(a1 + 72)];

      objc_destroyWeak(&v24);
    }

    else
    {
      [*(a1 + 40) cancel];
      v16 = [v7 delegate];
      v17 = *(a1 + 48);
      v18 = [*(a1 + 56) connectionIdentifier];
      [v16 connectionInvitationInbox:v7 rejectedInvitation:v17 connectionIdentifier:v18 appleID:*(a1 + 64) address:*(a1 + 72) error:v5];
    }
  }
}

void __128__CATIDSServiceConnectionInvitationInbox_receiveInvitationWithIdentifier_senderAppleID_senderAddress_messagingVersion_userInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained acknowledgeTimerFiredWithInvitationIdentifier:*(a1 + 32)];
}

- (void)receiveAcknowledgeForInvitationIdentifier:(id)a3 connectionIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  v8 = [(NSMutableDictionary *)self->mInvitationsByInvitationID objectForKeyedSubscript:v6];
  v9 = v8;
  if (!v8)
  {
    v19 = _CATLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CATIDSServiceConnectionInvitationInbox *)v6 receiveAcknowledgeForInvitationIdentifier:v7 connectionIdentifier:v19];
    }

    goto LABEL_8;
  }

  v10 = [v8 connectionIdentifier];
  v11 = [v10 isEqual:v7];

  if ((v11 & 1) == 0)
  {
    v19 = _CATLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v9 connectionIdentifier];
      *buf = 138543874;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v21;
      _os_log_error_impl(&dword_24329F000, v19, OS_LOG_TYPE_ERROR, "Found mismatch connection identifier for invitation %{public}@. Received %{public}@ but expected %{public}@", buf, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID objectForKeyedSubscript:v6];
  [v12 invalidate];

  [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID setObject:0 forKeyedSubscript:v6];
  [(NSMutableDictionary *)self->mInvitationsByInvitationID setObject:0 forKeyedSubscript:v6];
  v13 = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  v14 = [v9 senderAppleID];
  v15 = [v9 senderAddress];
  v16 = [v9 assertion];
  v17 = [v9 messagingVersion];
  v18 = [v9 userInfo];
  [v13 connectionInvitationInbox:self foundConection:v7 senderAppleID:v14 senderAddress:v15 assertion:v16 messagingVersion:v17 userInfo:v18];

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)acknowledgeTimerFiredWithInvitationIdentifier:(id)a3
{
  mWorkQueue = self->mWorkQueue;
  v5 = a3;
  CATAssertIsQueue(mWorkQueue);
  v11 = [(NSMutableDictionary *)self->mInvitationsByInvitationID objectForKeyedSubscript:v5];
  v6 = [v11 assertion];
  [v6 cancel];

  [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID setObject:0 forKeyedSubscript:v5];
  [(NSMutableDictionary *)self->mInvitationsByInvitationID setObject:0 forKeyedSubscript:v5];
  v7 = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  v8 = [v11 connectionIdentifier];
  v9 = [v11 senderAppleID];
  v10 = [v11 userInfo];
  [v7 connectionInvitatioInbox:self timeoutOutForInvitation:v5 connectionIdentifier:v8 senderAppleID:v9 userInfo:v10];
}

+ (id)acknowledgeTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@-AcknowledgeTimer", v3];

  return v4;
}

- (CATIDSServiceConnectionInvitationInboxDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveAcknowledgeForInvitationIdentifier:(os_log_t)log connectionIdentifier:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24329F000, log, OS_LOG_TYPE_ERROR, "Found acknowledge for unexpected invitation %{public}@ with connection identifier %{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end