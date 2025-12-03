@interface _CUINineImagePieces
- (_CUINineImagePieces)initWithCenter:(id)center topLeft:(id)left top:(id)top topRight:(id)right right:(id)a7 bottomRight:(id)bottomRight bottom:(id)bottom bottomLeft:(id)self0 left:(id)self1 tileCenterAndEdges:(BOOL)self2;
- (void)dealloc;
@end

@implementation _CUINineImagePieces

- (_CUINineImagePieces)initWithCenter:(id)center topLeft:(id)left top:(id)top topRight:(id)right right:(id)a7 bottomRight:(id)bottomRight bottom:(id)bottom bottomLeft:(id)self0 left:(id)self1 tileCenterAndEdges:(BOOL)self2
{
  v20.receiver = self;
  v20.super_class = _CUINineImagePieces;
  v18 = [(_CUINineImagePieces *)&v20 init];
  if (v18)
  {
    v18->_center = center;
    v18->_topLeft = left;
    v18->_top = top;
    v18->_topRight = right;
    v18->_right = a7;
    v18->_bottomRight = bottomRight;
    v18->_bottom = bottom;
    v18->_bottomLeft = bottomLeft;
    v18->_left = a11;
    v18->_tileCenterAndEdges = edges;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUINineImagePieces;
  [(_CUINineImagePieces *)&v3 dealloc];
}

@end