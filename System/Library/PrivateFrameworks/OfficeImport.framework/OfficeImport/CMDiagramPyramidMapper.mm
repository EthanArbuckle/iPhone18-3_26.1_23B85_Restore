@interface CMDiagramPyramidMapper
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPyramidMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [transform translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramPyramidMapper *)self mapChildrenAt:atCopy withState:stateCopy];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  v9 = [children count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [children objectAtIndex:i];
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
      [(CMDiagramPointPyramidLayerMapper *)v13 mapAt:atCopy withState:stateCopy];
    }
  }
}

- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index
{
  mChildCount = self->super.mChildCount;
  if (*(&self->super.mDefaultScale + 4))
  {
    v4 = mChildCount - index;
  }

  else
  {
    v4 = index + 1;
  }

  return [CMShapeUtils internalBoundsWithBounds:self->super.super.super.mOrientedBounds scaleBounds:0.5 - (1.0 / mChildCount) * v4 * 0.5, index * (1.0 / mChildCount)];
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  v4 = [(CMDiagramPyramidMapper *)self _suggestedBoundsForNodeAtIndex:index];
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