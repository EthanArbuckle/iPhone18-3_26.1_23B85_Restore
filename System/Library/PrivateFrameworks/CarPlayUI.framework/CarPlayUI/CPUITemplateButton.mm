@interface CPUITemplateButton
- (CPUITemplateButton)initWithFrame:(CGRect)frame;
- (CPUITemplateButtonDelegate)delegate;
- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model;
@end

@implementation CPUITemplateButton

- (CPUITemplateButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CPUITemplateButton;
  v3 = [(CPUITemplateButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPUIButton *)v3 setCpui_delegate:v3];
  }

  return v4;
}

- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model
{
  v6 = +[CPUIUtilities sharedInstance];
  [v6 setLastButtonPressInteractionModel:model];

  delegate = [(CPUITemplateButton *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CPUITemplateButton *)self delegate];
    [delegate2 didSelectButton:self];
  }
}

- (CPUITemplateButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end