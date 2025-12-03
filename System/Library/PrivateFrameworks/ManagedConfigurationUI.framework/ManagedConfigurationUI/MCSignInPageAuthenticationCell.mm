@interface MCSignInPageAuthenticationCell
- (MCSignInPageAuthenticationCell)initWithAuthView:(id)view;
- (MCSignInPageAuthenticationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_addAuthView:(id)view;
- (void)setAuthView:(id)view;
@end

@implementation MCSignInPageAuthenticationCell

- (MCSignInPageAuthenticationCell)initWithAuthView:(id)view
{
  viewCopy = view;
  v6 = [(MCSignInPageAuthenticationCell *)self initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authView, view);
    [(MCSignInPageAuthenticationCell *)v7 _addAuthView:viewCopy];
  }

  return v7;
}

- (MCSignInPageAuthenticationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MCSignInPageAuthenticationCell;
  v4 = [(MCSignInPageAuthenticationCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MCSignInPageAuthenticationCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MCSignInPageAuthenticationCell *)v5 setBackgroundColor:clearColor];
  }

  return v5;
}

- (void)setAuthView:(id)view
{
  viewCopy = view;
  authView = self->_authView;
  if (authView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)authView removeFromSuperview];
    objc_storeStrong(&self->_authView, view);
    authView = [(MCSignInPageAuthenticationCell *)self _addAuthView:v7];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](authView, viewCopy);
}

- (void)_addAuthView:(id)view
{
  viewCopy = view;
  contentView = [(MCSignInPageAuthenticationCell *)self contentView];
  [contentView addSubview:viewCopy];

  centerXAnchor = [viewCopy centerXAnchor];
  contentView2 = [(MCSignInPageAuthenticationCell *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v9 setActive:1];

  centerYAnchor = [viewCopy centerYAnchor];

  contentView3 = [(MCSignInPageAuthenticationCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v12 setActive:1];
}

@end