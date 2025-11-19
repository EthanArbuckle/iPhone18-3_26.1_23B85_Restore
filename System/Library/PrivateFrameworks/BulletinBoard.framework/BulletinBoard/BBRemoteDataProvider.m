@interface BBRemoteDataProvider
- (BBRemoteDataProvider)initWithSectionID:(id)a3 delegate:(id)a4;
- (BOOL)checkResponds:(BOOL)a3 forSelector:(SEL)a4;
- (id)debugDescriptionWithChildren:(unint64_t)a3;
- (void)_logDoesNotRespond:(SEL)a3;
- (void)_sendClientRequest:(id)a3;
- (void)addBulletin:(id)a3 forDestinations:(unint64_t)a4;
- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5;
- (void)calloutToServer:(id)a3;
- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4;
- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)deliverMessageWithName:(id)a3 userInfo:(id)a4;
- (void)deliverResponse:(id)a3 forBulletinRequest:(id)a4 withCompletion:(id)a5;
- (void)getClearedInfoWithCompletion:(id)a3;
- (void)getSectionInfoWithCompletion:(id)a3;
- (void)invalidateBulletins;
- (void)modifyBulletin:(id)a3;
- (void)noteSectionInfoDidChange:(id)a3;
- (void)reloadDefaultSectionInfo:(id)a3;
- (void)reloadIdentityWithCompletion:(id)a3;
- (void)reloadSectionParameters:(id)a3;
- (void)setClearedInfo:(id)a3;
- (void)setClientProxy:(id)a3 completion:(id)a4;
- (void)setSectionInfo:(id)a3;
- (void)setServerIsReady:(BOOL)a3;
- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)withdrawBulletinWithPublisherBulletinID:(id)a3 shouldSync:(BOOL)a4;
- (void)withdrawBulletinsWithRecordID:(id)a3;
@end

@implementation BBRemoteDataProvider

- (BBRemoteDataProvider)initWithSectionID:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBRemoteDataProvider *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    sectionID = v8->_sectionID;
    v8->_sectionID = v9;

    objc_storeStrong(&v8->_replyQueue, __BBServerQueue);
    v11 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProvider.proxyQueue", 0);
    proxyQueue = v8->_proxyQueue;
    v8->_proxyQueue = v11;

    dispatch_suspend(v8->_proxyQueue);
    v8->_connected = 0;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProvider", v13);
    queue = v8->_queue;
    v8->_queue = v14;

    dispatch_set_target_queue(v8->_proxyQueue, v8->_queue);
    v16 = dispatch_queue_create("com.apple.bulletinboard.BBRemoteDataProvider.serverControlQueue", 0);
    serverControlQueue = v8->_serverControlQueue;
    v8->_serverControlQueue = v16;

    dispatch_suspend(v8->_serverControlQueue);
    dispatch_set_target_queue(v8->_serverControlQueue, __BBServerQueue);
    objc_storeStrong(&v8->_delegate, a4);
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_connected)
  {
    dispatch_resume(self->_proxyQueue);
  }

  if (!self->_serverIsReady)
  {
    dispatch_resume(self->_serverControlQueue);
  }

  v3.receiver = self;
  v3.super_class = BBRemoteDataProvider;
  [(BBRemoteDataProvider *)&v3 dealloc];
}

