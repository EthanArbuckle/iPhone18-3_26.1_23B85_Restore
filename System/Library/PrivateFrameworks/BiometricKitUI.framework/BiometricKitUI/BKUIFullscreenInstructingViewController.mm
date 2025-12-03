@interface BKUIFullscreenInstructingViewController
- (BKUIFullscreenInstructingViewController)init;
- (void)viewDidLoad;
@end

@implementation BKUIFullscreenInstructingViewController

- (BKUIFullscreenInstructingViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FACE_ID_FULLSCREEN_INSTRUCTING_VIEW_TITLE" value:&stru_2853BB280 table:@"Pearl"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FACE_ID_FULLSCREEN_INSTRUCTING_VIEW_DESCRIPTION" value:&stru_2853BB280 table:@"Pearl"];
  v9.receiver = self;
  v9.super_class = BKUIFullscreenInstructingViewController;
  v7 = [(BKUIFullscreenInstructingViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"arrow.up.left.and.arrow.down.right" contentLayout:2];

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BKUIFullscreenInstructingViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  view = [(BKUIFullscreenInstructingViewController *)self view];
  redColor = [MEMORY[0x277D75348] redColor];
  v5 = [view bkui_debugBorder:redColor withWidth:3];
}

@end