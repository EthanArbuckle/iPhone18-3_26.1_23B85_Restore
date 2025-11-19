@interface CCDonateConnection
- (BOOL)isAlive;
- (CCDonateConnection)init;
- (CCDonateConnection)initWithRequestManager:(id)a3 xpcConnection:(id)a4;
- (CCDonateRequest)request;
- (NSXPCConnection)xpcConnection;
- (void)_cleanupDonation:(int64_t)a3;
- (void)_cleanupRequestState;
- (void)abortSetDonation;
- (void)addItemsWithContents:(id)a3 metaContents:(id)a4 completion:(id)a5;
- (void)endSetDonationWithOptions:(unsigned __int16)a3 revisionToken:(id)a4 completion:(id)a5;
- (void)rejectConnection;
- (void)remoteUpdateFromDeviceUUID:(id)a3 options:(unsigned __int16)a4 mergeableDelta:(id)a5 peerDeviceSite:(id)a6 relayedDeviceSites:(id)a7 completion:(id)a8;
- (void)removeSourceItemIdentifier:(id)a3 completion:(id)a4;
- (void)resume;
- (void)timeout;
@end

@implementation CCDonateConnection

- (BOOL)isAlive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CCDonateConnection_isAlive__block_invoke;
  v5[3] = &unk_1E85C2C10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__CCDonateConnection_isAlive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;
}

- (void)resume
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1DA74EA40](*a1);
  WeakRetained = objc_loadWeakRetained((a2 + 32));
  v11 = *(a2 + 56);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupRequestState
{
  objc_storeWeak(&self->_request, 0);
  updater = self->_updater;
  self->_updater = 0;

  set = self->_set;
  self->_set = 0;
}

- (CCDonateConnection)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDonateConnection)initWithRequestManager:(id)a3 xpcConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CCDonateConnection;
  v9 = [(CCDonateConnection *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestManager, a3);
    v11 = objc_storeWeak(&v10->_xpcConnection, v8);
    v10->_isXPC = v8 != 0;

    openStreamCompletion = v10->_openStreamCompletion;
    v10->_openStreamCompletion = 0;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("DonateConnection", v13);
    queue = v10->_queue;
    v10->_queue = v14;
  }

  return v10;
}

- (void)timeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CCDonateConnection_timeout__block_invoke;
  block[3] = &unk_1E85C2790;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)rejectConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CCDonateConnection_rejectConnection__block_invoke;
  block[3] = &unk_1E85C2790;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)endSetDonationWithOptions:(unsigned __int16)a3 revisionToken:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CCDonateConnection_endSetDonationWithOptions_revisionToken_completion___block_invoke;
  block[3] = &unk_1E85C2C60;
  v25 = a3;
  block[4] = self;
  v24 = &v26;
  v11 = v8;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  dispatch_sync(queue, block);
  if (*(v27 + 24) == 1)
  {
    v13 = [(CCDifferentialUpdater *)self->_updater waitForCommit:a3 & 1];
    WeakRetained = objc_loadWeakRetained(&self->_request);
    v15 = WeakRetained;
    if (v13)
    {
      [WeakRetained terminateWithType:0];
      v16 = 7;
    }

    else
    {
      [WeakRetained terminateWithType:3];
      v16 = 11;
    }

    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_loadWeakRetained(&self->_request);
      v19 = CCDonateServiceResponseDescription();
      *buf = 138412546;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "Completing request %@ with response %@", buf, 0x16u);
    }

    [(CCDonateConnection *)self _cleanupRequestState];
    if (v12)
    {
      (*(v12 + 2))(v12, v16);
    }
  }

  _Block_object_dispose(&v26, 8);
  v20 = *MEMORY[0x1E69E9840];
}

void __73__CCDonateConnection_endSetDonationWithOptions_revisionToken_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

  if (WeakRetained)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__CCDonateConnection_endSetDonationWithOptions_revisionToken_completion___block_invoke_2;
    v10[3] = &unk_1E85C2C38;
    v13 = *(a1 + 64);
    v4 = *(a1 + 56);
    v9 = *(a1 + 32);
    v5 = *(v9 + 64);
    v6 = *(&v9 + 1);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v4;
    v11 = v9;
    v12 = v7;
    v5(v10);
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 11);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __73__CCDonateConnection_endSetDonationWithOptions_revisionToken_completion___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) finishUpdateWithRevisionToken:*(a1 + 40) designateAsFullSet:(*(a1 + 64) >> 4) & 1];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _cleanupDonation:3];
    result = *(a1 + 48);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (void)abortSetDonation
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CCDonateConnection_abortSetDonation__block_invoke;
  block[3] = &unk_1E85C2790;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__CCDonateConnection_abortSetDonation__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _cleanupDonation:1];

  objc_autoreleasePoolPop(v2);
}

