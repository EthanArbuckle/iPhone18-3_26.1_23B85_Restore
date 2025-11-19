@interface CPUIBarButtonItem
- (CPUIBarButtonItem)initWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 type:(unint64_t)a6;
- (CPUIButtonDelegate)cpui_delegate;
- (UIColor)focusedBackgroundColor;
- (UIColor)focusedColor;
- (UIColor)normalBackgroundColor;
- (UIColor)normalColor;
- (UIFont)font;
- (id)_barButton;
- (void)_updatePrefersSeparatePlatter;
- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setFocusedBackgroundColor:(id)a3;
- (void)setFocusedColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setImage:(id)a3;
- (void)setNormalBackgroundColor:(id)a3;
- (void)setNormalColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CPUIBarButtonItem

- (CPUIBarButtonItem)initWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 type:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [CPUIBarButton buttonWithTitle:v10 image:v11 style:a5 type:a6];
  v13 = [(CPUIBarButtonItem *)self initWithCustomView:v12];
  if (v13)
  {
    [v12 sizeToFit];
    [v12 setCpui_delegate:v13];
    [(CPUIBarButtonItem *)v13 setTitle:v10];
    [(CPUIBarButtonItem *)v13 setImage:v11];
  }

  return v13;
}

- (void)_updatePrefersSeparatePlatter
{
  v3 = [(CPUIBarButtonItem *)self title];
  if ([v3 length])
  {
    v4 = [(CPUIBarButtonItem *)self image];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  [(CPUIBarButtonItem *)self _setPrefersSeparatePlatter:v5];
}

- (id)_barButton
{
  objc_opt_class();
  v3 = [(CPUIBarButtonItem *)self customView];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIFont)font
{
  v2 = [(CPUIBarButtonItem *)self _barButton];
  v3 = [v2 buttonFont];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButtonItem *)self _barButton];
  [v5 setButtonFont:v4];
}

- (UIColor)normalColor
{
  v2 = [(CPUIBarButtonItem *)self _barButton];
  v3 = [v2 normalColor];

  return v3;
}

- (void)setNormalColor:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButtonItem *)self _barButton];
  [v5 setNormalColor:v4];
}

- (UIColor)focusedColor
{
  v2 = [(CPUIBarButtonItem *)self _barButton];
  v3 = [v2 focusedColor];

  return v3;
}

- (void)setFocusedColor:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButtonItem *)self _barButton];
  [v5 setFocusedColor:v4];
}

- (UIColor)normalBackgroundColor
{
  v2 = [(CPUIBarButtonItem *)self _barButton];
  v3 = [v2 normalBackgroundColor];

  return v3;
}

- (void)setNormalBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButtonItem *)self _barButton];
  [v5 setNormalBackgroundColor:v4];
}

- (UIColor)focusedBackgroundColor
{
  v2 = [(CPUIBarButtonItem *)self _barButton];
  v3 = [v2 focusedBackgroundColor];

  return v3;
}

- (void)setFocusedBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButtonItem *)self _barButton];
  [v5 setFocusedBackgroundColor:v4];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CPUIBarButtonItem;
  [(CPUIBarButtonItem *)&v6 setEnabled:?];
  v5 = [(CPUIBarButtonItem *)self button];
  [v5 setEnabled:v3];
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPUIBarButtonItem;
  v4 = a3;
  [(CPUIBarButtonItem *)&v6 setTitle:v4];
  v5 = [(CPUIBarButtonItem *)self button:v6.receiver];
  [v5 setTitle:v4 forState:0];

  [(CPUIBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)setImage:(id)a3
{
  v11.receiver = self;
  v11.super_class = CPUIBarButtonItem;
  v4 = a3;
  [(CPUIBarButtonItem *)&v11 setImage:v4];
  v5 = [(CPUIBarButtonItem *)self button:v11.receiver];
  v6 = [(CPUIBarButtonItem *)self normalColor];
  v7 = [v4 _flatImageWithColor:v6];
  [v5 setImage:v7 forState:0];

  v8 = [(CPUIBarButtonItem *)self button];
  v9 = [(CPUIBarButtonItem *)self focusedColor];
  v10 = [v4 _flatImageWithColor:v9];

  [v8 setImage:v10 forState:8];
  [(CPUIBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4
{
  v6 = [(CPUIBarButtonItem *)self cpui_delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CPUIBarButtonItem *)self cpui_delegate];
    [v8 didSelectButton:self withInteractionModel:a4];
  }
}

- (CPUIButtonDelegate)cpui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cpui_delegate);

  return WeakRetained;
}

@end