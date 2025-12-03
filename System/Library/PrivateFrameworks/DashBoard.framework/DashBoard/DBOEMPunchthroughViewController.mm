@interface DBOEMPunchthroughViewController
- (DBEnvironment)environment;
- (DBOEMPunchthroughViewController)initWithOEMPunchthroughEntity:(id)entity environment:(id)environment;
- (NSString)identifier;
- (void)_requestDismissal;
- (void)activateSceneWithSettings:(id)settings completion:(id)completion;
- (void)backgroundSceneWithCompletion:(id)completion;
- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion;
- (void)handleEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)wrapTransition:(id)transition;
@end

@implementation DBOEMPunchthroughViewController

- (DBOEMPunchthroughViewController)initWithOEMPunchthroughEntity:(id)entity environment:(id)environment
{
  entityCopy = entity;
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = DBOEMPunchthroughViewController;
  v9 = [(DBOEMPunchthroughViewController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entity, entity);
    identifier = [entityCopy identifier];
    v12 = [identifier copy];
    oemPunchthroughIdentifier = v10->_oemPunchthroughIdentifier;
    v10->_oemPunchthroughIdentifier = v12;

    objc_storeWeak(&v10->_environment, environmentCopy);
    environmentConfiguration = [environmentCopy environmentConfiguration];
    uisyncSession = [environmentConfiguration uisyncSession];
    uisyncSession = v10->_uisyncSession;
    v10->_uisyncSession = uisyncSession;
  }

  return v10;
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  oemPunchthroughIdentifier = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  v4 = [v2 stringWithFormat:@"stream:%@", oemPunchthroughIdentifier];

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v10 viewDidLoad];
  v3 = +[_TtC9DashBoard14DBAssetLibrary shared];
  oemPunchthroughIdentifier = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  v5 = [v3 shouldHideBackgroundWithIdentifier:oemPunchthroughIdentifier];

  if (v5)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableBackgroundColor];
  }
  v6 = ;
  view = [(DBOEMPunchthroughViewController *)self view];
  [view setBackgroundColor:v6];

  view2 = [(DBOEMPunchthroughViewController *)self view];
  layer = [view2 layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v5 viewDidAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = DBOEMPunchthroughViewController;
  [(DBOEMPunchthroughViewController *)&v5 viewDidDisappear:disappear];
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

- (void)wrapTransition:(id)transition
{
  transitionCopy = transition;
  uisyncSession = [(DBOEMPunchthroughViewController *)self uisyncSession];
  [uisyncSession metadataTransfer:&unk_285AA4B68 error:0];

  transitionCopy[2](transitionCopy);
  uisyncSession2 = [(DBOEMPunchthroughViewController *)self uisyncSession];
  [uisyncSession2 metadataTransfer:&unk_285AA4B90 error:0];
}

- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)backgroundSceneWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)activateSceneWithSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)handleEvent:(id)event
{
  type = [event type];
  if (type == 10 || type == 1)
  {

    [(DBOEMPunchthroughViewController *)self _requestDismissal];
  }
}

- (void)_requestDismissal
{
  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  oemPunchthroughIdentifier = [(DBOEMPunchthroughViewController *)self oemPunchthroughIdentifier];
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateOEMPunchthrough:oemPunchthroughIdentifier];

  environment = [(DBOEMPunchthroughViewController *)self environment];
  workspace = [environment workspace];
  [workspace requestStateChange:v6];
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end