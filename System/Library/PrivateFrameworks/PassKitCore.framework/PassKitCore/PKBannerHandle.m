@interface PKBannerHandle
+ (id)createHandleForRequest:(id)a3 queue:(id)a4;
- (PKBannerHandleServerState)serverState;
- (PKBannerHandleState)state;
- (void)_accessTrackedRemoteTargetWithHandler:(uint64_t)a1;
- (void)_invalidateFromRemote:(uint64_t)a1;
- (void)detachWithFinished:(id)a3 reply:(id)a4;
- (void)displayWithDelegate:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)setState:(id)a3;
- (void)updateState:(id)a3 withReply:(id)a4;
@end

@implementation PKBannerHandle

+ (id)createHandleForRequest:(id)a3 queue:(id)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [PKBannerHandle alloc];
  v9 = v7;
  v10 = v6;
  v11 = v10;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_16;
  }

  if (v9 && v10)
  {
    v34.receiver = v8;
    v34.super_class = PKBannerHandle;
    v12 = objc_msgSendSuper2(&v34, sel_init);
    if (!v12)
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_FAULT))
      {
        v27 = [v9 type];
        LODWORD(v42) = 134217984;
        *(&v42 + 4) = v27;
        _os_log_fault_impl(&dword_1AD337000, &v8->super, OS_LOG_TYPE_FAULT, "PKBannerHandle: failed to create handle for %ld - no handle.", &v42, 0xCu);
      }

      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v9 type];
        LODWORD(v42) = 134217984;
        *(&v42 + 4) = v25;
        _os_log_impl(&dword_1AD337000, &v8->super, OS_LOG_TYPE_DEFAULT, "PKBannerHandle: failed to create handle for %ld - no handle.", &v42, 0xCu);
      }

      goto LABEL_14;
    }

    v8 = v12;
    objc_storeStrong(v12 + 1, a3);
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_queue, v4);
    v13 = dispatch_group_create();
    messageTracker = v8->_messageTracker;
    v8->_messageTracker = v13;

    v10 = [MEMORY[0x1E698F498] endpointForSystemMachName:@"com.apple.PassbookUISceneService.remote-ui" service:@"com.apple.wallet.banner" instance:0];
    v4 = v10;
    if (v10)
    {
      v15 = [MEMORY[0x1E698F490] connectionWithEndpoint:v10];
      connection = v8->_connection;
      v8->_connection = v15;

      v17 = v8->_connection;
      if (v17)
      {
        *&v42 = MEMORY[0x1E69E9820];
        *(&v42 + 1) = 3221225472;
        v43 = __40__PKBannerHandle__initForRequest_queue___block_invoke;
        v44 = &unk_1E79CDBE8;
        v45 = v11;
        v18 = v8;
        v46 = v18;
        [(BSServiceConnectionClient *)v17 configureConnection:&v42];
        v19 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
        v41 = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
        attributes = v18->_attributes;
        v18->_attributes = v20;

        v22 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v9 type];
          v24 = v8->_connection;
          *buf = 134218496;
          v36 = v18;
          v37 = 2048;
          v38 = v23;
          v39 = 2048;
          v40 = v24;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): created handle for %ld with connection %p.", buf, 0x20u);
        }

        [(BSServiceConnectionClient *)v8->_connection activate];
        v8 = v4;
        goto LABEL_15;
      }

      v28 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v33 = [v9 type];
        LODWORD(v42) = 134217984;
        *(&v42 + 4) = v33;
        _os_log_fault_impl(&dword_1AD337000, v28, OS_LOG_TYPE_FAULT, "PKBannerHandle: failed to create handle for %ld - no connection.", &v42, 0xCu);
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v31 = [v9 type];
      LODWORD(v42) = 134217984;
      *(&v42 + 4) = v31;
      v30 = "PKBannerHandle: failed to create handle for %ld - no connection.";
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  v28 = PKLogFacilityTypeGetObject(v10);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    v32 = [v9 type];
    LODWORD(v42) = 134217984;
    *(&v42 + 4) = v32;
    _os_log_fault_impl(&dword_1AD337000, v28, OS_LOG_TYPE_FAULT, "PKBannerHandle: failed to create handle for %ld - no endpoint.", &v42, 0xCu);
  }

  if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  v29 = [v9 type];
  LODWORD(v42) = 134217984;
  *(&v42 + 4) = v29;
  v30 = "PKBannerHandle: failed to create handle for %ld - no endpoint.";
