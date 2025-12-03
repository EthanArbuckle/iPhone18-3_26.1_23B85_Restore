@interface CMDiagramSegmentedPieMapper
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index;
- (int)pointCount;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
@end

@implementation CMDiagramSegmentedPieMapper

- (int)pointCount
{
  if (self->super.mChildCount >= 7)
  {
    LODWORD(v2) = 7;
  }

  else
  {
    return self->super.mChildCount;
  }

  return v2;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      v12 = v8 + (v10 - v9) * 0.5;
      v14 = v9;
    }
  }

  else
  {
    v11 = v7 + (v9 - v10) * 0.5;
    v13 = v10;
  }

  v24.origin.x = v11;
  v24.origin.y = v12;
  v24.size.width = v13;
  v24.size.height = v14;
  Width = CGRectGetWidth(v24);
  v25.origin.x = v11;
  v25.origin.y = v12;
  v25.size.width = v13;
  v25.size.height = v14;
  v16 = (Width + CGRectGetHeight(v25)) * 0.04;
  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v13;
  v26.size.height = v14;
  v27 = CGRectInset(v26, v16, v16);
  v17 = [OADOrientedBounds orientedBoundsWithBounds:v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];
  mOrientedBounds = self->super.super.super.mOrientedBounds;
  self->super.super.super.mOrientedBounds = v17;

  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v21 = v20;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [transform translateXBy:v21 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramSegmentedPieMapper *)self mapChildrenAt:atCopy withState:stateCopy];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  pointCount = [(CMDiagramSegmentedPieMapper *)self pointCount];
  if (pointCount)
  {
    v10 = 0;
    v11 = pointCount;
    v12 = pointCount;
    v13 = 2;
    do
    {
      v14 = [children objectAtIndex:v10];
      v15 = [(CMDiagramSegmentedPieMapper *)self _suggestedBoundsForNodeAtIndex:v10];
      v16 = [(CMDiagramPointMapper *)[CMDiagramPointSegmentedPieMapper alloc] initWithPoint:v14 drawingContext:self->super.super.mDrawingContext orientedBounds:v15 parent:self];
      [(CMDiagramPointSegmentedPieMapper *)v16 setStartAngle:1.57079633 - (v13 - 2) * 3.14159265 / v12];
      [(CMDiagramPointSegmentedPieMapper *)v16 setStopAngle:1.57079633 - v13 * 3.14159265 / v12];
      [(CMDiagramPointSegmentedPieMapper *)v16 setDrawArrows:*(&self->super.mDefaultScale + 4)];
      v17 = v10 + 1;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"wedge%lu", v10 + 1];
      [(CMDiagramPointMapper *)v16 setPresentationName:v18];

      [(CMDiagramPointSegmentedPieMapper *)v16 setSegmentIndex:v17 - 1];
      [(CMDiagramPointSegmentedPieMapper *)v16 setSegmentCount:v11];
      [(CMDiagramPointSegmentedPieMapper *)v16 mapAt:atCopy withState:stateCopy];

      v13 += 2;
      v10 = v17;
    }

    while (v17 != v11);
  }
}

- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index
{
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];

  return [OADOrientedBounds orientedBoundsWithBounds:0.0, 0.0];
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  index = [(CMDiagramSegmentedPieMapper *)self _suggestedBoundsForNodeAtIndex:0, index];
  [index bounds];
  v6 = v5 / 6.0;
  v8 = v7 / 6.0;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end