- (void)_cleanupDonation:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_request);

  if (WeakRetained)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained(&self->_request);
      v8 = CCDonateRequestTerminationTypeDescription(a3);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning up request %@ with termination type %@", &v13, 0x16u);
    }

    [(CCDifferentialUpdater *)self->_updater abort];
    v9 = objc_loadWeakRetained(&self->_request);
    [v9 terminateWithType:a3];

    [(CCDonateConnection *)self _cleanupRequestState];
  }

  v10 = objc_loadWeakRetained(&self->_xpcConnection);

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_xpcConnection);
    [v11 invalidate];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addItemsWithContents:(id)a3 metaContents:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__CCDonateConnection_addItemsWithContents_metaContents_completion___block_invoke;
  v15[3] = &unk_1E85C2C88;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, v15);
}

void __67__CCDonateConnection_addItemsWithContents_metaContents_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

  if (WeakRetained)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__CCDonateConnection_addItemsWithContents_metaContents_completion___block_invoke_2;
    v11[3] = &unk_1E85C2C88;
    v10 = *(a1 + 32);
    v4 = *(v10 + 64);
    v5 = *(&v10 + 1);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v12 = v10;
    v13 = v8;
    v4(v11);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 11);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __67__CCDonateConnection_addItemsWithContents_metaContents_completion___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) addItemsWithContents:*(a1 + 40) metaContents:*(a1 + 48)])
  {
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
  }

  else
  {
    [*(a1 + 32) _cleanupDonation:3];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
  }

  return v3();
}

- (void)removeSourceItemIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CCDonateConnection_removeSourceItemIdentifier_completion___block_invoke;
  block[3] = &unk_1E85C2CB0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __60__CCDonateConnection_removeSourceItemIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__CCDonateConnection_removeSourceItemIdentifier_completion___block_invoke_2;
    v8[3] = &unk_1E85C2CB0;
    v8[4] = v5;
    v9 = v4;
    v10 = *(a1 + 48);
    v6(v8);
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 11);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __60__CCDonateConnection_removeSourceItemIdentifier_completion___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) removeSourceItemIdentifier:*(a1 + 40)])
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
  }

  else
  {
    [*(a1 + 32) _cleanupDonation:3];
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
  }

  return v3();
}

- (void)remoteUpdateFromDeviceUUID:(id)a3 options:(unsigned __int16)a4 mergeableDelta:(id)a5 peerDeviceSite:(id)a6 relayedDeviceSites:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke;
  block[3] = &unk_1E85C2CD8;
  block[4] = self;
  v26 = v14;
  v31 = a4;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v18;
  dispatch_sync(queue, block);
}

void __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

  if (WeakRetained)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke_2;
    v12[3] = &unk_1E85C2CD8;
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    v16 = *(a1 + 72);
    v5 = *(a1 + 40);
    v17 = *(a1 + 80);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v3;
    *(&v9 + 1) = v5;
    v13 = v9;
    v14 = v8;
    v15 = *(a1 + 64);
    v4(v12);
  }

  else
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = *(v10 + 16);

      v11();
    }
  }
}

void __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E698E9F8]);
  v3 = [v2 initWithType:5 name:*MEMORY[0x1E698E8F8] descriptors:MEMORY[0x1E695E0F0] options:1];
  v4 = *(*(a1 + 32) + 16);
  v11 = 0;
  v5 = [v4 requestAccessToResource:v3 withMode:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    if ([*(*(a1 + 32) + 48) updateRemoteDeviceUUID:*(a1 + 40) options:*(a1 + 80) mergeableDelta:*(a1 + 48) peerDeviceSite:*(a1 + 56) relayedDeviceSites:*(a1 + 64)])
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        v8 = *(v7 + 16);
LABEL_11:
        v8();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    [*(a1 + 32) _cleanupDonation:3];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke_2_cold_1();
    }
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v8 = *(v10 + 16);
    goto LABEL_11;
  }

LABEL_12:
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (CCDonateRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (void)beginSetDonationWithItemType:encodedDescriptors:sourceVersion:sourceValidity:options:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Failed to resolve set: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)beginSetDonationWithItemType:encodedDescriptors:sourceVersion:sourceValidity:options:completion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1DA444000, v1, OS_LOG_TYPE_ERROR, "Failed to obtain write access for resource: %@, error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)beginSetDonationWithItemType:encodedDescriptors:sourceVersion:sourceValidity:options:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Invalid descriptors: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)beginSetDonationWithItemType:(unsigned __int16)a1 encodedDescriptors:sourceVersion:sourceValidity:options:completion:.cold.4(unsigned __int16 a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CCTypeIdentifierRegistryBridge();
  v3 = [v2 descriptionForTypeIdentifier:a1];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __117__CCDonateConnection_remoteUpdateFromDeviceUUID_options_mergeableDelta_peerDeviceSite_relayedDeviceSites_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Failed to obtain read only access for mergeable deltas resource %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end