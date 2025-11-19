@interface NPHBSCellularFauxCardViewController
- (NPHBSCellularFauxCardViewController)init;
- (UIButton)bypassFauxCardButton;
- (UIButton)enterFauxCardDataManuallyButton;
- (UILabel)activationCodeLabel;
- (UILabel)fauxDataLabel;
- (UIView)cutoutView;
- (UIView)fauxScanView;
- (void)_setFauxCardData:(id)a3;
- (void)addNewRemotePlanWithCardData:(id)a3 confirmationCode:(id)a4;
- (void)bypassFauxCard:(id)a3;
- (void)cancelAction:(id)a3;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureSession:(id)a3 isRunning:(BOOL)a4;
- (void)cellularConfirmationCodeViewController:(id)a3 confirmedWithCode:(id)a4;
- (void)enterFauxCardDataManually:(id)a3;
- (void)presentConfirmationCodeRequest;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NPHBSCellularFauxCardViewController

- (NPHBSCellularFauxCardViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = NPHBSCellularFauxCardViewController;
  v4 = [(NPHBSCellularFauxCardViewController *)&v6 initWithNibName:@"NPHBSCellularFauxCard" bundle:v3];

  v4->_userConsentResponse = 0;
  return v4;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = NPHBSCellularFauxCardViewController;
  [(NPHBSCellularFauxCardViewController *)&v30 viewDidLoad];
  WeakRetained = objc_loadWeakRetained(&self->_bypassFauxCardButton);
  v4 = BPSBridgeTintColor();
  [WeakRetained setTintColor:v4];

  v5 = objc_loadWeakRetained(&self->_enterFauxCardDataManuallyButton);
  v6 = BPSBridgeTintColor();
  [v5 setTintColor:v6];

  v7 = self->_codelessActivationBlock == 0;
  v8 = objc_loadWeakRetained(&self->_bypassFauxCardButton);
  [v8 setHidden:v7];

  if (!self->_scannerView)
  {
    v9 = [NPHCellularBridgeBarcodeScannerView alloc];
    v10 = [(NPHCellularBridgeBarcodeScannerView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    scannerView = self->_scannerView;
    self->_scannerView = v10;

    [(NPHCellularBridgeBarcodeScannerView *)self->_scannerView setDelegate:self];
    [(NPHCellularBridgeBarcodeScannerView *)self->_scannerView setupCameraSession];
    v12 = objc_loadWeakRetained(&self->_fauxScanView);
    [v12 addSubview:self->_scannerView];

    v13 = [MEMORY[0x277CD9F90] layer];
    fillWithHoleLayer = self->_fillWithHoleLayer;
    self->_fillWithHoleLayer = v13;

    [(CAShapeLayer *)self->_fillWithHoleLayer setFillRule:*MEMORY[0x277CDA248]];
    v15 = [MEMORY[0x277D75348] blackColor];
    v16 = [v15 colorWithAlphaComponent:0.5];
    -[CAShapeLayer setFillColor:](self->_fillWithHoleLayer, "setFillColor:", [v16 CGColor]);

    v17 = *MEMORY[0x277CDA6E0];
    [(CAShapeLayer *)self->_fillWithHoleLayer setContentsGravity:*MEMORY[0x277CDA6E0]];
    v18 = objc_loadWeakRetained(&self->_cutoutView);
    v19 = [v18 layer];
    [v19 addSublayer:self->_fillWithHoleLayer];

    v20 = [MEMORY[0x277CD9F90] layer];
    holeOutlineLayer = self->_holeOutlineLayer;
    self->_holeOutlineLayer = v20;

    v22 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_holeOutlineLayer, "setFillColor:", [v22 CGColor]);

    v23 = [MEMORY[0x277D75348] whiteColor];
    -[CAShapeLayer setStrokeColor:](self->_holeOutlineLayer, "setStrokeColor:", [v23 CGColor]);

    [(CAShapeLayer *)self->_holeOutlineLayer setContentsGravity:v17];
    v24 = objc_loadWeakRetained(&self->_cutoutView);
    v25 = [v24 layer];
    [v25 addSublayer:self->_holeOutlineLayer];

    v26 = objc_loadWeakRetained(&self->_cutoutView);
    [v26 setAlpha:0.0];
  }

  v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
  v28 = [(NPHBSCellularFauxCardViewController *)self navigationItem];
  [v28 setLeftBarButtonItem:v27];

  v29 = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [v29 setDelegate:self];
}

- (void)viewDidLayoutSubviews
{
  scannerView = self->_scannerView;
  WeakRetained = objc_loadWeakRetained(&self->_fauxScanView);
  [WeakRetained bounds];
  [(NPHCellularBridgeBarcodeScannerView *)scannerView setFrame:?];

  v5 = objc_loadWeakRetained(&self->_cutoutView);
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CAShapeLayer *)self->_fillWithHoleLayer setFrame:v7, v9, v11, v13];
  if (v11 * 0.7 >= v13 * 0.7)
  {
    v14 = v13 * 0.7;
  }

  else
  {
    v14 = v11 * 0.7;
  }

  v15 = (v11 - v14) * 0.5;
  v16 = MEMORY[0x277D75208];
  v17 = objc_loadWeakRetained(&self->_cutoutView);
  [v17 bounds];
  v21 = [v16 bezierPathWithRect:?];

  v18 = [MEMORY[0x277D75208] bezierPathWithRect:{v15, (v13 - v14) * 0.5, v14, v14}];
  [v21 appendPath:v18];
  [v21 setUsesEvenOddFillRule:1];
  v19 = v21;
  -[CAShapeLayer setPath:](self->_fillWithHoleLayer, "setPath:", [v21 CGPath]);
  v20 = [MEMORY[0x277D75208] bezierPathWithRect:{v15, (v13 - v14) * 0.5, v14, v14}];
  -[CAShapeLayer setPath:](self->_holeOutlineLayer, "setPath:", [v20 CGPath]);
}

