@interface CMDiagramChevronMapper
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramChevronMapper

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
  [(CMDiagramChevronMapper *)self mapChildrenAt:v10 withState:v6];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v8 = [v7 children];

  v9 = [v8 count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v8 objectAtIndex:i];
      v12 = [(CMDiagramChevronMapper *)self _suggestedBoundsForNodeAtIndex:i];
      v13 = [(CMDiagramPointMapper *)[CMDiagramPointChevronMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v12 parent:self];
      [(CMDiagramPointChevronMapper *)v13 setIsHomePlate:(i == 0) & *(&self->super.mDefaultScale + 1)];
      [(CMDiagramPointChevronMapper *)v13 mapAt:v14 withState:v6];
    }
  }
}

- (id)_suggestedBoundsForNodeAtIndex:(unint64_t)a3
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

  v16 = v12 * 0.5 + a3 * v12 - v12 * 0.5;
  v17 = v13 / 3.0 + v12;
  if (a3)
  {
    v18 = v16 - v13 / 3.0;
  }

  else
  {
    v18 = v16;
  }

  if (!a3)
  {
    v17 = v17 - v13 / 3.0;
  }

  v19 = v17 + v13 * 1.1;
  if ((*(&self->super.mDefaultScale + 1) & (mChildCount - 1 > a3)) != 0)
  {
    v17 = v19;
  }

  mOrientedBounds = self->super.super.super.mOrientedBounds;

  return [CMShapeUtils internalBoundsWithBounds:mOrientedBounds scaleBounds:v18, (1.0 - v15) * 0.5, v17];
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(CMDiagramChevronMapper *)self _suggestedBoundsForNodeAtIndex:0, a4];
  [v4 bounds];
  v6 = v5;
  v8 = v7 * 0.7;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

@end