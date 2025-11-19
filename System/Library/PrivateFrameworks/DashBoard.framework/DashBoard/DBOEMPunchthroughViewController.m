@interface DBOEMPunchthroughViewController
- (DBEnvironment)environment;
- (DBOEMPunchthroughViewController)initWithOEMPunchthroughEntity:(id)a3 environment:(id)a4;
- (NSString)identifier;
- (void)_requestDismissal;
- (void)activateSceneWithSettings:(id)a3 completion:(id)a4;
- (void)backgroundSceneWithCompletion:(id)a3;
- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4;
- (void)handleEvent:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)wrapTransition:(id)a3;
@end

@implementation DBOEMPunchthroughViewController

- (DBOEMPunchthroughViewController)initWithOEMPunchthroughEntity:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = DBOEMPunchthroughViewController;
  v9 = [(DBOEMPunchthroughViewController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entity, a3);
    v11 = [v7 identifier];
    v12 = [v11 copy];
    oemPunchthroughIdentifier = v10->_oemPunchthroughIdentifier;
    v10->_oemPunchthroughIdentifier = v12;

    objc_storeWeak(&v10->_environment, v8);
    v14 = [v8 environmentConfiguration];
    v15 = [v14 uisyncSession];
    uisyncSession = v10->_uisyncSession;
    v10->_uisyncSession = v15;
  }

  return v10;
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  v4 = [v2 stringWithFormat:@"stream:%@", v3];

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v10 viewDidLoad];
  v3 = +[_TtC9DashBoard14DBAssetLibrary shared];
  v4 = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  v5 = [v3 shouldHideBackgroundWithIdentifier:v4];

  if (v5)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableBackgroundColor];
  }
  v6 = ;
  v7 = [(DBOEMPunchthroughViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [(DBOEMPunchthroughViewController *)self view];
  v9 = [v8 layer];
  [v9 setHitTestsAsOpaque:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v5 viewDidAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__DBOEMPunchthroughViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [(DBOEMPunchthroughViewController *)self wrapTransition:v4];
}

void __49__DBOEMPunchthroughViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uisyncSession];
  v11[0] = @"presentStream";
  v3 = [*(a1 + 32) oemPunchthroughIdentifier];
  v11[1] = @"current_ntp_time";
  v12[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  mach_absolute_time();
  v5 = [v4 numberWithUnsignedLongLong:UpTicksToNTP()];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 stringWithFormat:@"Presenting %@", v8];
  [v2 sendTransitionStart:v6 description:v9 error:0];

  v10 = [*(a1 + 32) uisyncSession];
  [v10 sendTransitionEnd:MEMORY[0x277CBEC10] error:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v5 viewDidDisappear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__DBOEMPunchthroughViewController_viewDidDisappear___block_invoke;
  v4[3] = &unk_278F01580;
  v4[4] = self;
  [(DBOEMPunchthroughViewController *)self wrapTransition:v4];
}

void __52__DBOEMPunchthroughViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uisyncSession];
  v11[0] = @"dismissStream";
  v3 = [*(a1 + 32) oemPunchthroughIdentifier];
  v11[1] = @"current_ntp_time";
  v12[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  mach_absolute_time();
  v5 = [v4 numberWithUnsignedLongLong:UpTicksToNTP()];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 stringWithFormat:@"Dismissing %@", v8];
  [v2 sendTransitionStart:v6 description:v9 error:0];

  v10 = [*(a1 + 32) uisyncSession];
  [v10 sendTransitionEnd:MEMORY[0x277CBEC10] error:0];
}

- (void)wrapTransition:(id)a3
{
  v4 = a3;
  v5 = [(DBOEMPunchthroughViewController *)self uisyncSession];
  [v5 metadataTransfer:&unk_285AA4B68 error:0];

  v4[2](v4);
  v6 = [(DBOEMPunchthroughViewController *)self uisyncSession];
  [v6 metadataTransfer:&unk_285AA4B90 error:0];
}

- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)backgroundSceneWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)activateSceneWithSettings:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)handleEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 == 10 || v4 == 1)
  {

    [(DBOEMPunchthroughViewController *)self _requestDismissal];
  }
}

- (void)_requestDismissal
{
  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  v3 = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateOEMPunchthrough:v3];

  v4 = [(DBOEMPunchthroughViewController *)self environment];
  v5 = [v4 workspace];
  [v5 requestStateChange:v6];
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end