@interface CUIMutableNamedGradient
- (void)dealloc;
- (void)setAppearance:(id)appearance;
@end

@implementation CUIMutableNamedGradient

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedGradient;
  [(CUINamedGradient *)&v3 dealloc];
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