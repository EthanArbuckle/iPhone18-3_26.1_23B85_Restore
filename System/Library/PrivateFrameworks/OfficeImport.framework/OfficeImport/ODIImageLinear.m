@interface ODIImageLinear
- (ODIImageLinear)initWithImagePresentationName:(id)a3 state:(id)a4;
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODIImageLinear

- (ODIImageLinear)initWithImagePresentationName:(id)a3 state:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ODIImageLinear;
  v9 = [(ODILinear *)&v12 initWithState:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mImagePresentationName, a3);
    [(ODILinear *)v10 setIsTextCentered:0];
  }

  return v10;
}

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27 = a3;
  LODWORD(v9) = 1033476506;
  v10 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v9];
  v11 = [ODIDrawable addShapeWithBounds:v10 rotation:self->super.mState geometry:x state:y, width, height, 0.0];
  [ODIDrawable mapStyleFromPoint:v27 shape:v11 state:self->super.mState];
  if (self->super.mIsHorizontal)
  {
    v12 = width * 0.05;
    v14 = y + v12;
    v15 = width - (v12 + v12);
    v16 = v15 * 0.899999976;
    v29.origin.x = x + v12;
    v13 = v29.origin.x;
    v29.origin.y = v14;
    v29.size.width = v15;
    v29.size.height = v15 * 0.899999976;
    MaxY = CGRectGetMaxY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v17 = CGRectGetMaxY(v30);
    v31.origin.x = v13;
    v31.origin.y = v14;
    v31.size.width = v15;
    v31.size.height = v15 * 0.899999976;
    v18 = CGRectGetMaxY(v31);
    height = v17 - v18;
    y = MaxY;
  }

  else
  {
    v19 = height * 0.05;
    v14 = y + v19;
    v16 = height - (v19 + v19);
    v15 = v16 * 1.11;
    v32.origin.x = x + v19;
    v13 = v32.origin.x;
    v32.origin.y = v14;
    v32.size.width = v16 * 1.11;
    v32.size.height = v16;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v20 = CGRectGetMaxX(v33);
    v34.origin.x = v13;
    v34.origin.y = v14;
    v34.size.width = v16 * 1.11;
    v34.size.height = v16;
    v18 = CGRectGetMaxX(v34);
    width = v20 - v18;
    x = MaxX;
  }

  LODWORD(v18) = 1033476506;
  v21 = [ODIDrawable shapeGeometryForRoundedRectangleWithRadius:v18];
  v22 = [ODIDrawable addShapeWithBounds:v21 rotation:self->super.mState geometry:v13 state:v14, v15, v16, 0.0];
  [ODIDrawable mapStyleForPresentationName:self->mImagePresentationName point:v27 shape:v22 state:self->super.mState];
  v23 = +[ODIDrawable shapeGeometryForRectangle];
  v24 = [ODIDrawable addShapeWithBounds:v23 rotation:self->super.mState geometry:x state:y, width, height, 0.0];

  [ODIText mapTextFromPoint:v27 toShape:v24 isCenteredHorizontally:self->super.mIsTextCenteredHorizontally isCenteredVertically:self->super.mIsTextCenteredVertically includeChildren:1 state:self->super.mState];
}

@end