LABEL_26:
  _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, v30, &v42, 0xCu);
LABEL_27:

LABEL_14:
  v18 = 0;
LABEL_15:

LABEL_16:
  return v18;
}

void __40__PKBannerHandle__initForRequest_queue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKBannerServiceInterface();
  [v3 setInterface:v4];

  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 40));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PKBannerHandle__initForRequest_queue___block_invoke_2;
  v8[3] = &unk_1E79CDBC0;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PKBannerHandle__initForRequest_queue___block_invoke_17;
  v6[3] = &unk_1E79CDBC0;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__PKBannerHandle__initForRequest_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = WeakRetained;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_INFO, "PKBannerHandle (%p): connection %p interrupted.", &v6, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [(PKBannerHandle *)WeakRetained _invalidateFromRemote:?];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

- (void)_invalidateFromRemote:(uint64_t)a1
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 52))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if ((*(a1 + 52) & 1) == 0 && (a2 & 1) == 0)
    {
      v4 = *(a1 + 50);
    }

    v5 = 0;
    atomic_compare_exchange_strong((a1 + 48), &v5, 1u);
    if (v5)
    {
      goto LABEL_32;
    }

    if ((a2 & 1) == 0)
    {
      v6 = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 88);
        *buf = 134218240;
        v36 = a1;
        v37 = 2048;
        v38 = v7;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): starting local invalidation of connection %p.", buf, 0x16u);
      }
    }

    v8 = PKLogFacilityTypeGetObject(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v4 == 1)
      {
        if (!v9)
        {
          goto LABEL_22;
        }

        *buf = 134217984;
        v36 = a1;
        v10 = "PKBannerHandle (%p): banner detached.";
      }

      else
      {
        if (!v9)
        {
          goto LABEL_22;
        }

        *buf = 134217984;
        v36 = a1;
        v10 = "PKBannerHandle (%p): banner finished.";
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_22;
      }

      *buf = 134217984;
      v36 = a1;
      v10 = "PKBannerHandle (%p): banner interrupted.";
    }

    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
LABEL_22:

    v11 = *(a1 + 88);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 88);
      *(a1 + 88) = 0;

      if ((a2 & 1) == 0)
      {
        if ((*(a1 + 51) & 1) != 0 || *(a1 + 50) != 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = [v12 remoteTargetWithLaunchingAssertionAttributes:*(a1 + 96)];
          if (v14)
          {
            v15 = *(a1 + 32);
            dispatch_group_enter(v15);
            objc_initWeak(buf, a1);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __40__PKBannerHandle__invalidateFromRemote___block_invoke;
            aBlock[3] = &unk_1E79CDC38;
            v14 = v14;
            v32 = v14;
            objc_copyWeak(&v34, buf);
            v16 = v15;
            v33 = v16;
            v17 = _Block_copy(aBlock);
            if (PKRunningInLockScreenPlugin())
            {
              v18 = dispatch_get_global_queue(0, 0);
              dispatch_async(v18, v17);
            }

            else
            {
              v17[2](v17);
            }

            objc_destroyWeak(&v34);
            objc_destroyWeak(buf);
          }
        }

        v20 = *(a1 + 24);
        v19 = *(a1 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __40__PKBannerHandle__invalidateFromRemote___block_invoke_29;
        block[3] = &unk_1E79C4E28;
        v30 = v12;
        dispatch_group_notify(v19, v20, block);
      }
    }

LABEL_32:
    v21 = *(a1 + 80);
    if (v21)
    {
      v22 = _Block_copy(v21);
      v23 = *(a1 + 80);
      *(a1 + 80) = 0;

      v24 = *(a1 + 24);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __40__PKBannerHandle__invalidateFromRemote___block_invoke_30;
      v26[3] = &unk_1E79C8958;
      v27 = v22;
      v28 = v4;
      v25 = v22;
      dispatch_async(v24, v26);
    }
  }
}

void __40__PKBannerHandle__initForRequest_queue___block_invoke_17(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = WeakRetained;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_INFO, "PKBannerHandle (%p): connection %p remotely invalidated.", &v6, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    [(PKBannerHandle *)WeakRetained _invalidateFromRemote:?];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(PKBannerHandle *)self _invalidateFromRemote:?];

  os_unfair_lock_unlock(&self->_lock);
}

