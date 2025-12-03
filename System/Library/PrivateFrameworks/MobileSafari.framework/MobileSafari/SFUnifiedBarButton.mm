@interface SFUnifiedBarButton
- (NSAttributedString)attributedTitle;
- (NSString)title;
- (SFUnifiedBarButton)initWithImage:(id)image action:(id)action;
- (void)_performAction;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAttributedTitle:(id)title;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation SFUnifiedBarButton

- (SFUnifiedBarButton)initWithImage:(id)image action:(id)action
{
  imageCopy = image;
  actionCopy = action;
  v15.receiver = self;
  v15.super_class = SFUnifiedBarButton;
  v8 = [(SFUnifiedBarButton *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(SFUnifiedBarButtonView);
    buttonView = v8->_buttonView;
    v8->_buttonView = v9;

    [(SFUnifiedBarButtonView *)v8->_buttonView addTarget:v8 action:sel__performAction forControlEvents:64];
    [(SFUnifiedBarButtonView *)v8->_buttonView setImage:imageCopy];
    v11 = _Block_copy(actionCopy);
    action = v8->_action;
    v8->_action = v11;

    v13 = v8;
  }

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = SFUnifiedBarButton;
  [(SFUnifiedBarItem *)&v5 setEnabled:?];
  [(SFUnifiedBarButtonView *)self->_buttonView setEnabled:enabledCopy];
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  if (identifier)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setAccessibilityIdentifier:?];
  }
}

- (NSString)title
{
  _titleView = [(SFUnifiedBarButtonView *)self->_buttonView _titleView];
  text = [_titleView text];

  return text;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setTitle:title forState:0];
    buttonView = self->_buttonView;

    [(SFUnifiedBarButtonView *)buttonView updateTitleFont];
  }
}

- (NSAttributedString)attributedTitle
{
  _titleView = [(SFUnifiedBarButtonView *)self->_buttonView _titleView];
  attributedText = [_titleView attributedText];

  return attributedText;
}

- (void)setAttributedTitle:(id)title
{
  if (title)
  {
    [(SFUnifiedBarButtonView *)self->_buttonView setAttributedTitle:title forState:0];
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