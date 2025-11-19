@interface DADiagnosticsNotesController
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (DADiagnosticsNotesController)init;
- (void)_cancelButtonPressed;
- (void)_disableButtons;
- (void)_enableButtons;
- (void)_okButtonPressed;
@end

@implementation DADiagnosticsNotesController

- (void)_disableButtons
{
  v3 = [(PSDetailController *)self pane];
  [v3 resignFirstResponder];

  v4 = [(PSDetailController *)self pane];
  [v4 setEnabled:0];

  v5 = [(DADiagnosticsNotesController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setEnabled:0];

  v8 = [(DADiagnosticsNotesController *)self navigationItem];
  v7 = [v8 rightBarButtonItem];
  [v7 setEnabled:0];
}

- (void)_enableButtons
{
  v3 = [(PSDetailController *)self pane];
  [v3 setEnabled:1];

  v4 = [(DADiagnosticsNotesController *)self navigationItem];
  v5 = [v4 leftBarButtonItem];
  [v5 setEnabled:1];

  v7 = [(DADiagnosticsNotesController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:1];
}

- (void)_cancelButtonPressed
{
  v2 = [(DADiagnosticsNotesController *)self parentController];
  [v2 dismiss];
}

- (void)_okButtonPressed
{
  [(DADiagnosticsNotesController *)self _disableButtons];
  v3 = [(DADiagnosticsNotesController *)self specifier];
  v4 = [v3 propertyForKey:@"kDADiagnosticSaveNotesDelegate"];

  v5 = [(PSDetailController *)self pane];
  v6 = [v5 preferenceValue];

  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DADiagnosticsNotesController__okButtonPressed__block_invoke;
  block[3] = &unk_278F21790;
  v11 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v4;
  dispatch_async(v7, block);
}

void __48__DADiagnosticsNotesController__okButtonPressed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveNotesInBackground:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DADiagnosticsNotesController__okButtonPressed__block_invoke_2;
  block[3] = &unk_278F21768;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__DADiagnosticsNotesController__okButtonPressed__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _enableButtons];
  v2 = [*(a1 + 32) parentController];
  [v2 dismiss];
}

- (DADiagnosticsNotesController)init
{
  v15.receiver = self;
  v15.super_class = DADiagnosticsNotesController;
  v2 = [(DADiagnosticsNotesController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(DADiagnosticsNotesController *)v2 navigationItem];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DIAG_NOTES_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
    [v4 setTitle:v6];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DIAGS_NOTES_PROMPT" value:&stru_285ACAC78 table:@"Diagnostic"];
    [v4 setPrompt:v8];

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v3 action:sel__cancelButtonPressed];
    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Diagnostic"];
    v13 = [v10 initWithTitle:v12 style:2 target:v3 action:sel__okButtonPressed];

    [v4 setLeftBarButtonItem:v9];
    [v4 setRightBarButtonItem:v13];
  }

  return v3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 == 1 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

@end