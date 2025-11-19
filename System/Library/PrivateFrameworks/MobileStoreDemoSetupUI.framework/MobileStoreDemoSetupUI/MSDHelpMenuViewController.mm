@interface MSDHelpMenuViewController
- (MSDHelpMenuViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MSDHelpMenuViewController

- (MSDHelpMenuViewController)init
{
  v7.receiver = self;
  v7.super_class = MSDHelpMenuViewController;
  v2 = [(MSDHelpMenuViewController *)&v7 initWithStyle:0];
  if (v2)
  {
    v3 = [MSDSetupUILocalization localizedStringForKey:@"HELP_HEADER"];
    [(MSDHelpMenuViewController *)v2 setTitle:v3];

    v4 = [(MSDHelpMenuViewController *)v2 tableView];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"HelpMenuCell"];

    v5 = objc_opt_new();
    [(MSDHelpMenuViewController *)v2 setHelpMenuUserTapped:v5];
  }

  return v2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 row] > 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HelpMenuCell"];
  v6 = [v5 defaultContentConfiguration];
  if (![v4 row])
  {
    v7 = @"CANNOT_FIND_STORE_OPTION";
    goto LABEL_9;
  }

  if ([v4 row] == 1)
  {
    v7 = @"LEARN_MORE_OPTION";
LABEL_9:
    v8 = [MSDSetupUILocalization localizedStringForKey:v7];
    [v6 setText:v8];

    goto LABEL_10;
  }

  if ([v4 row] == 2)
  {
    v7 = @"SUPPORT_OPTION";
    goto LABEL_9;
  }

LABEL_10:
  v9 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  v10 = [v6 textProperties];
  [v10 setFont:v9];

  [v5 setContentConfiguration:v6];
  v11 = [MEMORY[0x277D75348] whiteColor];
  [v5 setBackgroundColor:v11];

  v12 = [v5 contentView];
  [v12 setLayoutMargins:{20.0, 0.0, 20.0, 0.0}];

LABEL_11:

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [v14 row] <= 2;
  v6 = v14;
  if (v5)
  {
    if ([v14 row])
    {
      if ([v14 row] == 1)
      {
        v7 = @"Learn more about device assignment";
        v8 = off_2798F1830;
      }

      else
      {
        if ([v14 row] != 2)
        {
LABEL_11:
          v12 = +[MSDSetupUIController sharedInstance];
          v13 = [(MSDHelpMenuViewController *)self helpMenuUserTapped];
          [v12 setHelpMenuRowSelection:v13];

          v6 = v14;
          goto LABEL_12;
        }

        v7 = @"Get help from a support agent";
        v8 = off_2798F1898;
      }
    }

    else
    {
      v7 = @"I Can't find my store or company";
      v8 = off_2798F1808;
    }

    v9 = objc_alloc_init(*v8);
    v10 = [(MSDHelpMenuViewController *)self helpMenuUserTapped];
    [v10 addObject:v7];

    if (v9)
    {
      v11 = +[MSDSetupUIController sharedInstance];
      [v11 pushViewController:v9 andRemoveTopmostView:0];
    }

    goto LABEL_11;
  }

LABEL_12:
}

@end