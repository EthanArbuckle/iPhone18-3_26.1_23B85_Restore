@interface CAMPreventConnectionHandoverAssertionController
- (CAMPreventConnectionHandoverAssertionController)init;
- (void)_releaseAssertionIfHeld;
- (void)_requestAssertionIfUnheld;
- (void)dealloc;
- (void)releaseAssertionIfHeld;
- (void)requestAssertionIfUnheld;
@end

@implementation CAMPreventConnectionHandoverAssertionController

- (CAMPreventConnectionHandoverAssertionController)init
{
  v7.receiver = self;
  v7.super_class = CAMPreventConnectionHandoverAssertionController;
  v2 = [(CAMPreventConnectionHandoverAssertionController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.preventConnectionHandoverAssertionControllerQueue", v3);
    accessQueue = v2->__accessQueue;
    v2->__accessQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(CAMPreventConnectionHandoverAssertionController *)self _releaseAssertionIfHeld];
  v3.receiver = self;
  v3.super_class = CAMPreventConnectionHandoverAssertionController;
  [(CAMPreventConnectionHandoverAssertionController *)&v3 dealloc];
}

- (void)requestAssertionIfUnheld
{
  objc_initWeak(&location, self);
  v3 = [(CAMPreventConnectionHandoverAssertionController *)self _accessQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__CAMPreventConnectionHandoverAssertionController_requestAssertionIfUnheld__block_invoke;
  v4[3] = &unk_1E76F8580;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __75__CAMPreventConnectionHandoverAssertionController_requestAssertionIfUnheld__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestAssertionIfUnheld];
}

- (void)_requestAssertionIfUnheld
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CAMPreventConnectionHandoverAssertionController *)self _preventConnectionHandoverAssertion];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69B3760] sharedHardwareManagerWithNoUI];
    v11 = 0;
    v5 = [v4 requestAssertion:3 error:&v11];
    v6 = v11;

    if (v6)
    {
      v7 = os_log_create("com.apple.camera", "PreventConnectionHandover");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = v6;
        v8 = "CAMPreventConnectionHandoverAssertionController - assertion request did fail with error: %{public}@";
        v9 = v7;
        v10 = 12;
LABEL_7:
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    else
    {
      [(CAMPreventConnectionHandoverAssertionController *)self _setPreventConnectionHandoverAssertion:v5];
      v7 = os_log_create("com.apple.camera", "PreventConnectionHandover");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "CAMPreventConnectionHandoverAssertionController - request assertion success";
        v9 = v7;
        v10 = 2;
        goto LABEL_7;
      }
    }
  }
}

- (void)releaseAssertionIfHeld
{
  objc_initWeak(&location, self);
  v3 = [(CAMPreventConnectionHandoverAssertionController *)self _accessQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__CAMPreventConnectionHandoverAssertionController_releaseAssertionIfHeld__block_invoke;
  v4[3] = &unk_1E76F8580;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__CAMPreventConnectionHandoverAssertionController_releaseAssertionIfHeld__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releaseAssertionIfHeld];
}

- (void)_releaseAssertionIfHeld
{
  v3 = [(CAMPreventConnectionHandoverAssertionController *)self _preventConnectionHandoverAssertion];

  if (v3)
  {
    v4 = [MEMORY[0x1E69B3760] sharedHardwareManagerWithNoUI];
    v5 = [(CAMPreventConnectionHandoverAssertionController *)self _preventConnectionHandoverAssertion];
    v6 = [v4 releaseAssertion:v5];

    [(CAMPreventConnectionHandoverAssertionController *)self _setPreventConnectionHandoverAssertion:0];
    v7 = os_log_create("com.apple.camera", "PreventConnectionHandover");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMPreventConnectionHandoverAssertionController - assertion released", v8, 2u);
    }
  }
}

@end