- (id)debugDescriptionWithChildren:(unint64_t)a3
{
  for (i = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  {
    [i appendString:@"    "];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@<%@: %p> %@", i, v8, self, self->_sectionID];

  return v9;
}

- (void)setServerIsReady:(BOOL)a3
{
  if (self->_serverIsReady != a3)
  {
    self->_serverIsReady = a3;
    serverControlQueue = self->_serverControlQueue;
    if (a3)
    {
      dispatch_resume(serverControlQueue);
    }

    else
    {
      dispatch_suspend(serverControlQueue);
    }
  }
}

- (void)calloutToServer:(id)a3
{
  v4 = a3;
  serverControlQueue = self->_serverControlQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BBRemoteDataProvider_calloutToServer___block_invoke;
  block[3] = &unk_278D2A9C8;
  v8 = v4;
  v6 = v4;
  dispatch_async(serverControlQueue, block);
}

- (void)setClientProxy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BBRemoteDataProvider_setClientProxy_completion___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __50__BBRemoteDataProvider_setClientProxy_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  if (v4 != v2)
  {
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 == 0;
    }

    if (v5)
    {
      if (v4)
      {
        v6 = v2 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        *(v3 + 56) = 0;
        dispatch_suspend(*(*(a1 + 32) + 40));
        v7 = *(a1 + 32);
        v8 = *(v7 + 48);
        *(v7 + 48) = 0;
      }

      else
      {
        objc_storeStrong((v3 + 48), v2);
      }
    }

    else
    {
      *(v3 + 56) = 1;
      objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
      dispatch_resume(*(*(a1 + 32) + 40));
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (void)_sendClientRequest:(id)a3
{
  v4 = a3;
  if (!self->_connected)
  {
    [(BBRemoteDataProviderDelegate *)self->_delegate remoteDataProviderNeedsToWakeClient:self];
  }

  proxyQueue = self->_proxyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBRemoteDataProvider__sendClientRequest___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(proxyQueue, v7);
}

- (void)_logDoesNotRespond:(SEL)a3
{
  v5 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [(BBRemoteDataProvider *)v5 _logDoesNotRespond:a3];
  }
}

- (BOOL)checkResponds:(BOOL)a3 forSelector:(SEL)a4
{
  if (!a3)
  {
    [(BBRemoteDataProvider *)self _logDoesNotRespond:a4];
  }

  return a3;
}

- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [BBRemoteDataProvider bulletinsWithRequestParameters:lastCleared:completion:];
  }

  v11 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__11;
  v24[4] = __Block_byref_object_dispose__11;
  v25 = 0;
  v12 = [(BBDataProvider *)self identity];
  if (([v12 traits] & 4) != 0 || (objc_msgSend(v12, "traits") & 8) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = ([v12 traits] >> 4) & 1;
  }

  if (-[BBRemoteDataProvider checkResponds:forSelector:](self, "checkResponds:forSelector:", v13, sel_bulletinsWithRequestParameters_lastCleared_completion_) && [v8 publisherDestination] == 2)
  {
    dispatch_group_enter(v11);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__BBRemoteDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke;
    v19[3] = &unk_278D2BFF0;
    v20 = v8;
    v21 = v9;
    v23 = v24;
    v22 = v11;
    [(BBRemoteDataProvider *)self _sendClientRequest:v19];
  }

  replyQueue = self->_replyQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__BBRemoteDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke_3;
  v16[3] = &unk_278D2C018;
  v17 = v10;
  v18 = v24;
  v15 = v10;
  dispatch_group_notify(v11, replyQueue, v16);

  _Block_object_dispose(v24, 8);
}

void __78__BBRemoteDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__BBRemoteDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke_2;
  v7[3] = &unk_278D2BFC8;
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  [a2 bulletinsWithRequestParameters:v3 lastCleared:v4 completion:v7];
}

void __78__BBRemoteDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [BBRemoteDataProvider clearedInfoForClearingAllBulletinsWithLastClearedInfo:completion:];
  }

  v8 = dispatch_group_create();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__11;
  v19[4] = __Block_byref_object_dispose__11;
  v20 = 0;
  v9 = [(BBDataProvider *)self identity];
  if (-[BBRemoteDataProvider checkResponds:forSelector:](self, "checkResponds:forSelector:", ([v9 traits] >> 6) & 1, sel_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion_))
  {
    dispatch_group_enter(v8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__BBRemoteDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke;
    v15[3] = &unk_278D2C068;
    v16 = v6;
    v18 = v19;
    v17 = v8;
    [(BBRemoteDataProvider *)self _sendClientRequest:v15];
  }

  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__BBRemoteDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_3;
  block[3] = &unk_278D2C018;
  v13 = v7;
  v14 = v19;
  v11 = v7;
  dispatch_group_notify(v8, replyQueue, block);

  _Block_object_dispose(v19, 8);
}

void __89__BBRemoteDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__BBRemoteDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_2;
  v6[3] = &unk_278D2C040;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 clearedInfoForClearingAllBulletinsWithLastClearedInfo:v3 completion:v6];
}

void __89__BBRemoteDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    [BBRemoteDataProvider clearedInfoForClearingBulletinsFromDate:toDate:lastClearedInfo:completion:];
  }

  v14 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__11;
  v27[4] = __Block_byref_object_dispose__11;
  v28 = 0;
  v15 = [(BBDataProvider *)self identity];
  if (-[BBRemoteDataProvider checkResponds:forSelector:](self, "checkResponds:forSelector:", ([v15 traits] >> 6) & 1, sel_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion_))
  {
    dispatch_group_enter(v14);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__BBRemoteDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke;
    v21[3] = &unk_278D2C090;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v26 = v27;
    v25 = v14;
    [(BBRemoteDataProvider *)self _sendClientRequest:v21];
  }

  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__BBRemoteDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_3;
  block[3] = &unk_278D2C018;
  v19 = v13;
  v20 = v27;
  v17 = v13;
  dispatch_group_notify(v14, replyQueue, block);

  _Block_object_dispose(v27, 8);
}

