@interface CMDiagramListMapper
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (CGSize)textSize;
- (float)setFonSizeForChildNode:(id)a3 atIndex:(unint64_t)a4 level:(int)a5;
- (id)suggestedBoundsForHListItemWithIndex:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
- (void)mapListItemAt:(id)a3 index:(unint64_t)a4 withState:(id)a5;
- (void)setDefaultFonSize;
@end

@implementation CMDiagramListMapper

- (void)setDefaultFonSize
{
  v9 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v3 = [v9 children];
  if (self->super.mChildCount)
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndex:v4];
      [(CMDiagramListMapper *)self setFonSizeForChildNode:v5 atIndex:v4 level:0];

      ++v4;
    }

    while (self->super.mChildCount > v4);
  }

  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v6 = CGRectGetHeight(v11) / ((*(&self->super.mDefaultScale + 1) * 1.5) + 0.5);
  if (self->super.mDefaultFontSize > v6)
  {
    self->super.mDefaultFontSize = v6;
  }

  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v7 = CGRectGetWidth(v12) / (self->super.mChildCount + ((self->super.mChildCount - 1) * 0.14));
  v8 = v7 * 0.25;
  if (self->super.mDefaultFontSize > v8)
  {
    self->super.mDefaultFontSize = v8;
  }
}

- (CGSize)textSize
{
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v3 = CGRectGetWidth(v6) / (self->super.mChildCount + ((self->super.mChildCount - 1) * 0.14));
  v4 = 97.5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  *(&self->super.mDefaultScale + 1) = 1077936128;
  [(CMDiagramListMapper *)self setDefaultFonSize];
  mDefaultFontSize = self->super.mDefaultFontSize;
  v9 = *(&self->super.mDefaultScale + 1);
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  Height = (mDefaultFontSize * 0.5) + ((mDefaultFontSize * 1.5) * v9);
  if (CGRectGetHeight(v22) < Height)
  {
    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    Height = CGRectGetHeight(v23);
  }

  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v11 = CGRectGetHeight(v24);
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  Width = CGRectGetWidth(v25);
  v13 = objc_alloc_init(CMDrawableStyle);
  v14 = [OIXMLElement elementWithType:3];
  v15 = [OADOrientedBounds orientedBoundsWithBounds:0.0, (v11 - Height) * 0.5, Width];
  mDiagramShapeBounds = self->super.mDiagramShapeBounds;
  self->super.mDiagramShapeBounds = v15;

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [(CMDrawableStyle *)v13 addPositionProperties:?];
  [v6 addChild:v14];
  v21.receiver = self;
  v21.super_class = CMDiagramListMapper;
  [(CMMapper *)&v21 addStyleUsingGlobalCacheTo:v14 style:v13];
  v17 = v14;

  v18 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v20 = v19;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [v18 translateXBy:v20 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v18];
  [(CMDiagramListMapper *)self mapChildrenAt:v17 withState:v7];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->super.mChildCount)
  {
    v7 = 0;
    do
    {
      [(CMDiagramListMapper *)self mapListItemAt:v8 index:v7++ withState:v6];
    }

    while (self->super.mChildCount > v7);
  }
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(CMDiagramListMapper *)self suggestedBoundsForHListItemWithIndex:a4];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (float)setFonSizeForChildNode:(id)a3 atIndex:(unint64_t)a4 level:(int)a5
{
  v7 = a3;
  v8 = [[CMDiagramPointMapper alloc] initWithPoint:v7 drawingContext:self->super.super.mDrawingContext orientedBounds:self->super.super.super.mOrientedBounds parent:self];
  [(CMDiagramListMapper *)self textSize];
  v10 = v9;
  v12 = v11;
  v13 = [(CMDiagramPointMapper *)v8 plainText];
  [CMShapeUtils fontSizeForText:v13 insideRectangle:v10, v12];
  v15 = v14;

  if (self->super.mDefaultFontSize > v15)
  {
    self->super.mDefaultFontSize = v15;
  }

  v16 = [v7 children];
  v17 = [v16 count];
  if (v17)
  {
    v18 = 0;
    v19 = 1.0;
    do
    {
      v20 = [v16 objectAtIndex:v18];
      [(CMDiagramListMapper *)self setFonSizeForChildNode:v20 atIndex:v18 level:(a5 + 1)];
      v22 = v19 + v21;
      if (self->super.mMaxMappableTreeDepth <= a5)
      {
        v19 = v22;
      }

      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v19 = 1.0;
  }

  if (*(&self->super.mDefaultScale + 1) < v19)
  {
    *(&self->super.mDefaultScale + 1) = v19;
  }

  return v19;
}

- (id)suggestedBoundsForHListItemWithIndex:(unint64_t)a3
{
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v5 = CGRectGetWidth(v9) / (self->super.mChildCount + ((self->super.mChildCount - 1) * 0.14));
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  Height = CGRectGetHeight(v10);

  return [OADOrientedBounds orientedBoundsWithBounds:v5 * a3 * 1.13999999, 0.0, v5, Height];
}

- (void)mapListItemAt:(id)a3 index:(unint64_t)a4 withState:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [(CMDiagramListMapper *)self suggestedBoundsForHListItemWithIndex:a4];
  v10 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v11 = [v10 children];
  v12 = [v11 objectAtIndex:a4];

  v13 = [[CMDiagramPointListItemL1Mapper alloc] initWithPoint:v12 drawingContext:self->super.super.mDrawingContext orientedBounds:v9 listIndex:a4 parent:self];
  [(CMDiagramPointListItemL1Mapper *)v13 mapAt:v14 withState:v8];
}

@end