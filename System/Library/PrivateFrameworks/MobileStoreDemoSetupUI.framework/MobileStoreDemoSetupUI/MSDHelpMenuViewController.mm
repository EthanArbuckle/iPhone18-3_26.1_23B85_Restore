@interface MSDHelpMenuViewController
- (MSDHelpMenuViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

    tableView = [(MSDHelpMenuViewController *)v2 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"HelpMenuCell"];

    v5 = objc_opt_new();
    [(MSDHelpMenuViewController *)v2 setHelpMenuUserTapped:v5];
  }

  return v2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] > 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"HelpMenuCell"];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  if (![pathCopy row])
  {
    v7 = @"CANNOT_FIND_STORE_OPTION";
    goto LABEL_9;
  }

  if ([pathCopy row] == 1)
  {
    v7 = @"LEARN_MORE_OPTION";
LABEL_9:
    v8 = [MSDSetupUILocalization localizedStringForKey:v7];
    [defaultContentConfiguration setText:v8];

    goto LABEL_10;
  }

  if ([pathCopy row] == 2)
  {
    v7 = @"SUPPORT_OPTION";
    goto LABEL_9;
  }

LABEL_10:
  v9 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:v9];

  [v5 setContentConfiguration:defaultContentConfiguration];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setBackgroundColor:whiteColor];

  contentView = [v5 contentView];
  [contentView setLayoutMargins:{20.0, 0.0, 20.0, 0.0}];

LABEL_11:

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row] <= 2;
  v6 = pathCopy;
  if (v5)
  {
    if ([pathCopy row])
    {
      if ([pathCopy row] == 1)
      {
        v7 = @"Learn more about device assignment";
        v8 = off_2798F1830;
      }

      else
      {
        if ([pathCopy row] != 2)
        {
LABEL_11:
          v12 = +[MSDSetupUIController sharedInstance];
          helpMenuUserTapped = [(MSDHelpMenuViewController *)self helpMenuUserTapped];
          [v12 setHelpMenuRowSelection:helpMenuUserTapped];

          v6 = pathCopy;
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
    helpMenuUserTapped2 = [(MSDHelpMenuViewController *)self helpMenuUserTapped];
    [helpMenuUserTapped2 addObject:v7];

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