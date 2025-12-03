@interface MCSignInPageAuthenticationSectionController
- (AKInlineSignInViewController)inlineSignInViewController;
- (MCSignInPageAuthenticationCell)cell;
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation MCSignInPageAuthenticationSectionController

- (void)registerCellClassWithTableView:(id)view
{
  inlineSignInViewController = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
  view = [inlineSignInViewController view];
  [view sizeToFit];

  inlineSignInViewController2 = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
  view2 = [inlineSignInViewController2 view];
  [view2 frame];
  [(MCSignInPageAuthenticationSectionController *)self setAuthSectionHeight:CGRectGetHeight(v9)];
}

- (MCSignInPageAuthenticationCell)cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [MCSignInPageAuthenticationCell alloc];
    inlineSignInViewController = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
    view = [inlineSignInViewController view];
    v7 = [(MCSignInPageAuthenticationCell *)v4 initWithAuthView:view];
    v8 = self->_cell;
    self->_cell = v7;

    cell = self->_cell;
  }

  return cell;
}

- (AKInlineSignInViewController)inlineSignInViewController
{
  inlineSignInViewController = self->_inlineSignInViewController;
  if (!inlineSignInViewController)
  {
    v4 = objc_opt_new();
    [v4 setWantsAuthenticationProgress:1];
    [v4 setSecondaryButtonTitle:0];
    [v4 setTertiaryButtonTitle:0];
    v5 = self->_inlineSignInViewController;
    self->_inlineSignInViewController = v4;

    inlineSignInViewController = self->_inlineSignInViewController;
  }

  return inlineSignInViewController;
}

@end