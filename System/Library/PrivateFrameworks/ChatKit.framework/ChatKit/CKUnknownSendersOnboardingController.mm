@interface CKUnknownSendersOnboardingController
- (id)initUnknownSendersOnboardingController;
- (void)setUpLaterButtonAction;
- (void)turnOnScreeningButtonAction;
- (void)viewDidLoad;
@end

@implementation CKUnknownSendersOnboardingController

- (id)initUnknownSendersOnboardingController
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.3.horizontal.decrease.circle.fill"];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v23 = v4;
  v6 = [v4 imageWithTintColor:labelColor];

  v22 = v6;
  [v3 setImage:v6];
  v24 = v3;
  v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
  v28 = *MEMORY[0x1E69DB650];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v29[0] = labelColor2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v21 = v9;
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:v9];
  v13 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v12, v7];
  selfCopy = self;
  v27.receiver = self;
  v27.super_class = CKUnknownSendersOnboardingController;
  LODWORD(v6) = [(CKUnknownSendersOnboardingController *)&v27 respondsToSelector:sel_initWithTitle_attributedDetailText_contentLayout_];
  v15 = CKFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  if (v6)
  {
    v26.receiver = selfCopy;
    v26.super_class = CKUnknownSendersOnboardingController;
    v17 = [(CKUnknownSendersOnboardingController *)&v26 initWithTitle:v16 attributedDetailText:v13 contentLayout:1];
  }

  else
  {
    v18 = CKFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v25.receiver = selfCopy;
    v25.super_class = CKUnknownSendersOnboardingController;
    v17 = [(CKUnknownSendersOnboardingController *)&v25 initWithTitle:v16 detailText:v19 icon:0 contentLayout:1];
  }

  return v17;
}

- (void)viewDidLoad
{
  selfCopy = self;
  CKUnknownSendersOnboardingController.viewDidLoad()();
}

- (void)turnOnScreeningButtonAction
{
  v3 = objc_allocWithZone(type metadata accessor for PriorityOnboardingController());
  selfCopy = self;
  v4 = PriorityOnboardingController.init()();
  navigationController = [(CKUnknownSendersOnboardingController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController pushViewController:v4 animated:1];
  }

  CKSetMessageFilteringEnabled(1);
}

- (void)setUpLaterButtonAction
{
  selfCopy = self;
  navigationController = [(CKUnknownSendersOnboardingController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

@end