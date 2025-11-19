@interface MCSignInPageAuthenticationSectionController
- (AKInlineSignInViewController)inlineSignInViewController;
- (MCSignInPageAuthenticationCell)cell;
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation MCSignInPageAuthenticationSectionController

- (void)registerCellClassWithTableView:(id)a3
{
  v4 = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
  v5 = [v4 view];
  [v5 sizeToFit];

  v7 = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
  v6 = [v7 view];
  [v6 frame];
  [(MCSignInPageAuthenticationSectionController *)self setAuthSectionHeight:CGRectGetHeight(v9)];
}

- (MCSignInPageAuthenticationCell)cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [MCSignInPageAuthenticationCell alloc];
    v5 = [(MCSignInPageAuthenticationSectionController *)self inlineSignInViewController];
    v6 = [v5 view];
    v7 = [(MCSignInPageAuthenticationCell *)v4 initWithAuthView:v6];
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