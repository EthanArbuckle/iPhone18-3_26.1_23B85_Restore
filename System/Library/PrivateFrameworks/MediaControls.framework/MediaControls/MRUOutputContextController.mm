@interface MRUOutputContextController
- (AVOutputContext)outputContext;
- (AVOutputDevice)outputDevice;
- (MRUOutputContextController)initWithOutputContextType:(int64_t)type;
- (MRUOutputContextControllerDelegate)delegate;
- (id)associatedOutputContext;
- (void)_setOutputDevice:(id)device context:(id)context completion:(id)completion;
- (void)initializeOutputContextWithCompletion:(id)completion;
- (void)mediaServicesWereLostNotification:(id)notification;
- (void)mediaServicesWereResetNotification:(id)notification;
- (void)outputDeviceChangedNotification:(id)notification;
- (void)registerNotificationsForOutputContext:(id)context;
- (void)setOutputContext:(id)context;
- (void)setOutputDevice:(id)device completion:(id)completion;
- (void)unregisterNotificationsForOutputContext:(id)context;
@end

@implementation MRUOutputContextController

- (MRUOutputContextController)initWithOutputContextType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = MRUOutputContextController;
  v4 = [(MRUOutputContextController *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_outputContextType = type;
    v4->_lock._os_unfair_lock_opaque = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_mediaServicesWereLostNotification_ name:*MEMORY[0x1E6958110] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_mediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:0];

    [(MRUOutputContextController *)v5 initializeOutputContextWithCompletion:0];
  }

  return v5;
}

- (AVOutputDevice)outputDevice
{
  outputContext = [(MRUOutputContextController *)self outputContext];
  outputDevice = [outputContext outputDevice];

  return outputDevice;
}

- (void)setOutputContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  if (self->_outputContext)
  {
    [(MRUOutputContextController *)self unregisterNotificationsForOutputContext:?];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MRUOutputContextController_setOutputContext___block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_storeStrong(&self->_outputContext, context);
  if (self->_outputContext)
  {
    [(MRUOutputContextController *)self registerNotificationsForOutputContext:?];
    outputDevice = [(AVOutputContext *)self->_outputContext outputDevice];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__MRUOutputContextController_setOutputContext___block_invoke_2;
    v8[3] = &unk_1E76639D0;
    v8[4] = self;
    v9 = outputDevice;
    v7 = outputDevice;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __47__MRUOutputContextController_setOutputContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 outputContextController:*(a1 + 32) didChangeOutputDevice:0];
}

void __47__MRUOutputContextController_setOutputContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 outputContextController:*(a1 + 32) didChangeOutputDevice:*(a1 + 40)];
}

- (AVOutputContext)outputContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_outputContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setOutputDevice:(id)device completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p>.setOutputDevice", objc_opt_class(), self];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v8, uUIDString];
  v13 = v12;
  if (deviceCopy)
  {
    [v12 appendFormat:@" for %@", deviceCopy];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v13;
    _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MRUOutputContextController_setOutputDevice_completion___block_invoke;
  aBlock[3] = &unk_1E7665950;
  v15 = deviceCopy;
  v27 = v15;
  v28 = v8;
  v29 = uUIDString;
  v30 = date;
  v31 = completionCopy;
  v16 = completionCopy;
  v17 = date;
  v18 = uUIDString;
  v19 = v8;
  v20 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __57__MRUOutputContextController_setOutputDevice_completion___block_invoke_3;
  v23[3] = &unk_1E7665978;
  v23[4] = self;
  v24 = v15;
  v25 = v20;
  v21 = v20;
  v22 = v15;
  [(MRUOutputContextController *)self initializeOutputContextWithCompletion:v23];
}

