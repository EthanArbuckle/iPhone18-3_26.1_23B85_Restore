@interface DIClient2Controller
@end

@implementation DIClient2Controller

void __60__DIClient2Controller_XPCHandler_newAttachWithParams_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

void __77__DIClient2Controller_XPCHandler_keychainUnlockWithEncryptionUnlocker_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void __88__DIClient2Controller_XPCHandler_GUIAskForPassphraseWithEncryptionFrontend_usage_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void __90__DIClient2Controller_XPCHandler_createAndStoreInSystemKeychainWithCreator_account_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

@end