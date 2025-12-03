@interface CUIMutableNamedIconLayerStack
- (CGSize)size;
- (CUIMutableNamedIconLayerStack)initWithName:(id)name withSize:(CGSize)size atScale:(double)scale;
- (void)dealloc;
- (void)setAppearance:(id)appearance;
- (void)setRenderingProperties:(id)properties;
@end

@implementation CUIMutableNamedIconLayerStack

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableNamedIconLayerStack;
  [(CUINamedIconLayerStack *)&v3 dealloc];
}

- (CUIMutableNamedIconLayerStack)initWithName:(id)name withSize:(CGSize)size atScale:(double)scale
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = CUIMutableNamedIconLayerStack;
  v9 = [(CUIMutableNamedIconLayerStack *)&v11 init];
  [(CUINamedLookup *)v9 setName:name];
  [(CUIMutableNamedIconLayerStack *)v9 setSize:width, height];
  [(CUIMutableNamedIconLayerStack *)v9 setScale:scale];
  return v9;
}

- (void)setRenderingProperties:(id)properties
{
  properties = self->_properties;
  if (properties != properties)
  {

    self->_properties = [properties copy];
  }
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