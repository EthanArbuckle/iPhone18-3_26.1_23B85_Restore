@interface _CUINineImagePieces
- (_CUINineImagePieces)initWithCenter:(id)a3 topLeft:(id)a4 top:(id)a5 topRight:(id)a6 right:(id)a7 bottomRight:(id)a8 bottom:(id)a9 bottomLeft:(id)a10 left:(id)a11 tileCenterAndEdges:(BOOL)a12;
- (void)dealloc;
@end

@implementation _CUINineImagePieces

- (_CUINineImagePieces)initWithCenter:(id)a3 topLeft:(id)a4 top:(id)a5 topRight:(id)a6 right:(id)a7 bottomRight:(id)a8 bottom:(id)a9 bottomLeft:(id)a10 left:(id)a11 tileCenterAndEdges:(BOOL)a12
{
  v20.receiver = self;
  v20.super_class = _CUINineImagePieces;
  v18 = [(_CUINineImagePieces *)&v20 init];
  if (v18)
  {
    v18->_center = a3;
    v18->_topLeft = a4;
    v18->_top = a5;
    v18->_topRight = a6;
    v18->_right = a7;
    v18->_bottomRight = a8;
    v18->_bottom = a9;
    v18->_bottomLeft = a10;
    v18->_left = a11;
    v18->_tileCenterAndEdges = a12;
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