void __57__MRUOutputContextController_setOutputDevice_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v41 = v8;
      v42 = 2114;
      v43 = v9;
      v44 = 2112;
      v45 = v10;
      v46 = 2114;
      v47 = v11;
      v48 = 2048;
      v49 = v13;
      v14 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v15 = v6;
      v16 = 52;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v41 = v24;
      v42 = 2114;
      v43 = v25;
      v44 = 2112;
      v45 = v10;
      v46 = 2048;
      v47 = v26;
      v14 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v15 = v6;
      v16 = 42;
    }

    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }

  else
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v41 = v18;
      v42 = 2114;
      v43 = v17;
      v44 = 2114;
      v45 = v19;
      v46 = 2048;
      v47 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v41 = v27;
      v42 = 2114;
      v43 = v28;
      v44 = 2048;
      v45 = v29;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v6;
      v23 = 32;
    }

    _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
  }

LABEL_15:
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __57__MRUOutputContextController_setOutputDevice_completion___block_invoke_23;
  v36 = &unk_1E7663870;
  v37 = *(a1 + 32);
  v39 = a2;
  v38 = *(a1 + 56);
  MRAnalyticsSendEvent();
  if (*(a1 + 64))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRUOutputContextController_setOutputDevice_completion___block_invoke_2;
    block[3] = &unk_1E7665928;
    v31 = *(a1 + 64);
    v32 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

id __57__MRUOutputContextController_setOutputDevice_completion___block_invoke_23(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "deviceSubType")}];
  [v2 setObject:v3 forKeyedSubscript:@"destination_device_sub_type"];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"error_code"];

  v5 = MEMORY[0x1E696AD98];
  [*(a1 + 40) timeIntervalSinceNow];
  v7 = [v5 numberWithDouble:-v6];
  [v2 setObject:v7 forKeyedSubscript:@"duration"];

  return v2;
}

uint64_t __57__MRUOutputContextController_setOutputDevice_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _setOutputDevice:*(a1 + 40) context:a2 completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_setOutputDevice:(id)device context:(id)context completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  contextCopy = context;
  completionCopy = completion;
  outputDevice = [contextCopy outputDevice];
  v12 = [outputDevice isEqual:deviceCopy];

  if (v12)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13 = _MPAVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v20 = 2114;
      v21 = deviceCopy;
      v22 = 2114;
      v23 = contextCopy;
      _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ setting output device: %{public}@ for context: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__MRUOutputContextController__setOutputDevice_context_completion___block_invoke;
    v14[3] = &unk_1E76659A0;
    objc_copyWeak(&v17, buf);
    v15 = deviceCopy;
    v16 = completionCopy;
    [contextCopy setOutputDevice:v15 options:0 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __66__MRUOutputContextController__setOutputDevice_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 status];
  v6 = _MPAVLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 3)
  {
    if (v7)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = [WeakRetained outputContext];
      v18 = 138543874;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed setting output device: %{public}@ for context: %{public}@", &v18, 0x20u);
    }
  }

  else if (v5 == 4)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = [WeakRetained outputContext];
      v11 = [v3 cancellationReason];
      v18 = 138544130;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled setting output device: %{public}@ for context: %{public}@ with reason: %{public}@", &v18, 0x2Au);
    }
  }

  else if (v7)
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 32);
    v17 = [WeakRetained outputContext];
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ success setting output device: %{public}@ for context: %{public}@", &v18, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)outputDeviceChangedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  outputDevice = [(MRUOutputContextController *)self outputDevice];
  v5 = _MPAVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    outputContext = [(MRUOutputContextController *)self outputContext];
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = outputContext;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ observed output device changed %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MRUOutputContextController_outputDeviceChangedNotification___block_invoke;
  v8[3] = &unk_1E76639D0;
  v8[4] = self;
  v9 = outputDevice;
  v7 = outputDevice;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __62__MRUOutputContextController_outputDeviceChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 outputContextController:*(a1 + 32) didChangeOutputDevice:*(a1 + 40)];
}

- (id)associatedOutputContext
{
  outputContextType = self->_outputContextType;
  switch(outputContextType)
  {
    case 2:
      self = [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
      break;
    case 1:
      self = [MEMORY[0x1E69587F0] sharedSystemScreenContext];
      break;
    case 0:
      self = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
      break;
  }

  return self;
}

- (void)registerNotificationsForOutputContext:(id)context
{
  v4 = MEMORY[0x1E696AD88];
  contextCopy = context;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_outputDeviceChangedNotification_ name:*MEMORY[0x1E69586A8] object:contextCopy];
}

