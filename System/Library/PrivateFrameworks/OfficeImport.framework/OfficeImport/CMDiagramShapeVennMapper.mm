@interface CMDiagramShapeVennMapper
- (CGRect)circumscribedBounds;
- (CGRect)nodeBoundsWithIndex:(unsigned int)index;
- (CGSize)textSizeForShapeSize:(CGSize)size;
- (void)mapChildrenAt:(id)at withState:(id)state;
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

- (CGRect)nodeBoundsWithIndex:(unsigned int)index
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

  v6 = (2 * index) * 3.14159265 / mChildCount + -1.57079633;
  v7 = __sincosf_stret(v6);

  v8 = TSURectWithCenterAndSize((v5 * v7.__cosval), (v5 * v7.__sinval), v4);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v23);
  [(CMDiagramShapeVennMapper *)self circumscribedBounds];
  CGRectGetWidth(v24);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v25);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetHeight(v26);
  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [transform translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  if (self->super.mChildCount)
  {
    v10 = 0;
    do
    {
      v11 = [children objectAtIndex:v10];
      [(CMDiagramShapeVennMapper *)self nodeBoundsWithIndex:v10];
      [CMShapeUtils transformRect:"transformRect:scale:offsetX:offsetY:" scale:? offsetX:? offsetY:?];
      v16 = [[OADOrientedBounds alloc] initWithBounds:v12, v13, v14, v15];
      v17 = [(CMDiagramPointMapper *)[CMDiagramPointEllipseMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v16 parent:self];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"circ%d", ++v10];
      [(CMDiagramPointMapper *)v17 setPresentationName:v18];

      [(CMDiagramPointEllipseMapper *)v17 mapAt:atCopy withState:stateCopy];
    }

    while (self->super.mChildCount > v10);
  }
}

- (CGSize)textSizeForShapeSize:(CGSize)size
{
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds:size.width];
  v4 = v3 * 0.4;
  v6 = v5 * 0.4;
  result.height = v6;
  result.width = v4;
  return result;
}

@end