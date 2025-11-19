@interface CUIMutableNamedIconLayerGroup
- (void)dealloc;
- (void)setAppearance:(id)a3;
@end

@implementation CUIMutableNamedIconLayerGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedIconLayerGroup;
  [(CUINamedIconLayerGroup *)&v3 dealloc];
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