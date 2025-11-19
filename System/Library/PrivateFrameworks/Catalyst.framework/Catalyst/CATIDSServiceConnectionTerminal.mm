@interface CATIDSServiceConnectionTerminal
- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 sourceAppleID:(id)a5;
- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 sourceAppleID:(id)a5 connectionConfiguration:(id)a6;
- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 timerSource:(id)a5 workQueue:(id)a6 delegateQueue:(id)a7 sourceAppleID:(id)a8 connectionConfiguration:(id)a9;
- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 networkPowerPrimitives:(id)a4 sourceAppleID:(id)a5;
- (CATIDSServiceConnectionTerminalDelegate)delegate;
- (id)inviteAppleIDToConnect:(id)a3 userInfo:(id)a4;
- (void)cancelAllInvitations;
- (void)cancelInvitationWithIdentifier:(id)a3;
- (void)connectionInvitatioInbox:(id)a3 timeoutOutForInvitation:(id)a4 connectionIdentifier:(id)a5 senderAppleID:(id)a6 userInfo:(id)a7;
- (void)connectionInvitationInbox:(id)a3 foundConection:(id)a4 senderAppleID:(id)a5 senderAddress:(id)a6 assertion:(id)a7 messagingVersion:(unint64_t)a8 userInfo:(id)a9;
- (void)connectionInvitationInbox:(id)a3 rejectedInvitation:(id)a4 connectionIdentifier:(id)a5 appleID:(id)a6 address:(id)a7 error:(id)a8;
- (void)connectionInvitationInbox:(id)a3 shouldConnectToAppleID:(id)a4 connectionIdentifier:(id)a5 userInfo:(id)a6 responseHandler:(id)a7;
- (void)connectionInvitationInbox:(id)a3 wantsToAcceptInvitation:(id)a4 connectionIdentifier:(id)a5 destinationAddress:(id)a6;
- (void)connectionInvitationOutbox:(id)a3 foundConnection:(id)a4 destinationAppleID:(id)a5 destinationAddress:(id)a6 assertion:(id)a7 messagingVersion:(unint64_t)a8 userInfo:(id)a9;
- (void)connectionInvitationOutbox:(id)a3 receivedARejectionFrom:(id)a4 connectionIdentifier:(id)a5 userInfo:(id)a6 error:(id)a7;
- (void)connectionInvitationOutbox:(id)a3 wantsToAcknowledgeInvitation:(id)a4 connectionIdentifier:(id)a5 destinationAddress:(id)a6;
- (void)connectionInvitationOutbox:(id)a3 wantsToSendInvitation:(id)a4 destinationAppleID:(id)a5 userInfo:(id)a6;
- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5;
- (void)resume;
- (void)sendContent:(id)a3 toAddress:(id)a4 forInvitation:(id)a5;
- (void)suspend;
@end

@implementation CATIDSServiceConnectionTerminal

- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 timerSource:(id)a5 workQueue:(id)a6 delegateQueue:(id)a7 sourceAppleID:(id)a8 connectionConfiguration:(id)a9
{
  v39 = a3;
  v16 = a4;
  v38 = a5;
  v17 = a6;
  v37 = a7;
  v18 = a8;
  v19 = a9;
  if (!v18)
  {
    [CATIDSServiceConnectionTerminal initWithIDSPrimitives:a2 assertionProvider:self timerSource:? workQueue:? delegateQueue:? sourceAppleID:? connectionConfiguration:?];
  }

  v40.receiver = self;
  v40.super_class = CATIDSServiceConnectionTerminal;
  v20 = [(CATIDSServiceConnectionTerminal *)&v40 init];
  v21 = v20;
  v22 = v19;
  v23 = v17;
  if (v20)
  {
    v36 = v22;
    objc_storeStrong(&v20->mIDSPrimitives, a3);
    objc_storeStrong(&v21->mTimerSource, a5);
    objc_storeStrong(&v21->mWorkQueue, a6);
    objc_storeStrong(&v21->mDelegateQueue, a7);
    v24 = [v18 copy];
    mSourceAppleID = v21->mSourceAppleID;
    v21->mSourceAppleID = v24;

    objc_storeStrong(&v21->mConnectionConfiguration, a9);
    v26 = [CATIDSServiceConnectionInvitationInbox alloc];
    mTimerSource = v21->mTimerSource;
    [v36 invitationAcknowledgeTimeout];
    v28 = [(CATIDSServiceConnectionInvitationInbox *)v26 initWithTimerSource:mTimerSource assertionProvider:v16 workQueue:v23 acknowledgeTimeout:?];
    mInvitationInbox = v21->mInvitationInbox;
    v21->mInvitationInbox = v28;

    v30 = [[CATIDSServiceConnectionInvitationOutbox alloc] initWithAssertionProvider:v16 workQueue:v23];
    mInvitationOutbox = v21->mInvitationOutbox;
    v21->mInvitationOutbox = v30;

    v32 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mBroadcastHandlers = v21->mBroadcastHandlers;
    v21->mBroadcastHandlers = v32;

    [(CATIDSServiceConnectionInvitationInbox *)v21->mInvitationInbox setDelegate:v21];
    [(CATIDSServiceConnectionInvitationOutbox *)v21->mInvitationOutbox setDelegate:v21];
    v22 = v36;
    v21->mIsActive = 0;
  }

  return v21;
}

- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 networkPowerPrimitives:(id)a4 sourceAppleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CATNetworkPowerPrimitivesBackedAssertionProvider alloc] initWithNetworkPowerPrimitives:v9];

  v12 = [(CATIDSServiceConnectionTerminal *)self initWithIDSPrimitives:v10 assertionProvider:v11 sourceAppleID:v8];
  return v12;
}

- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 sourceAppleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [(CATIDSServiceConnectionTerminal *)self initWithIDSPrimitives:v10 assertionProvider:v9 sourceAppleID:v8 connectionConfiguration:v11];

  return v12;
}

- (CATIDSServiceConnectionTerminal)initWithIDSPrimitives:(id)a3 assertionProvider:(id)a4 sourceAppleID:(id)a5 connectionConfiguration:(id)a6
{
  v10 = MEMORY[0x277CCACA8];
  v11 = MEMORY[0x277CCAD78];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 UUID];
  v17 = [v10 stringWithFormat:@"Catalyst.IDSServiceConnection.%@", v16];

  v18 = dispatch_queue_create([v17 UTF8String], 0);
  v19 = CATGetCatalystQueue();
  v20 = objc_opt_new();
  v21 = [(CATIDSServiceConnectionTerminal *)self initWithIDSPrimitives:v15 assertionProvider:v14 timerSource:v20 workQueue:v18 delegateQueue:v19 sourceAppleID:v13 connectionConfiguration:v12];

  return v21;
}

- (void)resume
{
  objc_initWeak(&location, self);
  v3 = self->mWorkQueue;
  v4 = self->mDelegateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke;
  v9[3] = &unk_278DA7980;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  objc_copyWeak(&v12, &location);
  v11 = v4;
  v6 = v9;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v15 = v6;
  v7 = v5;
  v8 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 88) & 1) == 0)
  {
    v2 = _CATLogGeneral_5();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v14 = v3;
      _os_log_impl(&dword_24329F000, v2, OS_LOG_TYPE_INFO, "%{public}@ resuming", buf, 0xCu);
    }

    *(*(a1 + 32) + 88) = 1;
    v4 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke_18;
    v10[3] = &unk_278DA7930;
    v11 = *(a1 + 40);
    objc_copyWeak(&v12, (a1 + 56));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke_3;
    v6[3] = &unk_278DA7958;
    v7 = *(a1 + 40);
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 48);
    [v4 addMessageHandler:v10 completion:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke_2;
  v16[3] = &unk_278DA7908;
  objc_copyWeak(&v20, (a1 + 40));
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v16;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v22 = v11;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v12, block);

  objc_destroyWeak(&v20);
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained processMessage:*(a1 + 32) senderAppleID:*(a1 + 40) senderAddress:*(a1 + 48)];
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke_4;
  v12[3] = &unk_278DA7908;
  objc_copyWeak(&v16, (a1 + 48));
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 40);
  v8 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v18 = v8;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);

  objc_destroyWeak(&v16);
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[11])
    {
      v4 = (a1 + 40);
      if (*(a1 + 40))
      {
        v5 = _CATLogGeneral_5();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __41__CATIDSServiceConnectionTerminal_resume__block_invoke_4_cold_1(v3, v4, v5);
        }
      }

      else
      {
        objc_storeStrong(WeakRetained + 10, *(a1 + 32));
        [v3[8] resume];
        v6 = *(a1 + 48);
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __41__CATIDSServiceConnectionTerminal_resume__block_invoke_21;
        v8[3] = &unk_278DA72D0;
        v8[4] = v3;
        v7 = v8;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __CATPerformBlock_block_invoke_12;
        block[3] = &unk_278DA7208;
        v10 = v7;
        v5 = v6;
        dispatch_async(v5, block);
      }
    }

    else
    {
      [*(a1 + 32) cancel];
    }
  }
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceConnectionTerminalDidResume:*(a1 + 32)];
}

