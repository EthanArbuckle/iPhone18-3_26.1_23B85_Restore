@interface SFUnifiedBarButton
- (NSAttributedString)attributedTitle;
- (NSString)title;
- (SFUnifiedBarButton)initWithImage:(id)a3 action:(id)a4;
- (void)_performAction;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation SFUnifiedBarButton

- (SFUnifiedBarButton)initWithImage:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFUnifiedBarButton;
  v8 = [(SFUnifiedBarButton *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFUnifiedBarButtonView);
    buttonView = v8->_buttonView;
    v8->_buttonView = v9;

    [(SFUnifiedBarButtonView *)v8->_buttonView addTarget:v8 action:sel__performAction forControlEvents:64];
    [(SFUnifiedBarButtonView *)v8->_buttonView setImage:v6];
    v11 = _Block_copy(v7);
    action = v8->_action;
    v8->_action = v11;

    v13 = v8;
  }

  return v8;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFUnifiedBarButton;
  [(SFUnifiedBarItem *)&v5 setEnabled:?];
  [(SFUnifiedBarButtonView *)self->_buttonView setEnabled:v3];
}

- (void)setAccessibilityIdentifier:(id)a3
{
  if (a3)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setAccessibilityIdentifier:?];
  }
}

- (NSString)title
{
  v2 = [(SFUnifiedBarButtonView *)self->_buttonView _titleView];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setTitle:a3 forState:0];
    buttonView = self->_buttonView;

    [(SFUnifiedBarButtonView *)buttonView updateTitleFont];
  }
}

- (NSAttributedString)attributedTitle
{
  v2 = [(SFUnifiedBarButtonView *)self->_buttonView _titleView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setAttributedTitle:(id)a3
{
  if (a3)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setAttributedTitle:a3 forState:0];
    buttonView = self->_buttonView;

    [(SFUnifiedBarButtonView *)buttonView updateTitleFont];
  }
}

- (void)_performAction
{
  action = self->_action;
  if (action)
  {
    action[2](action, self);
  }
}

@end