- (void)bypassFauxCard:(id)a3
{
  v4 = [(NPHBSCellularFauxCardViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(NPHBSCellularFauxCardViewController *)self codelessActivationBlock];
  v5[2]();
}

- (void)cancelAction:(id)a3
{
  v4 = [(NPHBSCellularFauxCardViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  v5 = [(NPHBSCellularFauxCardViewController *)self completion];

  if (v5)
  {
    v6 = [(NPHBSCellularFauxCardViewController *)self completion];
    v6[2](v6, 0);
  }
}

- (void)enterFauxCardDataManually:(id)a3
{
  v7 = objc_alloc_init(NPHBSCellularFauxCardInfoViewController);
  v4 = [(NPHBSCellularFauxCardViewController *)self completion];
  [(NPHBSCellularFauxCardInfoViewController *)v7 setCompletion:v4];

  v5 = [(NPHBSCellularFauxCardViewController *)self subscriptionContext];
  [(NPHBSCellularFauxCardInfoViewController *)v7 setSubscriptionContext:v5];

  v6 = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (void)captureSession:(id)a3 isRunning:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[NPHBSCellularFauxCardViewController captureSession:isRunning:]";
    v10 = 2112;
    v11 = v5;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s captureSession: %@ isRunning: %d", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHBSCellularFauxCardViewController captureOutput:didOutputMetadataObjects:fromConnection:]";
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (!self->_nextTimeToAcceptScan || ([MEMORY[0x277CBEAA8] date], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:", self->_nextTimeToAcceptScan), v10, v11 != -1))
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    nextTimeToAcceptScan = self->_nextTimeToAcceptScan;
    self->_nextTimeToAcceptScan = v12;

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke;
    block[3] = &unk_278DAC9F0;
    v16 = v8;
    objc_copyWeak(&v18, buf);
    v17 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v18);

    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] firstObject];
  v3 = [v2 stringValue];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "########### scannedCode %@", buf, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained bypassFauxCardButton];
    [v6 setEnabled:0];

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 enterFauxCardDataManuallyButton];
    [v8 setEnabled:0];

    [a1[5] _setFauxCardData:v3];
    v9 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_18;
    v12[3] = &unk_278DAC9C8;
    objc_copyWeak(&v13, a1 + 6);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_2;
    v11[3] = &unk_278DAC7D8;
    v11[4] = a1[5];
    [v9 animateWithDuration:v12 animations:v11 completion:0.25];
    objc_destroyWeak(&v13);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cutoutView];
  [v1 setAlpha:1.0];
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    AudioServicesPlaySystemSound(0xFFFu);
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_3;
    block[3] = &unk_278DAC7B0;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _getFauxCardData];
  [v1 addNewRemotePlanWithCardData:v2 confirmationCode:0];
}