- (void)suspend
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CATIDSServiceConnectionTerminal_suspend__block_invoke;
  v4[3] = &unk_278DA72D0;
  v4[4] = self;
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v6 = v2;
  dispatch_async(v3, block);
}

void __42__CATIDSServiceConnectionTerminal_suspend__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 88) == 1)
  {
    v2 = _CATLogGeneral_5();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_24329F000, v2, OS_LOG_TYPE_INFO, "%{public}@ suspending", &v7, 0xCu);
    }

    *(*(a1 + 32) + 88) = 0;
    [*(*(a1 + 32) + 80) cancel];
    [*(*(a1 + 32) + 64) suspend];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)inviteAppleIDToConnect:(id)a3 userInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CATLogGeneral_5();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v25 = v7;
    _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "%{public}@ inviting appleID %{public}@ with userInfo %{public}@", buf, 0x20u);
  }

  v9 = [MEMORY[0x277CCAD78] UUID];
  mWorkQueue = self->mWorkQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__CATIDSServiceConnectionTerminal_inviteAppleIDToConnect_userInfo___block_invoke;
  v20[3] = &unk_278DA79A8;
  v20[4] = self;
  v11 = v9;
  v21 = v11;
  v22 = v6;
  v23 = v7;
  v12 = v20;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __CATPerformBlock_block_invoke_12;
  v25 = &unk_278DA7208;
  v26 = v12;
  v13 = mWorkQueue;
  v14 = v7;
  v15 = v6;
  dispatch_async(v13, buf);

  v16 = v23;
  v17 = v11;

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)cancelInvitationWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CATLogGeneral_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_24329F000, v5, OS_LOG_TYPE_INFO, "%{public}@ canceling invitation with identifier %{public}@", buf, 0x16u);
  }

  mWorkQueue = self->mWorkQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__CATIDSServiceConnectionTerminal_cancelInvitationWithIdentifier___block_invoke;
  v11[3] = &unk_278DA7470;
  v11[4] = self;
  v12 = v4;
  v7 = v11;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __CATPerformBlock_block_invoke_12;
  v14 = &unk_278DA7208;
  v15 = v7;
  v8 = mWorkQueue;
  v9 = v4;
  dispatch_async(v8, buf);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllInvitations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _CATLogGeneral_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_24329F000, v3, OS_LOG_TYPE_INFO, "%{public}@ canceling all invitations", &buf, 0xCu);
  }

  mWorkQueue = self->mWorkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CATIDSServiceConnectionTerminal_cancelAllInvitations__block_invoke;
  v8[3] = &unk_278DA72D0;
  v8[4] = self;
  v5 = v8;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v10 = __CATPerformBlock_block_invoke_12;
  v11 = &unk_278DA7208;
  v12 = v5;
  v6 = mWorkQueue;
  dispatch_async(v6, &buf);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectionInvitationInbox:(id)a3 shouldConnectToAppleID:(id)a4 connectionIdentifier:(id)a5 userInfo:(id)a6 responseHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [[CATIDSServiceConnectionMetadata alloc] initWithConnectionIdentifier:v13 destinationAppleID:v14 userInfo:v12];

  v16 = self->mWorkQueue;
  mDelegateQueue = self->mDelegateQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __130__CATIDSServiceConnectionTerminal_connectionInvitationInbox_shouldConnectToAppleID_connectionIdentifier_userInfo_responseHandler___block_invoke;
  v23[3] = &unk_278DA7A20;
  v23[4] = self;
  v24 = v15;
  v25 = v16;
  v26 = v11;
  v18 = v23;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v28 = v18;
  v19 = mDelegateQueue;
  v20 = v11;
  v21 = v16;
  v22 = v15;
  dispatch_async(v19, block);
}

