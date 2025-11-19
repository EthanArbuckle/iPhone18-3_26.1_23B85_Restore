@interface CMDiagramShapeVennMapper
- (CGRect)circumscribedBounds;
- (CGRect)nodeBoundsWithIndex:(unsigned int)a3;
- (CGSize)textSizeForShapeSize:(CGSize)a3;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramShapeVennMapper

- (CGRect)circumscribedBounds
{
  mChildCount = self->super.mChildCount;
  v3 = ODIRegularPolygonBoundsMapper(mChildCount, 1.0, -90.0);
  if (mChildCount < 5)
  {
    v7 = -1.20000005;
    v8 = -1.20000005;
  }

  else
  {
    v7 = -0.300000012;
    v8 = -0.180000007;
  }

  return CGRectInset(*&v3, v7, v8);
}

- (CGRect)nodeBoundsWithIndex:(unsigned int)a3
{
  mChildCount = self->super.mChildCount;
  v4 = dbl_25D710CB0[mChildCount > 4];
  if (mChildCount <= 4)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.25;
  }

  v6 = (2 * a3) * 3.14159265 / mChildCount + -1.57079633;
  v7 = __sincosf_stret(v6);

  v8 = TSURectWithCenterAndSize((v5 * v7.__cosval), (v5 * v7.__sinval), v4);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v20 = a3;
  v19 = a4;
  v6 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v21 = [v6 children];

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v23);
  [(CMDiagramShapeVennMapper *)self circumscribedBounds];
  CGRectGetWidth(v24);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v25);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetHeight(v26);
  v7 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [v7 translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v7];
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  if (self->super.mChildCount)
  {
    v10 = 0;
    do
    {
      v11 = [v21 objectAtIndex:v10];
      [(CMDiagramShapeVennMapper *)self nodeBoundsWithIndex:v10];
      [CMShapeUtils transformRect:"transformRect:scale:offsetX:offsetY:" scale:? offsetX:? offsetY:?];
      v16 = [[OADOrientedBounds alloc] initWithBounds:v12, v13, v14, v15];
      v17 = [(CMDiagramPointMapper *)[CMDiagramPointEllipseMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v16 parent:self];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"circ%d", ++v10];
      [(CMDiagramPointMapper *)v17 setPresentationName:v18];

      [(CMDiagramPointEllipseMapper *)v17 mapAt:v20 withState:v19];
    }

    while (self->super.mChildCount > v10);
  }
}

- (CGSize)textSizeForShapeSize:(CGSize)a3
{
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds:a3.width];
  v4 = v3 * 0.4;
  v6 = v5 * 0.4;
  result.height = v6;
  result.width = v4;
  return result;
}

@end