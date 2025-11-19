@interface NSURL
@end

@implementation NSURL

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 key_window];
  v20 = [v3 rootViewController];

  v4 = NUBundle();
  v5 = [v4 localizedStringForKey:@"“%@” wants to open “%@”" value:&stru_286E03B58 table:0];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v9 = [*(a1 + 32) localizedName];
  v10 = [v6 stringWithFormat:v5, v8, v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:0 preferredStyle:1];
  objc_initWeak(&location, v11);
  v12 = MEMORY[0x277D750F8];
  v13 = NUBundle();
  v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_286E03B58 table:0];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_2;
  v23[3] = &unk_2799A3F80;
  objc_copyWeak(&v24, &location);
  v15 = [v12 actionWithTitle:v14 style:0 handler:v23];

  v16 = MEMORY[0x277D750F8];
  v17 = NUBundle();
  v18 = [v17 localizedStringForKey:@"Open" value:&stru_286E03B58 table:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_3;
  v21[3] = &unk_2799A3FA8;
  objc_copyWeak(&v22, &location);
  v21[4] = *(a1 + 40);
  v19 = [v16 actionWithTitle:v18 style:0 handler:v21];

  [v11 addAction:v19];
  [v11 addAction:v15];
  [v11 setPreferredAction:v15];
  [v20 presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];
}

@end