void __130__CATIDSServiceConnectionTerminal_connectionInvitationInbox_shouldConnectToAppleID_connectionIdentifier_userInfo_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __130__CATIDSServiceConnectionTerminal_connectionInvitationInbox_shouldConnectToAppleID_connectionIdentifier_userInfo_responseHandler___block_invoke_2;
  v5[3] = &unk_278DA79F8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 serviceConnectionTerminal:v3 shouldEstablishConnection:v4 responseHandler:v5];
}

void __130__CATIDSServiceConnectionTerminal_connectionInvitationInbox_shouldConnectToAppleID_connectionIdentifier_userInfo_responseHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__CATIDSServiceConnectionTerminal_connectionInvitationInbox_shouldConnectToAppleID_connectionIdentifier_userInfo_responseHandler___block_invoke_3;
  v11[3] = &unk_278DA79D0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = a2;
  v12 = v5;
  v13 = v7;
  v8 = v11;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v16 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v9, block);
}

- (void)connectionInvitationInbox:(id)a3 wantsToAcceptInvitation:(id)a4 connectionIdentifier:(id)a5 destinationAddress:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[CATInitializingIDSServiceConnectionContentAccept alloc] initWithConnectionIdentifier:v10];

  [(CATIDSServiceConnectionTerminal *)self sendContent:v12 toAddress:v9 forInvitation:v11];
}

- (void)connectionInvitatioInbox:(id)a3 timeoutOutForInvitation:(id)a4 connectionIdentifier:(id)a5 senderAppleID:(id)a6 userInfo:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v13 = [[CATIDSServiceConnectionMetadata alloc] initWithConnectionIdentifier:v12 destinationAppleID:v11 userInfo:v10];

  mDelegateQueue = self->mDelegateQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __128__CATIDSServiceConnectionTerminal_connectionInvitatioInbox_timeoutOutForInvitation_connectionIdentifier_senderAppleID_userInfo___block_invoke;
  v18[3] = &unk_278DA7470;
  v18[4] = self;
  v19 = v13;
  v15 = v18;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v21 = v15;
  v16 = mDelegateQueue;
  v17 = v13;
  dispatch_async(v16, block);
}

void __128__CATIDSServiceConnectionTerminal_connectionInvitatioInbox_timeoutOutForInvitation_connectionIdentifier_senderAppleID_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceConnectionTerminal:*(a1 + 32) timedOutOnInvitationWithMetadata:*(a1 + 40)];
}

- (void)connectionInvitationInbox:(id)a3 foundConection:(id)a4 senderAppleID:(id)a5 senderAddress:(id)a6 assertion:(id)a7 messagingVersion:(unint64_t)a8 userInfo:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v23 = [[CATIDSServiceConnectionCapabilities alloc] initWithMessagingVersion:a8];
  v20 = [[CATIDSServiceConnectionMetadata alloc] initWithConnectionIdentifier:v19 destinationAppleID:v18 userInfo:v15];

  v21 = [CATIDSServiceConnection connectionWithMetadata:v20 configuration:self->mConnectionConfiguration capabilities:v23 IDSPrimitives:self->mIDSPrimitives messageBroadcaster:self timerSource:self->mTimerSource assertion:v16 workQueue:self->mWorkQueue delegateQueue:self->mDelegateQueue destinationAddress:v17 sourceAppleID:self->mSourceAppleID];

  v22 = [(CATIDSServiceConnectionTerminal *)self delegate];
  [v22 serviceConnectionTerminal:self establishedConnection:v21];
}

- (void)connectionInvitationInbox:(id)a3 rejectedInvitation:(id)a4 connectionIdentifier:(id)a5 appleID:(id)a6 address:(id)a7 error:(id)a8
{
  v12 = a8;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = [[CATInitializingIDSServiceConnectionContentReject alloc] initWithConnectionIdentifier:v14 error:v12];

  [(CATIDSServiceConnectionTerminal *)self sendContent:v16 toAddress:v13 forInvitation:v15];
}

- (void)connectionInvitationOutbox:(id)a3 wantsToSendInvitation:(id)a4 destinationAppleID:(id)a5 userInfo:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = [[CATInitializingIDSServiceConnectionContentInvite alloc] initWithUserInfo:v9];

  v12 = [(CATIDSPrimitives *)self->mIDSPrimitives addressForAppleID:v10];

  [(CATIDSServiceConnectionTerminal *)self sendContent:v13 toAddress:v12 forInvitation:v11];
}

