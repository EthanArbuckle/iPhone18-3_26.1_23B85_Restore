@interface CPUITemplateButton
- (CPUITemplateButton)initWithFrame:(CGRect)a3;
- (CPUITemplateButtonDelegate)delegate;
- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4;
@end

@implementation CPUITemplateButton

- (CPUITemplateButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CPUITemplateButton;
  v3 = [(CPUITemplateButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPUIButton *)v3 setCpui_delegate:v3];
  }

  return v4;
}

- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4
{
  v6 = +[CPUIUtilities sharedInstance];
  [v6 setLastButtonPressInteractionModel:a4];

  v7 = [(CPUITemplateButton *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(CPUITemplateButton *)self delegate];
    [v8 didSelectButton:self];
  }
}

- (CPUITemplateButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end