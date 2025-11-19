@interface CUIMutableNamedIconLayerStack
- (CGSize)size;
- (CUIMutableNamedIconLayerStack)initWithName:(id)a3 withSize:(CGSize)a4 atScale:(double)a5;
- (void)dealloc;
- (void)setAppearance:(id)a3;
- (void)setRenderingProperties:(id)a3;
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

- (CUIMutableNamedIconLayerStack)initWithName:(id)a3 withSize:(CGSize)a4 atScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v11.receiver = self;
  v11.super_class = CUIMutableNamedIconLayerStack;
  v9 = [(CUIMutableNamedIconLayerStack *)&v11 init];
  [(CUINamedLookup *)v9 setName:a3];
  [(CUIMutableNamedIconLayerStack *)v9 setSize:width, height];
  [(CUIMutableNamedIconLayerStack *)v9 setScale:a5];
  return v9;
}

- (void)setRenderingProperties:(id)a3
{
  properties = self->_properties;
  if (properties != a3)
  {

    self->_properties = [a3 copy];
  }
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