void __98__BBRemoteDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__BBRemoteDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_2;
  v8[3] = &unk_278D2C040;
  v7 = *(a1 + 56);
  v6 = v7;
  v9 = v7;
  [a2 clearedInfoForClearingBulletinsFromDate:v3 toDate:v4 lastClearedInfo:v5 completion:v8];
}

void __98__BBRemoteDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [BBRemoteDataProvider clearedInfoForBulletins:lastClearedInfo:completion:];
  }

  v11 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__11;
  v24[4] = __Block_byref_object_dispose__11;
  v25 = 0;
  v12 = [(BBDataProvider *)self identity];
  if (([v12 traits] & 0x20) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = ([v12 traits] >> 8) & 1;
  }

  if ([(BBRemoteDataProvider *)self checkResponds:v13 forSelector:sel_clearedInfoForBulletins_lastClearedInfo_])
  {
    dispatch_group_enter(v11);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__BBRemoteDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke;
    v19[3] = &unk_278D2BFF0;
    v20 = v8;
    v21 = v9;
    v23 = v24;
    v22 = v11;
    [(BBRemoteDataProvider *)self _sendClientRequest:v19];
  }

  replyQueue = self->_replyQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__BBRemoteDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_3;
  v16[3] = &unk_278D2C018;
  v17 = v10;
  v18 = v24;
  v15 = v10;
  dispatch_group_notify(v11, replyQueue, v16);

  _Block_object_dispose(v24, 8);
}

void __75__BBRemoteDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__BBRemoteDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2;
  v7[3] = &unk_278D2C040;
  v6 = *(a1 + 48);
  v5 = v6;
  v8 = v6;
  [a2 clearedInfoForBulletins:v3 lastClearedInfo:v4 completion:v7];
}

void __75__BBRemoteDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)deliverResponse:(id)a3 forBulletinRequest:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BBDataProvider *)self identity];
  if (([v11 traits] & 0x100000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = ([v11 traits] >> 21) & 1;
  }

  v13 = [(BBRemoteDataProvider *)self checkResponds:v12 forSelector:sel_handleBulletinActionResponse_withCompletion_];
  v14 = BBLogGeneral;
  if (!v13)
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBRemoteDataProvider deliverResponse:v14 forBulletinRequest:? withCompletion:?];
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else if (!v10)
    {
      goto LABEL_11;
    }

    v10[2](v10, 0);
    goto LABEL_11;
  }

  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = v8;
    v16 = v23;
    _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ sending client request for response %{public}@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__BBRemoteDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke;
  v18[3] = &unk_278D2C0B8;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  [(BBRemoteDataProvider *)self _sendClientRequest:v18];

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

void __74__BBRemoteDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ delivering bulletin action for response %{public}@", buf, 0x16u);
  }

  v6 = [BBActionResponse actionResponseForResponse:*(a1 + 32) bulletinRequest:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__BBRemoteDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke_170;
  v9[3] = &unk_278D2AAB8;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  [v7 deliverBulletinActionResponse:v6 withCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __74__BBRemoteDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke_170(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ completed action delivery with success=%d", &v8, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)noteSectionInfoDidChange:(id)a3
{
  v4 = a3;
  v5 = [(BBDataProvider *)self identity];
  if (-[BBRemoteDataProvider checkResponds:forSelector:](self, "checkResponds:forSelector:", ([v5 traits] >> 18) & 1, sel_noteSectionInfoDidChange_))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__BBRemoteDataProvider_noteSectionInfoDidChange___block_invoke;
    v6[3] = &unk_278D2C0E0;
    v7 = v4;
    [(BBRemoteDataProvider *)self _sendClientRequest:v6];
  }
}

- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = v5;
  if (!v5)
  {
    [BBRemoteDataProvider updateClearedInfoWithClearedInfo:handler:completion:];
    v5 = 0;
  }

  (*(v5 + 2))(v5, 0);
}

- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = v5;
  if (!v5)
  {
    [BBRemoteDataProvider updateSectionInfoWithSectionInfo:handler:completion:];
    v5 = 0;
  }

  (*(v5 + 2))(v5, 0);
}

- (void)deliverMessageWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  if (-[BBRemoteDataProvider checkResponds:forSelector:](self, "checkResponds:forSelector:", ([v8 traits] >> 17) & 1, sel_receiveMessageWithName_userInfo_))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__BBRemoteDataProvider_deliverMessageWithName_userInfo___block_invoke;
    v9[3] = &unk_278D2C108;
    v10 = v6;
    v11 = v7;
    [(BBRemoteDataProvider *)self _sendClientRequest:v9];
  }
}

