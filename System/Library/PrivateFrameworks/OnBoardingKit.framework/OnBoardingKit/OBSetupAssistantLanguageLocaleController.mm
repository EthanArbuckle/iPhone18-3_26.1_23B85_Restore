@interface OBSetupAssistantLanguageLocaleController
- (double)bottomPaddingHeight;
- (double)headerViewBottomToTableViewHeaderTopPadding;
- (double)headerViewBottomToTableViewTopPaddingForLocalePane;
@end

@implementation OBSetupAssistantLanguageLocaleController

- (double)headerViewBottomToTableViewHeaderTopPadding
{
  tableView = [(OBTableWelcomeController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections < 2)
  {
    v6 = +[OBDevice currentDevice];
    templateType = [v6 templateType];

    if ((templateType - 2) > 7)
    {
      v8 = 93.0;
    }

    else
    {
      v8 = dbl_1B4FFC188[templateType - 2];
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
  templateType = [v2 templateType];

  if ((templateType - 2) > 7)
  {
    return 47.0;
  }

  else
  {
    return dbl_1B4FFC1C8[templateType - 2];
  }
}

- (double)bottomPaddingHeight
{
  headerView = [(OBWelcomeController *)self headerView];
  [headerView bounds];
  v5 = v4;
  headerView2 = [(OBWelcomeController *)self headerView];
  animationView = [headerView2 animationView];
  [animationView frame];
  v10 = v5 - (v8 + v9);

  return v10;
}

@end