- (void)connectionInvitationOutbox:(id)a3 wantsToAcknowledgeInvitation:(id)a4 connectionIdentifier:(id)a5 destinationAddress:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[CATInitializingIDSServiceConnectionContentAcknowledge alloc] initWithConnectionIdentifier:v10];

  [(CATIDSServiceConnectionTerminal *)self sendContent:v12 toAddress:v9 forInvitation:v11];
}

- (void)connectionInvitationOutbox:(id)a3 foundConnection:(id)a4 destinationAppleID:(id)a5 destinationAddress:(id)a6 assertion:(id)a7 messagingVersion:(unint64_t)a8 userInfo:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = [[CATIDSServiceConnectionCapabilities alloc] initWithMessagingVersion:a8];
  v21 = [[CATIDSServiceConnectionMetadata alloc] initWithConnectionIdentifier:v19 destinationAppleID:v18 userInfo:v15];

  v22 = [CATIDSServiceConnection connectionWithMetadata:v21 configuration:self->mConnectionConfiguration capabilities:v20 IDSPrimitives:self->mIDSPrimitives messageBroadcaster:self timerSource:self->mTimerSource assertion:v16 workQueue:self->mWorkQueue delegateQueue:self->mDelegateQueue destinationAddress:v17 sourceAppleID:self->mSourceAppleID];

  mDelegateQueue = self->mDelegateQueue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __152__CATIDSServiceConnectionTerminal_connectionInvitationOutbox_foundConnection_destinationAppleID_destinationAddress_assertion_messagingVersion_userInfo___block_invoke;
  v27[3] = &unk_278DA7470;
  v27[4] = self;
  v28 = v22;
  v24 = v27;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v30 = v24;
  v25 = mDelegateQueue;
  v26 = v22;
  dispatch_async(v25, block);
}

void __152__CATIDSServiceConnectionTerminal_connectionInvitationOutbox_foundConnection_destinationAppleID_destinationAddress_assertion_messagingVersion_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceConnectionTerminal:*(a1 + 32) establishedConnection:*(a1 + 40)];
}

- (void)connectionInvitationOutbox:(id)a3 receivedARejectionFrom:(id)a4 connectionIdentifier:(id)a5 userInfo:(id)a6 error:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [[CATIDSServiceConnectionMetadata alloc] initWithConnectionIdentifier:v13 destinationAppleID:v14 userInfo:v12];

  mDelegateQueue = self->mDelegateQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __121__CATIDSServiceConnectionTerminal_connectionInvitationOutbox_receivedARejectionFrom_connectionIdentifier_userInfo_error___block_invoke;
  v21[3] = &unk_278DA7280;
  v21[4] = self;
  v22 = v15;
  v23 = v11;
  v17 = v21;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_12;
  block[3] = &unk_278DA7208;
  v25 = v17;
  v18 = mDelegateQueue;
  v19 = v11;
  v20 = v15;
  dispatch_async(v18, block);
}

void __121__CATIDSServiceConnectionTerminal_connectionInvitationOutbox_receivedARejectionFrom_connectionIdentifier_userInfo_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceConnectionTerminal:*(a1 + 32) receivedRejectionWithMetadata:*(a1 + 40) error:*(a1 + 48)];
}

- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  CATAssertIsQueue(self->mWorkQueue);
  if (self->mIsActive)
  {
    v11 = [(NSHashTable *)self->mBroadcastHandlers copy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [v11 objectEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v28 + 1) + 8 * v16++) processMessage:v8 senderAppleID:v9 senderAddress:v10];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v14);
    }

    v17 = self->mWorkQueue;
    mDelegateQueue = self->mDelegateQueue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke;
    v23[3] = &unk_278DA7A48;
    v23[4] = self;
    v24 = v9;
    v25 = v17;
    v26 = v8;
    v27 = v10;
    v19 = v23;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_12;
    block[3] = &unk_278DA7208;
    v33 = v19;
    v20 = mDelegateQueue;
    v21 = v17;
    dispatch_async(v20, block);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 serviceConnectionTerminal:*(a1 + 32) shouldTrustAppleID:*(a1 + 40)];

  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2;
    v9[3] = &unk_278DA79A8;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    v7 = v9;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_12;
    block[3] = &unk_278DA7208;
    v15 = v7;
    v8 = v4;
    dispatch_async(v8, block);
  }
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2(void *a1)
{
  v2 = [CATIDSMessagePayload instanceWithDictionary:a1[4]];
  if (v2)
  {
    v25 = v2;
    v3 = [v2 metadata];
    v4 = [v3 messageType];

    v2 = v25;
    if (v4 == 101)
    {
      v5 = [v25 message];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_1();
      }

      v6 = [v5 content];
      v7 = [v6 contentType];

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v21 = *(a1[5] + 64);
          v9 = [v5 invitationIdentifier];
          v10 = [v5 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_2();
          }

          v11 = [v10 connectionIdentifier];
          v22 = a1[6];
          v23 = [v5 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_3();
          }

          v24 = [v23 error];
          [v21 receiveRejectForInvitation:v9 connectionIdentifier:v11 senderAddress:v22 error:v24];

          goto LABEL_24;
        }

        if (v7 == 4)
        {
          v14 = *(a1[5] + 56);
          v9 = [v5 invitationIdentifier];
          v10 = [v5 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_4();
          }

          v11 = [v10 connectionIdentifier];
          [v14 receiveAcknowledgeForInvitationIdentifier:v9 connectionIdentifier:v11];
          goto LABEL_24;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v15 = *(a1[5] + 56);
          v9 = [v5 invitationIdentifier];
          v18 = a1 + 6;
          v16 = a1[6];
          v17 = v18[1];
          v10 = [v25 metadata];
          v19 = [v10 messagingVersion];
          v11 = [v5 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_5();
          }

          v20 = [v11 userInfo];
          [v15 receiveInvitationWithIdentifier:v9 senderAppleID:v17 senderAddress:v16 messagingVersion:v19 userInfo:v20];

          goto LABEL_24;
        }

        if (v7 == 2)
        {
          v8 = *(a1[5] + 64);
          v9 = [v5 invitationIdentifier];
          v10 = [v5 content];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_6();
          }

          v11 = [v10 connectionIdentifier];
          v12 = a1[6];
          v13 = [v25 metadata];
          [v8 receiveAcceptForInvitation:v9 connectionIdentifier:v11 senderAddress:v12 messagingVersion:{objc_msgSend(v13, "messagingVersion")}];

LABEL_24:
        }
      }

      v2 = v25;
    }
  }
}

- (void)sendContent:(id)a3 toAddress:(id)a4 forInvitation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[CATInitializingServiceConnectionIDSMessage alloc] initWithInvitationIdentifier:v9 content:v10];

  v12 = [[CATIDSMessagePayload alloc] initWithMessage:v11];
  v13 = [(CATIDSMessagePayload *)v12 dictionaryValue];
  v14 = objc_opt_new();
  [v14 setDeliveryTimeout:&unk_28560C258];
  mIDSPrimitives = self->mIDSPrimitives;
  mSourceAppleID = self->mSourceAppleID;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__CATIDSServiceConnectionTerminal_sendContent_toAddress_forInvitation___block_invoke;
  v19[3] = &unk_278DA7A70;
  v19[4] = self;
  v20 = v8;
  v21 = v13;
  v17 = v13;
  v18 = v8;
  [(CATIDSPrimitives *)mIDSPrimitives sendMessage:v17 toAddress:v18 fromID:mSourceAppleID options:v14 completion:v19];
}

void __71__CATIDSServiceConnectionTerminal_sendContent_toAddress_forInvitation___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _CATLogGeneral_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__CATIDSServiceConnectionTerminal_sendContent_toAddress_forInvitation___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (CATIDSServiceConnectionTerminalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIDSPrimitives:(uint64_t)a1 assertionProvider:(uint64_t)a2 timerSource:workQueue:delegateQueue:sourceAppleID:connectionConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATIDSServiceConnectionTerminal.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"sourceAppleID"}];
}

void __41__CATIDSServiceConnectionTerminal_resume__block_invoke_4_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a2 verboseDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_24329F000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to begin listeneing for IDS messages. Error: %{public}@.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_3()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_4()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_5()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __78__CATIDSServiceConnectionTerminal_processMessage_senderAppleID_senderAddress___block_invoke_2_cold_6()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionTerminal processMessage:senderAppleID:senderAddress:]_block_invoke_2"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_1(v4 v5];
}

void __71__CATIDSServiceConnectionTerminal_sendContent_toAddress_forInvitation___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = [a2 verboseDescription];
  v9 = 138544130;
  v10 = v4;
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v7;
  _os_log_error_impl(&dword_24329F000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to send IDS message %{public}@ to address %{public}@. Error: %{public}@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

@end