void __40__PKBannerHandle__invalidateFromRemote___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__PKBannerHandle__invalidateFromRemote___block_invoke_2;
  v3[3] = &unk_1E79CDC10;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 detachWithReply:v3];

  objc_destroyWeak(&v5);
}

void __40__PKBannerHandle__invalidateFromRemote___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = PKLogFacilityTypeGetObject(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v6)
      {
        v10 = 134218242;
        v11 = WeakRetained;
        v12 = 2112;
        v13 = v3;
        v7 = "PKBannerHandle (%p): failed to notify remote of local invalidation - %@.";
        v8 = v5;
        v9 = 22;
LABEL_7:
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
      }
    }

    else if (v6)
    {
      v10 = 138412290;
      v11 = v3;
      v7 = "PKBannerHandle (?): failed to notify remote of local invalidation - %@.";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __40__PKBannerHandle__invalidateFromRemote___block_invoke_29(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKBannerHandle: connection %p locally invalidated.", &v5, 0xCu);
  }

  return [*(a1 + 32) invalidate];
}

void __40__PKBannerHandle__invalidateFromRemote___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PKBannerHandleResponse createWithResult:?];
  (*(v1 + 16))(v1, v2);
}

- (void)displayWithDelegate:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_started)
  {
    __break(1u);
  }

  v8 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): starting...", &buf, 0xCu);
  }

  self->_started = 1;
  objc_storeWeak(&self->_delegate, v6);
  v9 = _Block_copy(v7);
  completion = self->_completion;
  self->_completion = v9;

  v11 = self->_state;
  v12 = dispatch_group_create();
  initialStateUpdateTracker = self->_initialStateUpdateTracker;
  self->_initialStateUpdateTracker = v12;

  dispatch_group_enter(self->_initialStateUpdateTracker);
  os_unfair_lock_unlock(&self->_lock);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__PKBannerHandle_displayWithDelegate_completion___block_invoke;
  v16[3] = &unk_1E79CDCD8;
  v16[4] = self;
  v14 = v11;
  v17 = v14;
  p_buf = &buf;
  [(PKBannerHandle *)self _accessTrackedRemoteTargetWithHandler:v16];
  os_unfair_lock_lock(&self->_lock);
  dispatch_group_leave(self->_initialStateUpdateTracker);
  v15 = self->_initialStateUpdateTracker;
  self->_initialStateUpdateTracker = 0;

  os_unfair_lock_unlock(&self->_lock);
  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    [(PKBannerHandle *)self invalidate];
  }

  _Block_object_dispose(&buf, 8);
}

void __49__PKBannerHandle_displayWithDelegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_2;
  v20[3] = &unk_1E79CDC60;
  objc_copyWeak(&v21, &location);
  [v5 configureForRequest:v8 withState:v7 didStartReply:v20];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_32;
  aBlock[3] = &unk_1E79CDCB0;
  v9 = v5;
  v17 = v9;
  objc_copyWeak(&v19, &location);
  v10 = v6;
  v18 = v10;
  v11 = _Block_copy(aBlock);
  if (PKRunningInLockScreenPlugin())
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_35;
    block[3] = &unk_1E79C9AE0;
    v14 = v11;
    objc_copyWeak(&v15, &location);
    dispatch_async(v12, block);

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_destroyWeak(&v15);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = v11[2](v11);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v6 = 134218242;
      v7 = WeakRetained;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): detached before start or failed to configure - %@.", &v6, 0x16u);
    }
  }
}

uint64_t __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_32(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_2_33;
  v5[3] = &unk_1E79CDC88;
  v7 = &v9;
  objc_copyWeak(&v8, (a1 + 48));
  v6 = *(a1 + 40);
  [v2 displayWithReply:v5];
  v3 = *(v10 + 24);

  objc_destroyWeak(&v8);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_2_33(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (!WeakRetained)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v6 = PKLogFacilityTypeGetObject(0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 134218242;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): failed to start - %@.", &v8, 0x16u);
    }

LABEL_8:
    os_unfair_lock_lock(v5 + 4);
    BYTE2(v5[12]._os_unfair_lock_opaque) = *(*(*(a1 + 40) + 8) + 24);
    os_unfair_lock_unlock(v5 + 4);
    goto LABEL_12;
  }

  if (v7)
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (?): failed to start - %@.", &v8, 0xCu);
  }

LABEL_12:
  (*(*(a1 + 32) + 16))();
}

void __49__PKBannerHandle_displayWithDelegate_completion___block_invoke_35(uint64_t a1)
{
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained invalidate];
  }
}

