@interface SFAlertControllerContentViewController
- (void)viewDidLayoutSubviews;
@end

@implementation SFAlertControllerContentViewController

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = SFAlertControllerContentViewController;
  [(SFAlertControllerContentViewController *)&v23 viewDidLayoutSubviews];
  view = [(SFAlertControllerContentViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(SFAlertControllerContentViewController *)self view];
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Width = CGRectGetWidth(v24);
  LODWORD(v14) = 1148846080;
  LODWORD(v15) = 1112014848;
  [view2 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v14, v15}];
  v17 = v16;
  v19 = v18;

  [(SFAlertControllerContentViewController *)self preferredContentSize];
  if (v21 != v17 || v20 != v19)
  {
    [(SFAlertControllerContentViewController *)self setPreferredContentSize:v17, v19];
  }
}

@end