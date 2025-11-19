@interface CUIEncapsulatedVectorGlyph
- (CGContext)createContextFor:(id)a3 width:(int64_t)a4 height:(int64_t)a5;
- (CGImage)rasterizeImageUsingRenderBlock:(id)a3;
- (CGRect)encapsulatedAlignmentRect;
- (CGRect)encapsulatedAlignmentRectForCoordinateSystem:(int64_t)a3;
- (CGRect)imagePixelRect;
- (CGRect)imagePixelRectForCoordinateSystem:(int64_t)a3;
- (CGRect)imageRect;
- (CGRect)imageRectForCoordinateSystem:(int64_t)a3;
- (CGVector)imageCenter;
- (CGVector)imageCenterForCoordinateSystem:(int64_t)a3;
- (CGVector)imagePixelCenter;
- (CGVector)imagePixelCenterForCoordinateSystem:(int64_t)a3;
- (CUINamedVectorGlyph)glyph;
- (int64_t)coordinateSystem;
@end

@implementation CUIEncapsulatedVectorGlyph

- (CUINamedVectorGlyph)glyph
{
  v3 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (CGRect)imageRect
{
  v2 = sub_18DFFB878(self, a2, &OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGVector)imageCenter
{
  v2 = self;
  v3 = sub_18DFFB7CC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.dy = v7;
  result.dx = v6;
  return result;
}

- (CGRect)encapsulatedAlignmentRect
{
  v2 = sub_18DFFB878(self, a2, &OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)imagePixelRect
{
  v2 = (self + OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGVector)imagePixelCenter
{
  v2 = (self + OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageCenter);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.dy = v4;
  result.dx = v3;
  return result;
}

- (int64_t)coordinateSystem
{
  v3 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (CGRect)imageRectForCoordinateSystem:(int64_t)a3
{
  v4 = self;
  [(CUIEncapsulatedVectorGlyph *)v4 imagePixelRectForCoordinateSystem:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(&v4->super.isa + v13) scale];
  v15 = sub_18E001230(1.0 / v14, v6, v8, v10, v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGVector)imageCenterForCoordinateSystem:(int64_t)a3
{
  v4 = self;
  [(CUIEncapsulatedVectorGlyph *)v4 imagePixelCenterForCoordinateSystem:a3];
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(&v4->super.isa + v9) scale];
  v11 = v6 / v10;
  v12 = *(&v4->super.isa + v9);
  [v12 scale];
  v14 = v13;

  v15 = v8 / v14;
  v16 = v11;
  result.dy = v15;
  result.dx = v16;
  return result;
}

- (CGRect)encapsulatedAlignmentRectForCoordinateSystem:(int64_t)a3
{
  v4 = self;
  sub_18DFFC230(a3, &OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(&v4->super.isa + v13) scale];
  v15 = sub_18E001230(1.0 / v14, v6, v8, v10, v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)imagePixelRectForCoordinateSystem:(int64_t)a3
{
  v4 = self;
  sub_18DFFC224(a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGVector)imagePixelCenterForCoordinateSystem:(int64_t)a3
{
  v4 = self;
  sub_18DFFC3AC(a3);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.dy = v10;
  result.dx = v9;
  return result;
}

- (CGImage)rasterizeImageUsingRenderBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_18DFFCDF8(v5, v4);
  v7 = v6;
  _Block_release(v4);
  _Block_release(v4);

  return v7;
}

- (CGContext)createContextFor:(id)a3 width:(int64_t)a4 height:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_18DFFD298(v8, a4, a5);

  return v10;
}

@end