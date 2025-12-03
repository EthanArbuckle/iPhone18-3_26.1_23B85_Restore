@interface CSResetRestoreViewController
- (CSResetRestoreViewController)initWithStatusProvider:(id)provider;
- (id)_currentTextForResetOrRestoreState;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)viewDidLoad;
@end

@implementation CSResetRestoreViewController

- (CSResetRestoreViewController)initWithStatusProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CSResetRestoreViewController;
  v6 = [(CSResetRestoreViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusProvider, provider);
  }

  return v7;
}

- (void)viewDidLoad
{
  view = [(CSModalViewControllerBase *)self view];
  _currentTextForResetOrRestoreState = [(CSResetRestoreViewController *)self _currentTextForResetOrRestoreState];
  [view setTitleText:_currentTextForResetOrRestoreState];

  v5.receiver = self;
  v5.super_class = CSResetRestoreViewController;
  [(CSModalViewControllerBase *)&v5 viewDidLoad];
}

- (void)aggregateAppearance:(id)appearance
{
  v16.receiver = self;
  v16.super_class = CSResetRestoreViewController;
  appearanceCopy = appearance;
  [(CSModalViewControllerBase *)&v16 aggregateAppearance:appearanceCopy];
  v5 = [CSComponent homeAffordance:v16.receiver];
  v6 = [v5 priority:80];
  appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v8 = [v6 identifier:appearanceIdentifier];
  v9 = [v8 hidden:1];
  [appearanceCopy addComponent:v9];

  v10 = +[CSComponent proudLock];
  v11 = [v10 priority:80];
  v12 = [v11 hidden:1];
  [appearanceCopy addComponent:v12];

  v13 = +[CSComponent whitePoint];
  v14 = [v13 priority:80];
  v15 = [v14 hidden:1];
  [appearanceCopy addComponent:v15];
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSResetRestoreViewController;
  behaviorCopy = behavior;
  [(CSModalViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:{1048632, v4.receiver, v4.super_class}];
}

- (id)_currentTextForResetOrRestoreState
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  isRestoring = [(CSResetRestoreStatusProviding *)self->_statusProvider isRestoring];
  statusProvider = self->_statusProvider;
  if (isRestoring)
  {
    restoreState = [(CSResetRestoreStatusProviding *)statusProvider restoreState];
    v7 = 0;
    if (restoreState > 2)
    {
      if (restoreState == 3)
      {
        v8 = @"RESTORE_CANCELING";
      }

      else
      {
        if (restoreState != 4)
        {
          goto LABEL_17;
        }

        v8 = @"RESTORE_FAILED";
      }

      goto LABEL_16;
    }

    if (restoreState != 1)
    {
      if (restoreState != 2)
      {
        goto LABEL_17;
      }

      v8 = @"RESTORE_COMPLETE";
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (![(CSResetRestoreStatusProviding *)statusProvider isResetting])
  {
LABEL_10:
    v8 = @"RESTORE_IN_PROGRESS";
LABEL_16:
    v7 = [v3 localizedStringForKey:v8 value:&stru_28302FDA0 table:@"CoverSheet"];
    goto LABEL_17;
  }

  resetState = [(CSResetRestoreStatusProviding *)self->_statusProvider resetState];
  if (resetState == 2)
  {
    v8 = @"RESET_COMPLETE";
    goto LABEL_16;
  }

  if (resetState == 1)
  {
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"RESET_IN_PROGRESS"];
    v7 = [v3 localizedStringForKey:v10 value:&stru_28302FDA0 table:@"CoverSheet"];
  }

  else
  {
    v7 = 0;
  }

LABEL_17:

  return v7;
}

@end