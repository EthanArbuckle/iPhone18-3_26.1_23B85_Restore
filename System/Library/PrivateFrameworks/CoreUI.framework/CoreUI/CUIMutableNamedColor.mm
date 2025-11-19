@interface CUIMutableNamedColor
- (CUIMutableNamedColor)init;
- (void)dealloc;
- (void)setAppearance:(id)a3;
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

- (void)setAppearance:(id)a3
{
  appearance = self->_appearance;
  if (appearance != a3)
  {

    self->_appearance = a3;
  }
}

@end