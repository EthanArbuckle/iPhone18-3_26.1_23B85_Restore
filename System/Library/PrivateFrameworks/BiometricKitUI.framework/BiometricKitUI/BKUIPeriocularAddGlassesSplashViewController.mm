@interface BKUIPeriocularAddGlassesSplashViewController
- (void)viewDidLoad;
@end

@implementation BKUIPeriocularAddGlassesSplashViewController

- (void)viewDidLoad
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = BKUIPeriocularAddGlassesSplashViewController;
  [(BKUIFaceIDSplashViewController *)&v28 viewDidLoad];
  if ([(BKUIFaceIDSplashViewController *)self inBuddy])
  {
    [BKUIPeriocularAddGlassesSplashViewController viewDidLoad];
  }

  v3 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v29[0] = v3;
  v4 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.5 transitionSpeed:0.8];
  v29[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  v6 = objc_alloc(MEMORY[0x277D37600]);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"FaceMaskID" withExtension:@"ca"];
  v9 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v10 = [v9 animationView];
  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v6 initWithUrlToPackage:v8 animationView:v10 animatedStates:v5 startAtFirstState:v11];
  [(BKUIFaceIDSplashViewController *)self setAnimationController:v12];

  v13 = +[BKUIDevice sharedInstance];
  LODWORD(v12) = [v13 isN69];

  if (v12)
  {
    v14 = 0.0333333333;
  }

  else
  {
    v14 = 0.0666666667;
  }

  v15 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v16 = [v15 animationView];
  [v16 defaultScale];
  v18 = v14 + v17;
  v19 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v20 = [v19 animationView];
  [v20 setScale:v18];

  v21 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"ADD_GLASSES" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [v21 setTitle:v23];

  v24 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"GLASSES_SPLASH_DETAIL_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [v24 setDetailText:v26];

  v27 = *MEMORY[0x277D85DE8];
}

@end