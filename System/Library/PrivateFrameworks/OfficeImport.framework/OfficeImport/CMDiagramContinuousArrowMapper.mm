@interface CMDiagramContinuousArrowMapper
- (CGSize)sizeForNode:(id)node;
- (id)_suggestedBoundsForNodeAtIndex:(int64_t)index;
- (id)fill;
- (id)stroke;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
@end

@implementation CMDiagramContinuousArrowMapper

- (id)fill
{
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  if ([children count])
  {
    v4 = [children objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shapeProperties = [v4 shapeProperties];
      fill = [shapeProperties fill];
    }

    else
    {
      fill = 0;
    }
  }

  else
  {
    fill = 0;
  }

  return fill;
}

- (id)stroke
{
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  if ([children count])
  {
    v4 = [children objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shapeProperties = [v4 shapeProperties];
      stroke = [shapeProperties stroke];
    }

    else
    {
      stroke = 0;
    }
  }

  else
  {
    stroke = 0;
  }

  return stroke;
}

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
  [(CMDiagramContinuousArrowMapper *)self mapChildrenAt:atCopy withState:stateCopy];
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
      v12 = [(CMDiagramContinuousArrowMapper *)self _suggestedBoundsForNodeAtIndex:i];
      v13 = [(CMDiagramPointMapper *)[CMDiagramPointContinuousArrowMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v12 parent:self];
      [(CMDiagramPointContinuousArrowMapper *)v13 mapAt:atCopy withState:stateCopy];
    }
  }

  v21 = [(CMDiagramContinuousArrowMapper *)self _suggestedBoundsForNodeAtIndex:-1];
  fill = [(CMDiagramContinuousArrowMapper *)self fill];
  stroke = [(CMDiagramContinuousArrowMapper *)self stroke];
  v16 = MEMORY[0x277CBEAC0];
  v17 = (self->super.mChildCount + 1) * 100000.0 / (self->super.mChildCount + 2);
  *&v17 = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v20 = [v16 dictionaryWithObject:v18 forKey:v19];
  [CMShapeRenderer renderCanonicalShape:13 fill:fill stroke:stroke adjustValues:v20 orientedBounds:v21 state:stateCopy drawingContext:self->super.super.mDrawingContext];
}

- (id)_suggestedBoundsForNodeAtIndex:(int64_t)index
{
  if (index < 0)
  {
    v3 = 1.0;
    v4 = 0.0;
    v6 = 0.0;
    v5 = 1.0;
  }

  else
  {
    v3 = 1.0 / (self->super.mChildCount + 0.5);
    v4 = v3 * index;
    v5 = 0.666666667;
    v6 = 0.166666667;
  }

  return [CMShapeUtils internalBoundsWithBounds:self->super.super.super.mOrientedBounds scaleBounds:v4, v6, v3, v5];
}

- (CGSize)sizeForNode:(id)node
{
  v3 = [(CMDiagramContinuousArrowMapper *)self _suggestedBoundsForNodeAtIndex:0];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end