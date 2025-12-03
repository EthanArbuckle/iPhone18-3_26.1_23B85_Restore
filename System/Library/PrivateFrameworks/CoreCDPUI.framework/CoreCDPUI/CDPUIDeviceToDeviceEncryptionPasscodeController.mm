@interface CDPUIDeviceToDeviceEncryptionPasscodeController
+ (id)passcodeControllerWithPresenter:(id)presenter vm:(id)vm;
- (CDPUIDeviceToDeviceEncryptionPasscodeValidationDelegate)delegate;
- (id)passcodeValidationCompletion;
- (void)_userTappedCancel:(id)cancel;
- (void)createPasscodeStateWithCompletion:(id)completion;
- (void)dealloc;
- (void)dismissFlowWithLocalSecret:(id)secret error:(id)error;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
- (void)setPasscodeValidationCompletion:(id)completion;
@end

@implementation CDPUIDeviceToDeviceEncryptionPasscodeController

+ (id)passcodeControllerWithPresenter:(id)presenter vm:(id)vm
{
  presenterCopy = presenter;
  vmCopy = vm;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[1];
  v7[1] = presenterCopy;
  v9 = presenterCopy;

  v10 = v7[5];
  v7[5] = vmCopy;

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setPasscodeValidationCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke;
  v6[3] = &unk_278E2B230;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  os_unfair_lock_lock(&self->_completionLock);
  __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke(v6);
  os_unfair_lock_unlock(&self->_completionLock);
}

uint64_t __83__CDPUIDeviceToDeviceEncryptionPasscodeController_setPasscodeValidationCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = _Block_copy(*(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

- (void)createPasscodeStateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self setPasscodeValidationCompletion:completionCopy];
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
  view = [(BFFPasscodeViewController *)self->_passcodeViewController view];
  title = [(CDPUIDeviceToDeviceEncryptionMessagingViewModelProtocol *)self->_vm title];
  [view setTitle:title];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userTappedCancel_];
  navigationItem = [(BFFPasscodeViewController *)self->_passcodeViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v11 animated:0];

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

- (void)dismissFlowWithLocalSecret:(id)secret error:(id)error
{
  errorCopy = error;
  secretCopy = secret;
  passcodeValidationCompletion = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self passcodeValidationCompletion];
  passcodeValidationCompletion[2](passcodeValidationCompletion, secretCopy, errorCopy);
}

- (void)_userTappedCancel:(id)cancel
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2451DB000, v4, OS_LOG_TYPE_DEFAULT, "Cancel was tapped", buf, 2u);
  }

  delegate = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self delegate];
    navigationController = [(BFFPasscodeViewController *)self->_passcodeViewController navigationController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__CDPUIDeviceToDeviceEncryptionPasscodeController__userTappedCancel___block_invoke;
    v9[3] = &unk_278E2BFA8;
    v9[4] = self;
    [delegate2 localSecretValidationCanCancelWithViewController:navigationController completion:v9];
  }

  else
  {
    delegate2 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
    [(CDPUIDeviceToDeviceEncryptionPasscodeController *)self dismissFlowWithLocalSecret:0 error:delegate2];
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

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  controllerCopy = controller;
  creationCopy = creation;
  if (creationCopy)
  {
    passcodeInputView = [controllerCopy passcodeInputView];
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

    v12 = [objc_alloc(MEMORY[0x277CFD500]) initWithValidatedSecret:creationCopy secretType:v11];
    selfCopy2 = self;
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5307];
    selfCopy2 = self;
    v14 = 0;
    v15 = v12;
  }

  [(CDPUIDeviceToDeviceEncryptionPasscodeController *)selfCopy2 dismissFlowWithLocalSecret:v14 error:v15];
}

- (CDPUIDeviceToDeviceEncryptionPasscodeValidationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end