@interface MSDCodeEntryAlertController
- (MSDCodeEntryAlertController)initWithVerificationCode:(id)code completion:(id)completion;
@end

@implementation MSDCodeEntryAlertController

- (MSDCodeEntryAlertController)initWithVerificationCode:(id)code completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  completionCopy = completion;
  v8 = [(MSDCodeEntryAlertController *)self initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(MSDCodeEntryAlertController *)v8 setCompletion:completionCopy];
    [(MSDCodeEntryAlertController *)v9 setPreferredStyle:1];
    v25 = [MSDSetupUILocalization localizedStringForKey:@"DDL_AUTHENTICATION_TITLE"];
    v10 = [MSDSetupUILocalization localizedStringForKey:@"DDL_AUTHENTICATION_DESCRIPTION"];
    v24 = [MSDSetupUILocalization localizedStringForKey:@"DDL_AUTHENTICATION_ERROR_DESCRIPTION"];
    v11 = [MSDSetupUILocalization localizedStringForKey:@"CANCEL_OPTION"];
    v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v10];
    v13 = [v10 rangeOfString:@"demounit.apple.com"];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
      v16 = v14;
      v29 = *MEMORY[0x277D741F0];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v30[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      [v12 addAttributes:v18 range:{v15, v16}];
    }

    v19 = [[MSDCodeEntryContentViewController alloc] initWithTitle:v25 message:v12 verificationCode:codeCopy verificationErrorMesssage:v24 andDelegate:v9];
    [(MSDCodeEntryAlertController *)v9 setContentViewController:v19];
    objc_initWeak(&location, v9);
    v20 = MEMORY[0x277D750F8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__MSDCodeEntryAlertController_initWithVerificationCode_completion___block_invoke;
    v26[3] = &unk_2798F1C70;
    objc_copyWeak(&v27, &location);
    v21 = [v20 actionWithTitle:v11 style:1 handler:v26];
    [(MSDCodeEntryAlertController *)v9 addAction:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

void __67__MSDCodeEntryAlertController_initWithVerificationCode_completion___block_invoke(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Verification Code Alert cancelled", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained completion];
    v5[2](v5, 0);
  }
}

@end