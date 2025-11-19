@interface CDPUIDeviceToDeviceEncryptionPasscodeController
+ (id)passcodeControllerWithPresenter:(id)a3 vm:(id)a4;
- (CDPUIDeviceToDeviceEncryptionPasscodeValidationDelegate)delegate;
- (id)passcodeValidationCompletion;
- (void)_userTappedCancel:(id)a3;
- (void)createPasscodeStateWithCompletion:(id)a3;
- (void)dealloc;
- (void)dismissFlowWithLocalSecret:(id)a3 error:(id)a4;
- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4;
- (void)setPasscodeValidationCompletion:(id)a3;
@end

@implementation CDPUIDeviceToDeviceEncryptionPasscodeController

+ (id)passcodeControllerWithPresenter:(id)a3 vm:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[5];
  v7[5] = v6;

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_2451DB000, a2, OS_LOG_TYPE_DEBUG, "CDPUIDeviceToDeviceEncryptionPasscodeController %p deallocated", &v2, 0xCu);
}

- (id)passcodeValidationCompletion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __79__CDPUIDeviceToDeviceEncryptionPasscodeController_passcodeValidationCompletion__block_invoke;
  v8 = &unk_278E2BF80;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_completionLock);
  v7(v3);

  os_unfair_lock_unlock(&self->_completionLock);
  v4 = _Block_copy(v12[5]);
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __79__CDPUIDeviceToDeviceEncryptionPasscodeController_passcodeValidationCompletion__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = _Block_copy(*(*(a1 + 32) + 24));

  return MEMORY[0x2821F96F8]();
}

- (void)setPasscodeValidationCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke;
  v6[3] = &unk_278E2B230;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_completionLock);
  __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke(v6);
  os_unfair_lock_unlock(&self->_completionLock);
}

uint64_t __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = _Block_copy(*(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

- (void)createPasscodeStateWithCompletion:(id)a3
{
  v4 = a3;
  [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self setPasscodeValidationCompletion:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = getBFFPasscodeViewControllerClass_softClass;
  v19 = getBFFPasscodeViewControllerClass_softClass;
  if (!getBFFPasscodeViewControllerClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getBFFPasscodeViewControllerClass_block_invoke;
    v15[3] = &unk_278E2BA40;
    v15[4] = &v16;
    __getBFFPasscodeViewControllerClass_block_invoke(v15);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  v7 = objc_alloc_init(v5);
  passcodeViewController = self->_passcodeViewController;
  self->_passcodeViewController = v7;

  [(BFFPasscodeViewController *)self->_passcodeViewController setPasscodeCreationDelegate:self];
  v9 = [(BFFPasscodeViewController *)self->_passcodeViewController view];
  v10 = [(CDPUIDeviceToDeviceEncryptionMessagingViewModelProtocol *)self->_vm title];
  [v9 setTitle:v10];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userTappedCancel_];
  v12 = [(BFFPasscodeViewController *)self->_passcodeViewController navigationItem];
  [v12 setLeftBarButtonItem:v11 animated:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIViewController *)self->_presentingViewController pushViewController:self->_passcodeViewController animated:1];
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIDeviceToDeviceEncryptionPasscodeController createPasscodeStateWithCompletion:v13];
    }

    v14 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self dismissFlowWithLocalSecret:0 error:v14];
  }
}

- (void)dismissFlowWithLocalSecret:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self passcodeValidationCompletion];
  v8[2](v8, v7, v6);
}

- (void)_userTappedCancel:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Cancel was tapped", buf, 2u);
  }

  v5 = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self delegate];
    v8 = [(BFFPasscodeViewController *)self->_passcodeViewController navigationController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__CDPUIDeviceToDeviceEncryptionPasscodeController__userTappedCancel___block_invoke;
    v9[3] = &unk_278E2BFA8;
    v9[4] = self;
    [v7 localSecretValidationCanCancelWithViewController:v8 completion:v9];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
    [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self dismissFlowWithLocalSecret:0 error:v7];
  }
}

void __69__CDPUIDeviceToDeviceEncryptionPasscodeController__userTappedCancel___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
    [v2 dismissFlowWithLocalSecret:0 error:v3];
  }
}

- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 passcodeInputView];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v9 = getBFFSimplePasscodeInputViewClass_softClass;
    v20 = getBFFSimplePasscodeInputViewClass_softClass;
    if (!getBFFSimplePasscodeInputViewClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getBFFSimplePasscodeInputViewClass_block_invoke;
      v16[3] = &unk_278E2BA40;
      v16[4] = &v17;
      __getBFFSimplePasscodeInputViewClass_block_invoke(v16);
      v9 = v18[3];
    }

    v10 = v9;
    _Block_object_dispose(&v17, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    v12 = [objc_alloc(MEMORY[0x277CFD500]) initWithValidatedSecret:v7 secretType:v11];
    v13 = self;
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
    v13 = self;
    v14 = 0;
    v15 = v12;
  }

  [(CDPUIDeviceToDeviceEncryptionPasscodeController *)v13 dismissFlowWithLocalSecret:v14 error:v15];
}

- (CDPUIDeviceToDeviceEncryptionPasscodeValidationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end