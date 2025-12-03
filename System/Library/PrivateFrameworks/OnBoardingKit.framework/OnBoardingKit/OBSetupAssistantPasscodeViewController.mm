@interface OBSetupAssistantPasscodeViewController
- (BOOL)shouldAnimateEntireView;
- (void)animateDetailText:(id)text animationType:(unint64_t)type heightDifference:(id)difference;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantPasscodeViewController

- (void)loadView
{
  [(OBWelcomeController *)self setIncludePaddingAboveContentView:0];
  v3.receiver = self;
  v3.super_class = OBSetupAssistantPasscodeViewController;
  [(OBWelcomeController *)&v3 loadView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBSetupAssistantPasscodeViewController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  [(OBWelcomeController *)self setShouldAdjustButtonTrayForKeyboard:1];
}

- (void)animateDetailText:(id)text animationType:(unint64_t)type heightDifference:(id)difference
{
  v41 = *MEMORY[0x1E69E9840];
  differenceCopy = difference;
  textCopy = text;
  headerView = [(OBWelcomeController *)self headerView];
  [headerView setDetailText:textCopy];

  headerView2 = [(OBWelcomeController *)self headerView];
  detailLabel = [headerView2 detailLabel];
  [detailLabel frame];
  v14 = v13;

  headerView3 = [(OBWelcomeController *)self headerView];
  detailLabel2 = [headerView3 detailLabel];
  headerView4 = [(OBWelcomeController *)self headerView];
  [headerView4 bounds];
  v19 = v18;
  LODWORD(v18) = 1112014848;
  LODWORD(v20) = 1132068864;
  [detailLabel2 systemLayoutSizeFittingSize:v19 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v18, v20}];
  v22 = v21;

  if (differenceCopy && ![(OBSetupAssistantPasscodeViewController *)self shouldAnimateEntireView])
  {
    differenceCopy[2](differenceCopy, v14 - v22);
  }

  v23 = @"fade";
  if (!type)
  {
    v23 = @"fromLeft";
  }

  if (type == 1)
  {
    v24 = @"fromRight";
  }

  else
  {
    v24 = v23;
  }

  headerView5 = [(OBWelcomeController *)self headerView];
  detailLabel3 = [headerView5 detailLabel];
  if (detailLabel3)
  {
    v27 = detailLabel3;
    contentView = [(OBWelcomeController *)self contentView];

    if (contentView)
    {
      headerView6 = [(OBWelcomeController *)self headerView];
      detailLabel4 = [headerView6 detailLabel];
      contentView2 = [(OBWelcomeController *)self contentView];
      v36[1] = contentView2;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];

      [(OBWelcomeController *)self _animatePushTransitionForViews:v32 transitionSubtype:v24];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v32 = _OBLoggingFacility();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    headerView7 = [(OBWelcomeController *)self headerView];
    contentView3 = [(OBWelcomeController *)self contentView];
    *buf = 138412546;
    v38 = headerView7;
    v39 = 2112;
    v40 = contentView3;
    _os_log_impl(&dword_1B4FB6000, v32, OS_LOG_TYPE_DEFAULT, "Animating DetailText failed as prerequisite headerView and contentView was not fulfilled headerView:%@, contentView:%@", buf, 0x16u);
  }

LABEL_15:

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAnimateEntireView
{
  contentView = [(OBWelcomeController *)self contentView];
  [contentView frame];
  MaxY = CGRectGetMaxY(v11);

  v5 = MaxY + 22.0;
  view = [(OBSetupAssistantPasscodeViewController *)self view];
  [view frame];
  v7 = CGRectGetMaxY(v12);
  [(OBWelcomeController *)self keyboardFrame];
  v9 = v7 - v8;

  return v5 > v9;
}

@end