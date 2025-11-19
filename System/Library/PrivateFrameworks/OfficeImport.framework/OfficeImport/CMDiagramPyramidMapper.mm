@interface CMDiagramPyramidMapper
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPyramidMapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  v7 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [v7 translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v7];
  [(CMDiagramPyramidMapper *)self mapChildrenAt:v10 withState:v6];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v8 = [v7 children];

  v9 = [v8 count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v8 objectAtIndex:i];
      v12 = [(CMDiagramPyramidMapper *)self _suggestedBoundsForNodeAtIndex:i];
      v13 = [(CMDiagramPointMapper *)[CMDiagramPointPyramidLayerMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v12 parent:self];
      [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
      Height = CGRectGetHeight(v18);
      [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
      v15 = Height / CGRectGetWidth(v19);
      if (*(&self->super.mDefaultScale + 4))
      {
        v15 = -v15;
      }

      [(CMDiagramPointPyramidLayerMapper *)v13 setPyramidAspectRatio:v15];
      [(CMDiagramPointPyramidLayerMapper *)v13 mapAt:v16 withState:v6];
    }
  }
}

- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)a3
{
  mChildCount = self->super.mChildCount;
  if (*(&self->super.mDefaultScale + 4))
  {
    v4 = mChildCount - a3;
  }

  else
  {
    v4 = a3 + 1;
  }

  return [CMShapeUtils internalBoundsWithBounds:self->super.super.super.mOrientedBounds scaleBounds:0.5 - (1.0 / mChildCount) * v4 * 0.5, a3 * (1.0 / mChildCount)];
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(CMDiagramPyramidMapper *)self _suggestedBoundsForNodeAtIndex:a4];
  [v4 bounds];
  v6 = v5;
  v8 = v7 * 0.9;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

@end