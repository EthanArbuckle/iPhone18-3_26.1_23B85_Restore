@interface BKUIFaceIDSplashViewController
- (id)initInBuddy:(BOOL)buddy bkDevice:(id)device withEndEnrollmentActionPrimary:(id)primary enrollmentActionSecondary:(id)secondary;
- (void)_didSelectEnroll;
- (void)_didSelectSkip;
- (void)viewDidLoad;
@end

@implementation BKUIFaceIDSplashViewController

- (id)initInBuddy:(BOOL)buddy bkDevice:(id)device withEndEnrollmentActionPrimary:(id)primary enrollmentActionSecondary:(id)secondary
{
  deviceCopy = device;
  primaryCopy = primary;
  secondaryCopy = secondary;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FACE_ID" value:&stru_2853BB280 table:@"Pearl"];
  v24.receiver = self;
  v24.super_class = BKUIFaceIDSplashViewController;
  v16 = [(BKUIFaceIDSplashViewController *)&v24 initWithTitle:v15 detailText:&stru_2853BB280 icon:0 contentLayout:3];

  if (v16)
  {
    v16->_inBuddy = buddy;
    v17 = _Block_copy(primaryCopy);
    endEnrollActionPrimary = v16->_endEnrollActionPrimary;
    v16->_endEnrollActionPrimary = v17;

    v19 = _Block_copy(secondaryCopy);
    endEnrollActionSecondary = v16->_endEnrollActionSecondary;
    v16->_endEnrollActionSecondary = v19;

    objc_storeStrong(&v16->_device, device);
    headerView = [(BKUIFaceIDSplashViewController *)v16 headerView];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [headerView setTintColor:systemBlueColor];
  }

  return v16;
}

- (void)viewDidLoad
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = BKUIFaceIDSplashViewController;
  [(OBBaseWelcomeController *)&v35 viewDidLoad];
  buttonTray = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [buttonTray setPrivacyLinkForBundles:&unk_2853CC850];

  v4 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v36[0] = v4;
  v5 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.5 transitionSpeed:0.8];
  v36[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

  v7 = objc_alloc(MEMORY[0x277D37600]);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:@"FaceID" withExtension:@"ca"];
  headerView = [(BKUIFaceIDSplashViewController *)self headerView];
  animationView = [headerView animationView];
  v12 = [v6 objectAtIndexedSubscript:0];
  v13 = [v7 initWithUrlToPackage:v9 animationView:animationView animatedStates:v6 startAtFirstState:v12];
  [(BKUIFaceIDSplashViewController *)self setAnimationController:v13];

  v14 = +[BKUIDevice sharedInstance];
  LODWORD(v13) = [v14 isN69];

  if (v13)
  {
    v15 = 0.0333333333;
  }

  else
  {
    v15 = 0.0666666667;
  }

  headerView2 = [(BKUIFaceIDSplashViewController *)self headerView];
  animationView2 = [headerView2 animationView];
  [animationView2 defaultScale];
  v19 = v15 + v18;
  headerView3 = [(BKUIFaceIDSplashViewController *)self headerView];
  animationView3 = [headerView3 animationView];
  [animationView3 setScale:v19];

  boldButton = [MEMORY[0x277D37618] boldButton];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"Pearl"];
  [boldButton setTitle:v24 forState:0];

  [boldButton addTarget:self action:sel__didSelectEnroll forControlEvents:64];
  buttonTray2 = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [buttonTray2 addButton:boldButton];

  if (![(BKUIFaceIDSplashViewController *)self inBuddy])
  {
    headerView4 = [(BKUIFaceIDSplashViewController *)self headerView];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FACE_ID_DETAIL"];
    v29 = [v27 localizedStringForKey:v28 value:&stru_2853BB280 table:@"Pearl"];
    [headerView4 setDetailText:v29];
  }

  linkButton = [MEMORY[0x277D37650] linkButton];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"SET_UP_LATER" value:&stru_2853BB280 table:@"Pearl"];
  [linkButton setTitle:v32 forState:0];

  [linkButton addTarget:self action:sel__didSelectSkip forControlEvents:64];
  buttonTray3 = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [buttonTray3 addButton:linkButton];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_didSelectEnroll
{
  endEnrollActionPrimary = [(BKUIFaceIDSplashViewController *)self endEnrollActionPrimary];

  if (endEnrollActionPrimary)
  {
    endEnrollActionPrimary2 = [(BKUIFaceIDSplashViewController *)self endEnrollActionPrimary];
    endEnrollActionPrimary2[2]();
  }
}

- (void)_didSelectSkip
{
  endEnrollActionSecondary = [(BKUIFaceIDSplashViewController *)self endEnrollActionSecondary];

  if (endEnrollActionSecondary)
  {
    endEnrollActionSecondary2 = [(BKUIFaceIDSplashViewController *)self endEnrollActionSecondary];
    endEnrollActionSecondary2[2]();
  }
}

@end