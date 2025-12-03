@interface CUIMutableNamedColor
- (CUIMutableNamedColor)init;
- (void)dealloc;
- (void)setAppearance:(id)appearance;
@end

@implementation CUIMutableNamedColor

- (CUIMutableNamedColor)init
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedColor;
  return [(CUIMutableNamedColor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedColor;
  [(CUINamedColor *)&v3 dealloc];
}

- (void)setAppearance:(id)appearance
{
  appearance = self->_appearance;
  if (appearance != appearance)
  {

    self->_appearance = appearance;
  }
}

@end