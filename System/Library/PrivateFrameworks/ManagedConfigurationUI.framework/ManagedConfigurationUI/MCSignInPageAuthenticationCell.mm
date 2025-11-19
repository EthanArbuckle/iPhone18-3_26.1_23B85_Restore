@interface MCSignInPageAuthenticationCell
- (MCSignInPageAuthenticationCell)initWithAuthView:(id)a3;
- (MCSignInPageAuthenticationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_addAuthView:(id)a3;
- (void)setAuthView:(id)a3;
@end

@implementation MCSignInPageAuthenticationCell

- (MCSignInPageAuthenticationCell)initWithAuthView:(id)a3
{
  v5 = a3;
  v6 = [(MCSignInPageAuthenticationCell *)self initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authView, a3);
    [(MCSignInPageAuthenticationCell *)v7 _addAuthView:v5];
  }

  return v7;
}

- (MCSignInPageAuthenticationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCSignInPageAuthenticationCell;
  v4 = [(MCSignInPageAuthenticationCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MCSignInPageAuthenticationCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(MCSignInPageAuthenticationCell *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (void)setAuthView:(id)a3
{
  v5 = a3;
  authView = self->_authView;
  if (authView != v5)
  {
    v7 = v5;
    [(UIView *)authView removeFromSuperview];
    objc_storeStrong(&self->_authView, a3);
    authView = [(MCSignInPageAuthenticationCell *)self _addAuthView:v7];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](authView, v5);
}

- (void)_addAuthView:(id)a3
{
  v4 = a3;
  v5 = [(MCSignInPageAuthenticationCell *)self contentView];
  [v5 addSubview:v4];

  v6 = [v4 centerXAnchor];
  v7 = [(MCSignInPageAuthenticationCell *)self contentView];
  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v13 = [v4 centerYAnchor];

  v10 = [(MCSignInPageAuthenticationCell *)self contentView];
  v11 = [v10 centerYAnchor];
  v12 = [v13 constraintEqualToAnchor:v11];
  [v12 setActive:1];
}

@end