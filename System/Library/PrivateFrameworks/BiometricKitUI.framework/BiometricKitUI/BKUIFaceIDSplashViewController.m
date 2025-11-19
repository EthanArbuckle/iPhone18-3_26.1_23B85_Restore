@interface BKUIFaceIDSplashViewController
- (id)initInBuddy:(BOOL)a3 bkDevice:(id)a4 withEndEnrollmentActionPrimary:(id)a5 enrollmentActionSecondary:(id)a6;
- (void)_didSelectEnroll;
- (void)_didSelectSkip;
- (void)viewDidLoad;
@end

@implementation BKUIFaceIDSplashViewController

- (id)initInBuddy:(BOOL)a3 bkDevice:(id)a4 withEndEnrollmentActionPrimary:(id)a5 enrollmentActionSecondary:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"FACE_ID" value:&stru_2853BB280 table:@"Pearl"];
  v24.receiver = self;
  v24.super_class = BKUIFaceIDSplashViewController;
  v16 = [(BKUIFaceIDSplashViewController *)&v24 initWithTitle:v15 detailText:&stru_2853BB280 icon:0 contentLayout:3];

  if (v16)
  {
    v16->_inBuddy = a3;
    v17 = _Block_copy(v12);
    endEnrollActionPrimary = v16->_endEnrollActionPrimary;
    v16->_endEnrollActionPrimary = v17;

    v19 = _Block_copy(v13);
    endEnrollActionSecondary = v16->_endEnrollActionSecondary;
    v16->_endEnrollActionSecondary = v19;

    objc_storeStrong(&v16->_device, a4);
    v21 = [(BKUIFaceIDSplashViewController *)v16 headerView];
    v22 = [MEMORY[0x277D75348] systemBlueColor];
    [v21 setTintColor:v22];
  }

  return v16;
}

- (void)viewDidLoad
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = BKUIFaceIDSplashViewController;
  [(OBBaseWelcomeController *)&v35 viewDidLoad];
  v3 = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [v3 setPrivacyLinkForBundles:&unk_2853CC850];

  v4 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v36[0] = v4;
  v5 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.5 transitionSpeed:0.8];
  v36[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];

  v7 = objc_alloc(MEMORY[0x277D37600]);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:@"FaceID" withExtension:@"ca"];
  v10 = [(BKUIFaceIDSplashViewController *)self headerView];
  v11 = [v10 animationView];
  v12 = [v6 objectAtIndexedSubscript:0];
  v13 = [v7 initWithUrlToPackage:v9 animationView:v11 animatedStates:v6 startAtFirstState:v12];
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

  v16 = [(BKUIFaceIDSplashViewController *)self headerView];
  v17 = [v16 animationView];
  [v17 defaultScale];
  v19 = v15 + v18;
  v20 = [(BKUIFaceIDSplashViewController *)self headerView];
  v21 = [v20 animationView];
  [v21 setScale:v19];

  v22 = [MEMORY[0x277D37618] boldButton];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CONTINUE" value:&stru_2853BB280 table:@"Pearl"];
  [v22 setTitle:v24 forState:0];

  [v22 addTarget:self action:sel__didSelectEnroll forControlEvents:64];
  v25 = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [v25 addButton:v22];

  if (![(BKUIFaceIDSplashViewController *)self inBuddy])
  {
    v26 = [(BKUIFaceIDSplashViewController *)self headerView];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FACE_ID_DETAIL"];
    v29 = [v27 localizedStringForKey:v28 value:&stru_2853BB280 table:@"Pearl"];
    [v26 setDetailText:v29];
  }

  v30 = [MEMORY[0x277D37650] linkButton];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"SET_UP_LATER" value:&stru_2853BB280 table:@"Pearl"];
  [v30 setTitle:v32 forState:0];

  [v30 addTarget:self action:sel__didSelectSkip forControlEvents:64];
  v33 = [(BKUIFaceIDSplashViewController *)self buttonTray];
  [v33 addButton:v30];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_didSelectEnroll
{
  v3 = [(BKUIFaceIDSplashViewController *)self endEnrollActionPrimary];

  if (v3)
  {
    v4 = [(BKUIFaceIDSplashViewController *)self endEnrollActionPrimary];
    v4[2]();
  }
}

- (void)_didSelectSkip
{
  v3 = [(BKUIFaceIDSplashViewController *)self endEnrollActionSecondary];

  if (v3)
  {
    v4 = [(BKUIFaceIDSplashViewController *)self endEnrollActionSecondary];
    v4[2]();
  }
}

@end