- (void)unregisterNotificationsForOutputContext:(id)context
{
  v4 = MEMORY[0x1E696AD88];
  contextCopy = context;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69586A8] object:contextCopy];
}

- (void)initializeOutputContextWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  outputContext = [(MRUOutputContextController *)self outputContext];
  if (outputContext)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, outputContext, 0);
    }
  }

  else
  {
    outputContextType = self->_outputContextType;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@:%p>.initializeOutputContextWithCompletion", objc_opt_class(), self];
    date = [MEMORY[0x1E695DF00] date];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v7, uUIDString];
    v12 = v11;
    if (outputContextType <= 2)
    {
      [(__CFString *)v11 appendFormat:@" for %@", off_1E7665A50[outputContextType]];
    }

    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = v12;
      _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke;
    aBlock[3] = &unk_1E76659C8;
    v37 = outputContextType;
    v22 = v7;
    v33 = v22;
    v14 = uUIDString;
    v34 = v14;
    v23 = date;
    v35 = v23;
    v36 = completionCopy;
    v15 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_44;
    v28[3] = &unk_1E76659F0;
    objc_copyWeak(&v30, &location);
    v16 = v15;
    v29 = v16;
    v17 = _Block_copy(v28);
    if (initializeOutputContextWithCompletion__onceToken != -1)
    {
      [MRUOutputContextController initializeOutputContextWithCompletion:];
    }

    if ((v17[2](v17) & 1) == 0)
    {
      v18 = _MPAVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"SharedSystemAudio";
        if (outputContextType == 2)
        {
          v19 = @"SharedAudioPresentation";
        }

        if (outputContextType == 1)
        {
          v19 = @"SharedSystemScreen";
        }

        *buf = 138543362;
        v39 = v19;
        _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ unavailable. Retrying", buf, 0xCu);
      }

      v20 = dispatch_time(0, 1000000000);
      v21 = initializeOutputContextWithCompletion__workerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_47;
      block[3] = &unk_1E7665A18;
      v25 = v17;
      v27 = outputContextType;
      v26 = v16;
      dispatch_after(v20, v21, block);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[8];
  if (v5 && !v6)
  {
    if (v8 <= 2)
    {
      v9 = _MRLogForCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v10 = a1[4];
      v11 = a1[5];
      v12 = a1[8];
      v13 = @"SharedSystemAudio";
      if (v12 == 2)
      {
        v13 = @"SharedAudioPresentation";
      }

      if (v12 == 1)
      {
        v14 = @"SharedSystemScreen";
      }

      else
      {
        v14 = v13;
      }

      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:a1[6]];
      v39 = 138544386;
      v40 = v10;
      v41 = 2114;
      v42 = v11;
      v43 = 2112;
      v44 = v5;
      v45 = 2114;
      v46 = v14;
      v47 = 2048;
      v48 = v16;
      v17 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v18 = v9;
      v19 = 52;
      goto LABEL_35;
    }

    v9 = _MRLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v26 = a1[4];
    v27 = a1[5];
    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:a1[6]];
    v39 = 138544130;
    v40 = v26;
    v41 = 2114;
    v42 = v27;
    v43 = 2112;
    v44 = v5;
    v45 = 2048;
    v46 = v28;
    v17 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_30:
    v18 = v9;
    v19 = 42;
LABEL_35:
    _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, v17, &v39, v19);