- (void)_accessTrackedRemoteTargetWithHandler:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
    }

    v5 = objc_autoreleasePoolPush();
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 88);
    if (v6)
    {
      v7 = [v6 remoteTargetWithLaunchingAssertionAttributes:*(a1 + 96)];
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 32);
        dispatch_group_enter(v9);
        os_unfair_lock_unlock((a1 + 16));
        v10 = [[PKDeallocationGuard alloc] initWithBlock:&__block_literal_global_53];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __56__PKBannerHandle__accessTrackedRemoteTargetWithHandler___block_invoke_2;
        v16[3] = &unk_1E79C4DD8;
        v17 = v10;
        v18 = v9;
        v11 = v4[2];
        v12 = v9;
        v13 = v10;
        v11(v4, v8, v16);

LABEL_12:
        objc_autoreleasePoolPop(v5);
        goto LABEL_13;
      }

      v14 = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = a1;
        v15 = "PKBannerHandle (%p): attempting to message inactive connection.";
        goto LABEL_10;
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = a1;
        v15 = "PKBannerHandle (%p): attempting to message invalidated connection.";
LABEL_10:
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    os_unfair_lock_unlock((a1 + 16));
    goto LABEL_12;
  }

LABEL_13:
}

- (PKBannerHandleState)state
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_state;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(id)a3
{
  v5 = a3;
  if (self->_request && ((v6 = v5) == 0 || (v7 = [v5 type], v7 == -[PKBannerHandleRequest type](self->_request, "type"))))
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_state, a3);
    started = self->_started;
    v9 = self->_initialStateUpdateTracker;
    os_unfair_lock_unlock(&self->_lock);
    if (started)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __27__PKBannerHandle_setState___block_invoke;
      v10[3] = &unk_1E79CDD00;
      v11 = v9;
      v12 = self;
      v13 = v6;
      [(PKBannerHandle *)self _accessTrackedRemoteTargetWithHandler:v10];
    }
  }

  else
  {
    __break(1u);
  }
}

void __27__PKBannerHandle_setState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__PKBannerHandle_setState___block_invoke_2;
    block[3] = &unk_1E79C4D60;
    v10 = &v15;
    v15 = v5;
    v16 = *(a1 + 48);
    v17 = v7;
    dispatch_group_notify(v8, v9, block);
  }

  else
  {
    v11 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __27__PKBannerHandle_setState___block_invoke_4;
    v12[3] = &unk_1E79C4450;
    v10 = &v13;
    v13 = v6;
    [v5 updateState:v11 withReply:v12];
  }
}

void __27__PKBannerHandle_setState___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__PKBannerHandle_setState___block_invoke_3;
  v3[3] = &unk_1E79C4450;
  v4 = *(a1 + 48);
  [v1 updateState:v2 withReply:v3];
}

- (PKBannerHandleServerState)serverState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serverState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __56__PKBannerHandle__accessTrackedRemoteTargetWithHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) invalidate])
  {
    __break(1u);
  }

  else
  {
    v2 = *(a1 + 40);

    dispatch_group_leave(v2);
  }
}

- (void)updateState:(id)a3 withReply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_request)
  {
    __break(1u);
  }

  v9 = v8;
  if (v7)
  {
    v10 = [v7 type];
    if (v10 != [(PKBannerHandleRequest *)self->_request type])
    {
      v12 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = self;
        v13 = "PKBannerHandle (%p): type mismatch - ignoring state update.";
        goto LABEL_14;
      }

LABEL_15:

      v9[2](v9, 0);
      goto LABEL_16;
    }
  }

  v11 = atomic_load(&self->_invalidated);
  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = self;
      v13 = "PKBannerHandle (%p): ignoring state update.";
LABEL_14:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = self->_serverState;
  objc_storeStrong(&self->_serverState, a3);
  os_unfair_lock_unlock(&self->_lock);
  v15 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = self;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): state updated.", &v17, 0xCu);
  }

  v9[2](v9, 0);
  if (v7 | v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bannerHandle:self didChangeFromServerState:v14];
  }

LABEL_16:
}

- (void)detachWithFinished:(id)a3 reply:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKBannerHandle (%p): received remote detach.", &v9, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_detached = 1;
  self->_finished = [v6 BOOLValue];
  os_unfair_lock_unlock(&self->_lock);
  v7[2](v7, 0);
  [(PKBannerHandle *)self invalidate];
}

@end