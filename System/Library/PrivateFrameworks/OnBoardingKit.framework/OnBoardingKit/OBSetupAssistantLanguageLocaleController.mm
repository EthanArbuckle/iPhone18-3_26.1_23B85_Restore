@interface OBSetupAssistantLanguageLocaleController
- (double)bottomPaddingHeight;
- (double)headerViewBottomToTableViewHeaderTopPadding;
- (double)headerViewBottomToTableViewTopPaddingForLocalePane;
@end

@implementation OBSetupAssistantLanguageLocaleController

- (double)headerViewBottomToTableViewHeaderTopPadding
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 numberOfSections];

  if (v4 < 2)
  {
    v6 = +[OBDevice currentDevice];
    v7 = [v6 templateType];

    if ((v7 - 2) > 7)
    {
      v8 = 93.0;
    }

    else
    {
      v8 = dbl_1B4FFC188[v7 - 2];
    }

    [(OBSetupAssistantLanguageLocaleController *)self bottomPaddingHeight];
    return v8 - v9;
  }

  else
  {

    [(OBSetupAssistantLanguageLocaleController *)self headerViewBottomToTableViewTopPaddingForLocalePane];
  }

  return result;
}

- (double)headerViewBottomToTableViewTopPaddingForLocalePane
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 templateType];

  if ((v3 - 2) > 7)
  {
    return 47.0;
  }

  else
  {
    return dbl_1B4FFC1C8[v3 - 2];
  }
}

- (double)bottomPaddingHeight
{
  v3 = [(OBWelcomeController *)self headerView];
  [v3 bounds];
  v5 = v4;
  v6 = [(OBWelcomeController *)self headerView];
  v7 = [v6 animationView];
  [v7 frame];
  v10 = v5 - (v8 + v9);

  return v10;
}

@end