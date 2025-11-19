@interface CMDiagramSegmentedPyramidMapper
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (id)_suggestedBoundsForPyramidLayerWithIndex:(unint64_t)a3 inLayer:(unint64_t)a4 andSlice:(unint64_t)a5;
- (unint64_t)layerCount;
- (unint64_t)pointCount;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramSegmentedPyramidMapper

- (unint64_t)pointCount
{
  if (self->super.mChildCount >= 9)
  {
    return 9;
  }

  else
  {
    return self->super.mChildCount;
  }
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v16 = a3;
  v6 = a4;
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  if (v9 <= v10)
  {
    if (v9 >= v10)
    {
      goto LABEL_6;
    }

    v8 = v8 + (v10 - v9) * 0.5;
    v10 = v9;
  }

  else
  {
    v7 = v7 + (v9 - v10) * 0.5;
  }

  v11 = [OADOrientedBounds orientedBoundsWithBounds:v7, v8, v10];
  mOrientedBounds = self->super.super.super.mOrientedBounds;
  self->super.super.super.mOrientedBounds = v11;

LABEL_6:
  v13 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v15 = v14;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [v13 translateXBy:v15 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v13];
  [(CMDiagramSegmentedPyramidMapper *)self mapChildrenAt:v16 withState:v6];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v8 = [v7 children];

  v9 = [(CMDiagramSegmentedPyramidMapper *)self pointCount];
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [v8 objectAtIndex:v10];
      v14 = [(CMDiagramSegmentedPyramidMapper *)self _suggestedBoundsForPyramidLayerWithIndex:v10 inLayer:v11 andSlice:v12];
      v15 = v14;
      if (v12)
      {
        [v14 setFlipY:1];
      }

      v16 = [(CMDiagramPointMapper *)[CMDiagramPointSegmentedPyramidLayerMapper alloc] initWithPoint:v13 drawingContext:self->super.super.mDrawingContext orientedBounds:v15 parent:self];
      [(CMDiagramPointSegmentedPyramidLayerMapper *)v16 mapAt:v24 withState:v6];
      v17 = v12 + 1 > (2 * v11);
      if (v12 + 1 <= (2 * v11))
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      if (v17)
      {
        ++v11;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v18 = v12 - 1;
  if (v12 - 1 < (2 * v11))
  {
    do
    {
      v19 = [(CMDiagramSegmentedPyramidMapper *)self _suggestedBoundsForPyramidLayerWithIndex:v9 inLayer:v11 andSlice:v18 + 1];
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        [v19 setFlipY:1];
      }

      v21 = [CMDiagramPointSegmentedPyramidLayerMapper alloc];
      v22 = [v8 objectAtIndex:0];
      v23 = [(CMDiagramPointMapper *)v21 initWithPoint:v22 drawingContext:self->super.super.mDrawingContext orientedBounds:v20 parent:self];

      [(CMDiagramPointSegmentedPyramidLayerMapper *)v23 setIsPlaceholder:1];
      [(CMDiagramPointSegmentedPyramidLayerMapper *)v23 mapAt:v24 withState:v6];

      ++v18;
      ++v9;
    }

    while (2 * v11 != v18);
  }
}

- (unint64_t)layerCount
{
  v2 = [(CMDiagramSegmentedPyramidMapper *)self pointCount];
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (v3 + 1 <= ((2 * v4) | 1uLL))
    {
      ++v3;
    }

    else
    {
      ++v4;
      v3 = 0;
    }

    --v2;
  }

  while (v2);
  return v4 + 1;
}

- (id)_suggestedBoundsForPyramidLayerWithIndex:(unint64_t)a3 inLayer:(unint64_t)a4 andSlice:(unint64_t)a5
{
  v8 = [(CMDiagramSegmentedPyramidMapper *)self layerCount];
  v9 = (1.0 / v8);
  v10 = (a4 + 1);
  v11 = v10 * v9;
  if (a4)
  {
    v12 = 0.5 - v10 * v9 * 0.5;
    v13 = a4 * v9;
    v14 = (1.0 / v8);
    v11 = CGRectGetWidth(*(&v11 - 2)) / v10;
  }

  mOrientedBounds = self->super.super.super.mOrientedBounds;

  return [CMShapeUtils internalBoundsWithBounds:mOrientedBounds scaleBounds:0.5 - v10 * v9 * 0.5 + v11 * a5 * 0.5, a4 * v9];
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(CMDiagramSegmentedPyramidMapper *)self _suggestedBoundsForPyramidLayerWithIndex:0 inLayer:0 andSlice:0];
  [v4 bounds];
  v6 = v5 * 0.5;
  v8 = v7 / 3.0;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

@end