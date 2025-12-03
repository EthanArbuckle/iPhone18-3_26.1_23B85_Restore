@interface TDAbstractLayerReference
- (CGRect)frameRect;
- (CGRect)primitiveFrameRect;
- (void)awakeFromFetch;
- (void)setFrameRect:(CGRect)rect;
@end

@implementation TDAbstractLayerReference

- (CGRect)primitiveFrameRect
{
  x = self->_frameRect.origin.x;
  y = self->_frameRect.origin.y;
  width = self->_frameRect.size.width;
  height = self->_frameRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFrameRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TDAbstractLayerReference *)self willChangeValueForKey:@"frameRect"];
  self->_frameRect.origin.x = x;
  self->_frameRect.origin.y = y;
  self->_frameRect.size.width = width;
  self->_frameRect.size.height = height;
  [(TDAbstractLayerReference *)self didChangeValueForKey:@"frameRect"];
  v8 = NSStringFromRect(self->_frameRect);

  [(TDAbstractLayerReference *)self setFrameRectString:v8];
}

- (CGRect)frameRect
{
  [(TDAbstractLayerReference *)self willAccessValueForKey:@"frameRect"];
  [(TDAbstractLayerReference *)self primitiveFrameRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TDAbstractLayerReference *)self didAccessValueForKey:@"frameRect"];
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = TDAbstractLayerReference;
  [(TDAbstractLayerReference *)&v3 awakeFromFetch];
  v4 = NSRectFromString([(TDAbstractLayerReference *)self frameRectString]);
  [(TDAbstractLayerReference *)self setPrimitiveFrameRect:v4.origin.x, v4.origin.y, v4.size.width, v4.size.height];
}

@end