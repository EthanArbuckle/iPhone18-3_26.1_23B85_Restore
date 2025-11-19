@interface CSResetRestoreViewController
- (CSResetRestoreViewController)initWithStatusProvider:(id)a3;
- (id)_currentTextForResetOrRestoreState;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)viewDidLoad;
@end

@implementation CSResetRestoreViewController

- (CSResetRestoreViewController)initWithStatusProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSResetRestoreViewController;
  v6 = [(CSResetRestoreViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusProvider, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3 = [(CSModalViewControllerBase *)self view];
  v4 = [(CSResetRestoreViewController *)self _currentTextForResetOrRestoreState];
  [v3 setTitleText:v4];

  v5.receiver = self;
  v5.super_class = CSResetRestoreViewController;
  [(CSModalViewControllerBase *)&v5 viewDidLoad];
}

- (void)aggregateAppearance:(id)a3
{
  v16.receiver = self;
  v16.super_class = CSResetRestoreViewController;
  v4 = a3;
  [(CSModalViewControllerBase *)&v16 aggregateAppearance:v4];
  v5 = [CSComponent homeAffordance:v16.receiver];
  v6 = [v5 priority:80];
  v7 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
  v8 = [v6 identifier:v7];
  v9 = [v8 hidden:1];
  [v4 addComponent:v9];

  v10 = +[CSComponent proudLock];
  v11 = [v10 priority:80];
  v12 = [v11 hidden:1];
  [v4 addComponent:v12];

  v13 = +[CSComponent whitePoint];
  v14 = [v13 priority:80];
  v15 = [v14 hidden:1];
  [v4 addComponent:v15];
}

- (void)aggregateBehavior:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSResetRestoreViewController;
  v3 = a3;
  [(CSModalViewControllerBase *)&v4 aggregateBehavior:v3];
  [v3 addRestrictedCapabilities:{1048632, v4.receiver, v4.super_class}];
}

- (id)_currentTextForResetOrRestoreState
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(CSResetRestoreStatusProviding *)self->_statusProvider isRestoring];
  statusProvider = self->_statusProvider;
  if (v4)
  {
    v6 = [(CSResetRestoreStatusProviding *)statusProvider restoreState];
    v7 = 0;
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v8 = @"RESTORE_CANCELING";
      }

      else
      {
        if (v6 != 4)
        {
          goto LABEL_17;
        }

        v8 = @"RESTORE_FAILED";
      }

      goto LABEL_16;
    }

    if (v6 != 1)
    {
      if (v6 != 2)
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

  v9 = [(CSResetRestoreStatusProviding *)self->_statusProvider resetState];
  if (v9 == 2)
  {
    v8 = @"RESET_COMPLETE";
    goto LABEL_16;
  }

  if (v9 == 1)
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