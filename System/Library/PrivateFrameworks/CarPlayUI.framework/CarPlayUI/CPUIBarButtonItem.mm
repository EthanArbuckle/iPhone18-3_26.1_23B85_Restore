@interface CPUIBarButtonItem
- (CPUIBarButtonItem)initWithTitle:(id)title image:(id)image style:(int64_t)style type:(unint64_t)type;
- (CPUIButtonDelegate)cpui_delegate;
- (UIColor)focusedBackgroundColor;
- (UIColor)focusedColor;
- (UIColor)normalBackgroundColor;
- (UIColor)normalColor;
- (UIFont)font;
- (id)_barButton;
- (void)_updatePrefersSeparatePlatter;
- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model;
- (void)setEnabled:(BOOL)enabled;
- (void)setFocusedBackgroundColor:(id)color;
- (void)setFocusedColor:(id)color;
- (void)setFont:(id)font;
- (void)setImage:(id)image;
- (void)setNormalBackgroundColor:(id)color;
- (void)setNormalColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation CPUIBarButtonItem

- (CPUIBarButtonItem)initWithTitle:(id)title image:(id)image style:(int64_t)style type:(unint64_t)type
{
  titleCopy = title;
  imageCopy = image;
  v12 = [CPUIBarButton buttonWithTitle:titleCopy image:imageCopy style:style type:type];
  v13 = [(CPUIBarButtonItem *)self initWithCustomView:v12];
  if (v13)
  {
    [v12 sizeToFit];
    [v12 setCpui_delegate:v13];
    [(CPUIBarButtonItem *)v13 setTitle:titleCopy];
    [(CPUIBarButtonItem *)v13 setImage:imageCopy];
  }

  return v13;
}

- (void)_updatePrefersSeparatePlatter
{
  title = [(CPUIBarButtonItem *)self title];
  if ([title length])
  {
    image = [(CPUIBarButtonItem *)self image];
    v5 = image == 0;
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
  customView = [(CPUIBarButtonItem *)self customView];
  if (objc_opt_isKindOfClass())
  {
    v4 = customView;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIFont)font
{
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  buttonFont = [_barButton buttonFont];

  return buttonFont;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  [_barButton setButtonFont:fontCopy];
}

- (UIColor)normalColor
{
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  normalColor = [_barButton normalColor];

  return normalColor;
}

- (void)setNormalColor:(id)color
{
  colorCopy = color;
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  [_barButton setNormalColor:colorCopy];
}

- (UIColor)focusedColor
{
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  focusedColor = [_barButton focusedColor];

  return focusedColor;
}

- (void)setFocusedColor:(id)color
{
  colorCopy = color;
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  [_barButton setFocusedColor:colorCopy];
}

- (UIColor)normalBackgroundColor
{
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  normalBackgroundColor = [_barButton normalBackgroundColor];

  return normalBackgroundColor;
}

- (void)setNormalBackgroundColor:(id)color
{
  colorCopy = color;
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  [_barButton setNormalBackgroundColor:colorCopy];
}

- (UIColor)focusedBackgroundColor
{
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  focusedBackgroundColor = [_barButton focusedBackgroundColor];

  return focusedBackgroundColor;
}

- (void)setFocusedBackgroundColor:(id)color
{
  colorCopy = color;
  _barButton = [(CPUIBarButtonItem *)self _barButton];
  [_barButton setFocusedBackgroundColor:colorCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = CPUIBarButtonItem;
  [(CPUIBarButtonItem *)&v6 setEnabled:?];
  button = [(CPUIBarButtonItem *)self button];
  [button setEnabled:enabledCopy];
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = CPUIBarButtonItem;
  titleCopy = title;
  [(CPUIBarButtonItem *)&v6 setTitle:titleCopy];
  v5 = [(CPUIBarButtonItem *)self button:v6.receiver];
  [v5 setTitle:titleCopy forState:0];

  [(CPUIBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)setImage:(id)image
{
  v11.receiver = self;
  v11.super_class = CPUIBarButtonItem;
  imageCopy = image;
  [(CPUIBarButtonItem *)&v11 setImage:imageCopy];
  v5 = [(CPUIBarButtonItem *)self button:v11.receiver];
  normalColor = [(CPUIBarButtonItem *)self normalColor];
  v7 = [imageCopy _flatImageWithColor:normalColor];
  [v5 setImage:v7 forState:0];

  button = [(CPUIBarButtonItem *)self button];
  focusedColor = [(CPUIBarButtonItem *)self focusedColor];
  v10 = [imageCopy _flatImageWithColor:focusedColor];

  [button setImage:v10 forState:8];
  [(CPUIBarButtonItem *)self _updatePrefersSeparatePlatter];
}

- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model
{
  cpui_delegate = [(CPUIBarButtonItem *)self cpui_delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    cpui_delegate2 = [(CPUIBarButtonItem *)self cpui_delegate];
    [cpui_delegate2 didSelectButton:self withInteractionModel:model];
  }
}

- (CPUIButtonDelegate)cpui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cpui_delegate);

  return WeakRetained;
}

@end