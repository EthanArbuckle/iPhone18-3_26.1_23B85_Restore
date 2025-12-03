@interface TDSlice
- (CGRect)primitiveSliceRect;
- (CGRect)sliceRect;
- (void)awakeFromFetch;
- (void)setSliceRect:(CGRect)rect;
@end

@implementation TDSlice

- (CGRect)primitiveSliceRect
{
  x = self->_sliceRect.origin.x;
  y = self->_sliceRect.origin.y;
  width = self->_sliceRect.size.width;
  height = self->_sliceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setSliceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TDSlice *)self willChangeValueForKey:@"sliceRect"];
  self->_sliceRect.origin.x = x;
  self->_sliceRect.origin.y = y;
  self->_sliceRect.size.width = width;
  self->_sliceRect.size.height = height;
  [(TDSlice *)self didChangeValueForKey:@"sliceRect"];
  v8 = NSStringFromRect(self->_sliceRect);

  [(TDSlice *)self setSliceRectString:v8];
}

- (CGRect)sliceRect
{
  [(TDSlice *)self willAccessValueForKey:@"sliceRect"];
  [(TDSlice *)self primitiveSliceRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TDSlice *)self didAccessValueForKey:@"sliceRect"];
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
  v3.super_class = TDSlice;
  [(TDSlice *)&v3 awakeFromFetch];
  v4 = NSRectFromString([(TDSlice *)self sliceRectString]);
  [(TDSlice *)self setPrimitiveSliceRect:v4.origin.x, v4.origin.y, v4.size.width, v4.size.height];
}

@end