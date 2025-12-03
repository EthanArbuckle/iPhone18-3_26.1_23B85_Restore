@interface CUMobileDeviceDiscovery
+ (void)getDevicesWithQueue:(id)queue completion:(id)completion;
- (CUMobileDeviceDiscovery)init;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation CUMobileDeviceDiscovery

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && gLogCategory_CUMobileDeviceDiscovery <= 50 && (gLogCategory_CUMobileDeviceDiscovery != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceDiscovery, 0x32u)))
  {
    LogPrintF(&gLogCategory_CUMobileDeviceDiscovery, "[CUMobileDeviceDiscovery _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v12);
  }

  if (!self->_mdRunLoopThread)
  {
    if (gLogCategory_CUMobileDeviceDiscovery <= 30 && (gLogCategory_CUMobileDeviceDiscovery != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceDiscovery, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUMobileDeviceDiscovery, "[CUMobileDeviceDiscovery _invalidated]", 0x1Eu, "Invalidated\n", v3, v4, v5, v6, v12);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
      v8 = self->_invalidationHandler;
    }

    else
    {
      v8 = 0;
    }

    self->_invalidationHandler = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CUMobileDeviceDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__CUMobileDeviceDiscovery_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result + 32) + 9) & 1) == 0)
  {
    v10 = result;
    if (gLogCategory_CUMobileDeviceDiscovery <= 30 && (gLogCategory_CUMobileDeviceDiscovery != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceDiscovery, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUMobileDeviceDiscovery, "[CUMobileDeviceDiscovery invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    }

    *(*(v10 + 32) + 9) = 1;
    v11 = *(v10 + 32);
    if (v11[2])
    {
      v12 = v11[2];

      return [v12 invalidate];
    }

    else
    {

      return [v11 _invalidated];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CUMobileDeviceDiscovery_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__CUMobileDeviceDiscovery_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUMobileDeviceDiscovery <= 30 && (gLogCategory_CUMobileDeviceDiscovery != -1 || _LogCategory_Initialize(&gLogCategory_CUMobileDeviceDiscovery, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUMobileDeviceDiscovery, "[CUMobileDeviceDiscovery activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
  }

  *(*(a1 + 32) + 8) = 1;
  v9 = objc_alloc_init(CURunLoopThread);
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  [*(*(a1 + 32) + 16) setDispatchQueue:*(*(a1 + 32) + 40)];
  v12 = [objc_opt_class() description];
  [*(*(a1 + 32) + 16) setLabel:v12];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__CUMobileDeviceDiscovery_activate__block_invoke_2;
  v19[3] = &unk_1E73A4F68;
  v20 = *(a1 + 32);
  [*(v20 + 16) setInvalidationHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__CUMobileDeviceDiscovery_activate__block_invoke_3;
  v17[3] = &unk_1E73A4F68;
  v18 = *(a1 + 32);
  [*(v18 + 16) setThreadInitializeHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__CUMobileDeviceDiscovery_activate__block_invoke_4;
  v15[3] = &unk_1E73A4F68;
  v16 = *(a1 + 32);
  [*(v16 + 16) setThreadFinalizeHandler:v15];
  return [*(*(a1 + 32) + 16) activate];
}

uint64_t __35__CUMobileDeviceDiscovery_activate__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (CUMobileDeviceDiscovery)init
{
  v4.receiver = self;
  v4.super_class = CUMobileDeviceDiscovery;
  v2 = [(CUMobileDeviceDiscovery *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    *&v2->_changeFlags = 0x200000003;
  }

  return v2;
}

+ (void)getDevicesWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v7 = dispatch_queue_create("CUMobileDeviceGetDevices", 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CUMobileDeviceDiscovery_getDevicesWithQueue_completion___block_invoke;
  v10[3] = &unk_1E73A49A0;
  v11 = queueCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
  dispatch_async(v7, v10);
}

void __58__CUMobileDeviceDiscovery_getDevicesWithQueue_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CUMobileDeviceDiscovery_getDevicesWithQueue_completion___block_invoke_2;
  v6[3] = &unk_1E73A49A0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

@end