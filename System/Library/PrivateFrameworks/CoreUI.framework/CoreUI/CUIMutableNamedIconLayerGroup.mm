@interface CUIMutableNamedIconLayerGroup
- (void)dealloc;
- (void)setAppearance:(id)appearance;
@end

@implementation CUIMutableNamedIconLayerGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedIconLayerGroup;
  [(CUINamedIconLayerGroup *)&v3 dealloc];
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