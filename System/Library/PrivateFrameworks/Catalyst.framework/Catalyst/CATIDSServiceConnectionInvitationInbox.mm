@interface CATIDSServiceConnectionInvitationInbox
+ (id)acknowledgeTimerIdentifier;
- (CATIDSServiceConnectionInvitationInbox)initWithTimerSource:(id)source assertionProvider:(id)provider workQueue:(id)queue acknowledgeTimeout:(double)timeout;
- (CATIDSServiceConnectionInvitationInboxDelegate)delegate;
- (void)acknowledgeTimerFiredWithInvitationIdentifier:(id)identifier;
- (void)dealloc;
- (void)receiveAcknowledgeForInvitationIdentifier:(id)identifier connectionIdentifier:(id)connectionIdentifier;
- (void)receiveInvitationWithIdentifier:(id)identifier senderAppleID:(id)d senderAddress:(id)address messagingVersion:(unint64_t)version userInfo:(id)info;
@end

@implementation CATIDSServiceConnectionInvitationInbox

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = CATIDSServiceConnectionInvitationInbox;
  [(CATIDSServiceConnectionInvitationInbox *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (CATIDSServiceConnectionInvitationInbox)initWithTimerSource:(id)source assertionProvider:(id)provider workQueue:(id)queue acknowledgeTimeout:(double)timeout
{
  sourceCopy = source;
  providerCopy = provider;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CATIDSServiceConnectionInvitationInbox;
  v14 = [(CATIDSServiceConnectionInvitationInbox *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mTimerSource, source);
    objc_storeStrong(&v15->mAssertionProvider, provider);
    objc_storeStrong(&v15->mWorkQueue, queue);
    v15->mAcknowledgeTimeout = timeout;
    v16 = objc_opt_new();
    mInvitationsByInvitationID = v15->mInvitationsByInvitationID;
    v15->mInvitationsByInvitationID = v16;

    v18 = objc_opt_new();
    mAcknowledgeTimersByInvitationID = v15->mAcknowledgeTimersByInvitationID;
    v15->mAcknowledgeTimersByInvitationID = v18;
  }

  return v15;
}

- (void)receiveInvitationWithIdentifier:(id)identifier senderAppleID:(id)d senderAddress:(id)address messagingVersion:(unint64_t)version userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  addressCopy = address;
  infoCopy = info;
  CATAssertIsQueue(self->mWorkQueue);
  acquireAssertion = [(CATAssertionProviding *)self->mAssertionProvider acquireAssertion];
  v16 = [[CATIDSServiceConnectionInvitation alloc] initWithSenderAppleID:dCopy senderAddress:addressCopy assertion:acquireAssertion messagingVersion:version userInfo:infoCopy];
  objc_initWeak(&location, self);
  v17 = self->mWorkQueue;
  delegate = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  connectionIdentifier = [(CATIDSServiceConnectionInvitation *)v16 connectionIdentifier];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __128__CATIDSServiceConnectionInvitationInbox_receiveInvitationWithIdentifier_senderAppleID_senderAddress_messagingVersion_userInfo___block_invoke;
  v27[3] = &unk_278DA7320;
  v20 = v17;
  v28 = v20;
  objc_copyWeak(&v34, &location);
  v21 = acquireAssertion;
  v29 = v21;
  v22 = identifierCopy;
  v30 = v22;
  v23 = v16;
  v31 = v23;
  v24 = dCopy;
  v32 = v24;
  v25 = addressCopy;
  v33 = v25;
  [delegate connectionInvitationInbox:self shouldConnectToAppleID:v24 connectionIdentifier:connectionIdentifier userInfo:infoCopy responseHandler:v27];

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

- (void)receiveAcknowledgeForInvitationIdentifier:(id)identifier connectionIdentifier:(id)connectionIdentifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionIdentifierCopy = connectionIdentifier;
  CATAssertIsQueue(self->mWorkQueue);
  v8 = [(NSMutableDictionary *)self->mInvitationsByInvitationID objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (!v8)
  {
    v19 = _CATLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CATIDSServiceConnectionInvitationInbox *)identifierCopy receiveAcknowledgeForInvitationIdentifier:connectionIdentifierCopy connectionIdentifier:v19];
    }

    goto LABEL_8;
  }

  connectionIdentifier = [v8 connectionIdentifier];
  v11 = [connectionIdentifier isEqual:connectionIdentifierCopy];

  if ((v11 & 1) == 0)
  {
    v19 = _CATLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      connectionIdentifier2 = [v9 connectionIdentifier];
      *buf = 138543874;
      v23 = identifierCopy;
      v24 = 2114;
      v25 = connectionIdentifierCopy;
      v26 = 2114;
      v27 = connectionIdentifier2;
      _os_log_error_impl(&dword_24329F000, v19, OS_LOG_TYPE_ERROR, "Found mismatch connection identifier for invitation %{public}@. Received %{public}@ but expected %{public}@", buf, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID objectForKeyedSubscript:identifierCopy];
  [v12 invalidate];

  [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID setObject:0 forKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->mInvitationsByInvitationID setObject:0 forKeyedSubscript:identifierCopy];
  delegate = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  senderAppleID = [v9 senderAppleID];
  senderAddress = [v9 senderAddress];
  assertion = [v9 assertion];
  messagingVersion = [v9 messagingVersion];
  userInfo = [v9 userInfo];
  [delegate connectionInvitationInbox:self foundConection:connectionIdentifierCopy senderAppleID:senderAppleID senderAddress:senderAddress assertion:assertion messagingVersion:messagingVersion userInfo:userInfo];

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)acknowledgeTimerFiredWithInvitationIdentifier:(id)identifier
{
  mWorkQueue = self->mWorkQueue;
  identifierCopy = identifier;
  CATAssertIsQueue(mWorkQueue);
  v11 = [(NSMutableDictionary *)self->mInvitationsByInvitationID objectForKeyedSubscript:identifierCopy];
  assertion = [v11 assertion];
  [assertion cancel];

  [(NSMutableDictionary *)self->mAcknowledgeTimersByInvitationID setObject:0 forKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->mInvitationsByInvitationID setObject:0 forKeyedSubscript:identifierCopy];
  delegate = [(CATIDSServiceConnectionInvitationInbox *)self delegate];
  connectionIdentifier = [v11 connectionIdentifier];
  senderAppleID = [v11 senderAppleID];
  userInfo = [v11 userInfo];
  [delegate connectionInvitatioInbox:self timeoutOutForInvitation:identifierCopy connectionIdentifier:connectionIdentifier senderAppleID:senderAppleID userInfo:userInfo];
}

+ (id)acknowledgeTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(self);
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