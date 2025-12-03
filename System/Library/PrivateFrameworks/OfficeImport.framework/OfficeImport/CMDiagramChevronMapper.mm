@interface CMDiagramChevronMapper
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
@end

@implementation CMDiagramChevronMapper

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
  [(CMDiagramChevronMapper *)self mapChildrenAt:atCopy withState:stateCopy];
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
      v12 = [(CMDiagramChevronMapper *)self _suggestedBoundsForNodeAtIndex:i];
      v13 = [(CMDiagramPointMapper *)[CMDiagramPointChevronMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v12 parent:self];
      [(CMDiagramPointChevronMapper *)v13 setIsHomePlate:(i == 0) & *(&self->super.mDefaultScale + 1)];
      [(CMDiagramPointChevronMapper *)v13 mapAt:atCopy withState:stateCopy];
    }
  }
}

- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)index
{
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  mChildCount = self->super.mChildCount;
  v10 = CGRectGetWidth(v23) / mChildCount;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v11 = v10 / CGRectGetHeight(v24);
  v12 = (1.0 / mChildCount);
  v13 = v12 / 10.0;
  v14 = sqrt(v11 * v12 * 0.5);
  if (v11 <= 2.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = v12 * 0.5 + index * v12 - v12 * 0.5;
  v17 = v13 / 3.0 + v12;
  if (index)
  {
    v18 = v16 - v13 / 3.0;
  }

  else
  {
    v18 = v16;
  }

  if (!index)
  {
    v17 = v17 - v13 / 3.0;
  }

  v19 = v17 + v13 * 1.1;
  if ((*(&self->super.mDefaultScale + 1) & (mChildCount - 1 > index)) != 0)
  {
    v17 = v19;
  }

  mOrientedBounds = self->super.super.super.mOrientedBounds;

  return [CMShapeUtils internalBoundsWithBounds:mOrientedBounds scaleBounds:v18, (1.0 - v15) * 0.5, v17];
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  index = [(CMDiagramChevronMapper *)self _suggestedBoundsForNodeAtIndex:0, index];
  [index bounds];
  v6 = v5;
  v8 = v7 * 0.7;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

@end