- (void)addNewRemotePlanWithCardData:(id)a3 confirmationCode:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]";
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [MEMORY[0x277CF96D8] sharedManager];
  v10 = IsCurrentDevicePairing();
  v11 = +[NPHCellularBridgeUIManager sharedInstance];
  v12 = [v11 _currentDeviceCSN];
  subscriptionContext = self->_subscriptionContext;
  userConsentResponse = self->_userConsentResponse;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke;
  v16[3] = &unk_278DACA18;
  objc_copyWeak(&v17, buf);
  v16[4] = self;
  [v9 addNewRemotePlanWithCardData:v6 confirmationCode:v7 isPairing:v10 withCSN:v12 withContext:subscriptionContext userConsent:userConsentResponse completion:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]_block_invoke";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke_23;
  v7[3] = &unk_278DAC9F0;
  v5 = v3;
  v8 = v5;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  nph_ensure_on_main_queue(v7);
  objc_destroyWeak(&v10);

  v6 = *MEMORY[0x277D85DE8];
}

void __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke_23(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained subscriptionContext];
  v6 = [v2 NPHCellularSanitizedError:v3 forSubscriptionContext:v5];

  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]_block_invoke";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s sanitizedError:%@", &v20, 0x16u);
  }

  if (!v6)
  {
    v10 = [*(a1 + 40) navigationController];
    [v10 dismissViewControllerAnimated:1 completion:0];

    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 completion];

    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 completion];
    v14[2](v14, 0);
LABEL_11:

    goto LABEL_12;
  }

  v8 = [v6 domain];
  if (![v8 isEqualToString:*MEMORY[0x277CF9680]])
  {

    goto LABEL_10;
  }

  v9 = [v6 code];

  if (v9 != 19)
  {
LABEL_10:
    [NPHCellularBridgeUIManager presentCellularError:v6 onViewController:*(a1 + 40)];
    v15 = objc_loadWeakRetained((a1 + 48));
    v16 = [v15 cutoutView];
    [v16 setAlpha:0.0];

    v17 = objc_loadWeakRetained((a1 + 48));
    v18 = [v17 bypassFauxCardButton];
    [v18 setEnabled:1];

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 enterFauxCardDataManuallyButton];
    [v14 setEnabled:1];
    goto LABEL_11;
  }

  [*(a1 + 40) presentConfirmationCodeRequest];
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)presentConfirmationCodeRequest
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NPHBSCellularFauxCardViewController presentConfirmationCodeRequest]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = objc_alloc_init(NPHBSCellularConfirmationCodeViewController);
  [(NPHBSCellularConfirmationCodeViewController *)v4 setDelegate:self];
  v5 = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [v5 pushViewController:v4 animated:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cellularConfirmationCodeViewController:(id)a3 confirmedWithCode:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NPHBSCellularFauxCardViewController cellularConfirmationCodeViewController:confirmedWithCode:]";
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v7 = [(NPHBSCellularFauxCardViewController *)self _getFauxCardData];
  [(NPHBSCellularFauxCardViewController *)self addNewRemotePlanWithCardData:v7 confirmationCode:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setFauxCardData:(id)a3
{
  v4 = [a3 copy];
  fauxCardData = self->_fauxCardData;
  self->_fauxCardData = v4;

  MEMORY[0x2821F96F8]();
}

- (UIView)fauxScanView
{
  WeakRetained = objc_loadWeakRetained(&self->_fauxScanView);

  return WeakRetained;
}

- (UIView)cutoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_cutoutView);

  return WeakRetained;
}

- (UIButton)bypassFauxCardButton
{
  WeakRetained = objc_loadWeakRetained(&self->_bypassFauxCardButton);

  return WeakRetained;
}

- (UIButton)enterFauxCardDataManuallyButton
{
  WeakRetained = objc_loadWeakRetained(&self->_enterFauxCardDataManuallyButton);

  return WeakRetained;
}

- (UILabel)fauxDataLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_fauxDataLabel);

  return WeakRetained;
}

- (UILabel)activationCodeLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_activationCodeLabel);

  return WeakRetained;
}

@end