LABEL_36:

    goto LABEL_37;
  }

  if (!v6)
  {
    if (v8 > 2)
    {
      v9 = _MRLogForCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v35 = a1[4];
      v36 = a1[5];
      v15 = [MEMORY[0x1E695DF00] date];
      [v15 timeIntervalSinceDate:a1[6]];
      v39 = 138543874;
      v40 = v35;
      v41 = 2114;
      v42 = v36;
      v43 = 2048;
      v44 = v37;
      v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v18 = v9;
      v19 = 32;
      goto LABEL_35;
    }

    v9 = _MRLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v29 = a1[4];
    v30 = a1[5];
    v31 = a1[8];
    v32 = @"SharedSystemAudio";
    if (v31 == 2)
    {
      v32 = @"SharedAudioPresentation";
    }

    if (v31 == 1)
    {
      v33 = @"SharedSystemScreen";
    }

    else
    {
      v33 = v32;
    }

    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:a1[6]];
    v39 = 138544130;
    v40 = v29;
    v41 = 2114;
    v42 = v30;
    v43 = 2114;
    v44 = v33;
    v45 = 2048;
    v46 = v34;
    v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_30;
  }

  if (v8 <= 2)
  {
    v9 = _MRLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v20 = a1[4];
    v21 = a1[5];
    v22 = a1[8];
    v23 = @"SharedSystemAudio";
    if (v22 == 2)
    {
      v23 = @"SharedAudioPresentation";
    }

    if (v22 == 1)
    {
      v24 = @"SharedSystemScreen";
    }

    else
    {
      v24 = v23;
    }

    v15 = [MEMORY[0x1E695DF00] date];
    [v15 timeIntervalSinceDate:a1[6]];
    v39 = 138544386;
    v40 = v20;
    v41 = 2114;
    v42 = v21;
    v43 = 2114;
    v44 = v7;
    v45 = 2114;
    v46 = v24;
    v47 = 2048;
    v48 = v25;
    _os_log_error_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
    goto LABEL_36;
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_cold_1(a1, v7, v9);
  }

LABEL_37:

  v38 = a1[7];
  if (v38)
  {
    (*(v38 + 16))(v38, v5, v7);
  }
}

BOOL __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained associatedOutputContext];
    v5 = v4 != 0;
    if (v4)
    {
      [v3 setOutputContext:v4];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.MRUOutputContextController", v2);
  v1 = initializeOutputContextWithCompletion__workerQueue;
  initializeOutputContextWithCompletion__workerQueue = v0;
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_47(uint64_t a1)
{
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = _MPAVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_47_cold_1(a1, v2);
    }

    v3 = dispatch_time(0, 5000000000);
    v4 = initializeOutputContextWithCompletion__workerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_48;
    block[3] = &unk_1E7665A18;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v5;
    v11 = v6;
    v10 = v7;
    dispatch_after(v3, v4, block);
  }
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_48(uint64_t a1)
{
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69B0DC0] code:32 userInfo:0];
    v4 = _MPAVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_48_cold_1(a1, v4);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)mediaServicesWereLostNotification:(id)notification
{
  v4 = _MPAVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "Media services were Lost. Clearing context controller", v5, 2u);
  }

  [(MRUOutputContextController *)self setOutputContext:0];
}

- (void)mediaServicesWereResetNotification:(id)notification
{
  v4 = _MPAVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "Media services were reset. Rebuilding context controller", v5, 2u);
  }

  [(MRUOutputContextController *)self setOutputContext:0];
  [(MRUOutputContextController *)self initializeOutputContextWithCompletion:0];
}

- (MRUOutputContextControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = a1[5];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceDate:a1[6]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&dword_1A20FC000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_47_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = @"SharedSystemAudio";
  if (v2 == 2)
  {
    v3 = @"SharedAudioPresentation";
  }

  if (v2 == 1)
  {
    v4 = @"SharedSystemScreen";
  }

  else
  {
    v4 = v3;
  }

  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A20FC000, a2, OS_LOG_TYPE_ERROR, "%{public}@ still unavailable after retry. Retrying with longer backoff", &v5, 0xCu);
}

void __68__MRUOutputContextController_initializeOutputContextWithCompletion___block_invoke_48_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = @"SharedSystemAudio";
  if (v2 == 2)
  {
    v3 = @"SharedAudioPresentation";
  }

  if (v2 == 1)
  {
    v4 = @"SharedSystemScreen";
  }

  else
  {
    v4 = v3;
  }

  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_1A20FC000, a2, OS_LOG_TYPE_FAULT, "%{public}@ still unavailable after multiple retries. Giving up", &v5, 0xCu);
}

@end