- (void)invalidateBulletins
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__BBRemoteDataProvider_invalidateBulletins__block_invoke;
  v2[3] = &unk_278D2A600;
  v2[4] = self;
  [(BBRemoteDataProvider *)self calloutToServer:v2];
}

- (void)addBulletin:(id)a3 forDestinations:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__BBRemoteDataProvider_addBulletin_forDestinations___block_invoke;
  v8[3] = &unk_278D2A9F0;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(BBRemoteDataProvider *)self calloutToServer:v8];
}

- (void)modifyBulletin:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__BBRemoteDataProvider_modifyBulletin___block_invoke;
  v6[3] = &unk_278D2A628;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

- (void)withdrawBulletinsWithRecordID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__BBRemoteDataProvider_withdrawBulletinsWithRecordID___block_invoke;
  v6[3] = &unk_278D2A628;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

- (void)withdrawBulletinWithPublisherBulletinID:(id)a3 shouldSync:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__BBRemoteDataProvider_withdrawBulletinWithPublisherBulletinID_shouldSync___block_invoke;
  v8[3] = &unk_278D2AA18;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(BBRemoteDataProvider *)self calloutToServer:v8];
}

- (void)reloadIdentityWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)reloadSectionParameters:(id)a3
{
  v4 = a3;
  replyQueue = self->_replyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BBRemoteDataProvider_reloadSectionParameters___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(replyQueue, v7);
}

void __48__BBRemoteDataProvider_reloadSectionParameters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionIdentifier];
  v3 = [*(a1 + 40) sectionIdentifier];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    [*(a1 + 32) setIdentity:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__BBRemoteDataProvider_reloadSectionParameters___block_invoke_2;
    v6[3] = &unk_278D2A600;
    v6[4] = v5;
    [v5 calloutToServer:v6];
  }
}

- (void)reloadDefaultSectionInfo:(id)a3
{
  v4 = a3;
  replyQueue = self->_replyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BBRemoteDataProvider_reloadDefaultSectionInfo___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(replyQueue, v7);
}

void __49__BBRemoteDataProvider_reloadDefaultSectionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identity];
  v3 = [v2 sectionIdentifier];
  v4 = [*(a1 + 40) sectionIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 32) setIdentity:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__BBRemoteDataProvider_reloadDefaultSectionInfo___block_invoke_2;
    v7[3] = &unk_278D2A600;
    v7[4] = v6;
    [v6 calloutToServer:v7];
  }
}

- (void)getClearedInfoWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BBRemoteDataProvider_getClearedInfoWithCompletion___block_invoke;
  v6[3] = &unk_278D2AC38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

void __53__BBRemoteDataProvider_getClearedInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__BBRemoteDataProvider_getClearedInfoWithCompletion___block_invoke_2;
  v2[3] = &unk_278D2C130;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  _BBDataProviderGetClearedInfoWithCompletion(v1, v2);
}

- (void)setClearedInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__BBRemoteDataProvider_setClearedInfo___block_invoke;
  v6[3] = &unk_278D2A628;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

- (void)getSectionInfoWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BBRemoteDataProvider_getSectionInfoWithCompletion___block_invoke;
  v6[3] = &unk_278D2AC38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

void __53__BBRemoteDataProvider_getSectionInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__BBRemoteDataProvider_getSectionInfoWithCompletion___block_invoke_2;
  v2[3] = &unk_278D2C158;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  _BBDataProviderGetSectionInfoWithCompletion(v1, v2);
}

- (void)setSectionInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__BBRemoteDataProvider_setSectionInfo___block_invoke;
  v6[3] = &unk_278D2A628;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BBRemoteDataProvider *)self calloutToServer:v6];
}

- (void)_logDoesNotRespond:(const char *)a3 .cold.1(void *a1, void *a2, const char *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 identity];
  v14 = NSStringFromSelector(a3);
  OUTLINED_FUNCTION_1_0(&dword_241EFF000, v7, v8, "BBRemoteDataProvider: %{public}@ does not respond to %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bulletinsWithRequestParameters:lastCleared:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)clearedInfoForClearingBulletinsFromDate:toDate:lastClearedInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)clearedInfoForBulletins:lastClearedInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deliverResponse:(void *)a1 forBulletinRequest:withCompletion:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_1_0(&dword_241EFF000, v3, v4, "%{public}@ could not deliver response %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateClearedInfoWithClearedInfo:handler:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updateSectionInfoWithSectionInfo:handler:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end