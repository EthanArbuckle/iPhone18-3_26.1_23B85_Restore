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
  headerView = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  animationView = [headerView animationView];
  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v6 initWithUrlToPackage:v8 animationView:animationView animatedStates:v5 startAtFirstState:v11];
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

  headerView2 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  animationView2 = [headerView2 animationView];
  [animationView2 defaultScale];
  v18 = v14 + v17;
  headerView3 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  animationView3 = [headerView3 animationView];
  [animationView3 setScale:v18];

  headerView4 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"ADD_GLASSES" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [headerView4 setTitle:v23];

  headerView5 = [(BKUIPeriocularAddGlassesSplashViewController *)self headerView];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"GLASSES_SPLASH_DETAIL_TEXT" value:&stru_2853BB280 table:@"Pearl-periocular"];
  [headerView5 setDetailText:v26];

  v27 = *MEMORY[0x277D85DE8];
}

@end