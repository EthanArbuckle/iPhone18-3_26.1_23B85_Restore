@interface CMDiagramListMapper
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (CGSize)textSize;
- (float)setFonSizeForChildNode:(id)node atIndex:(unint64_t)index level:(int)level;
- (id)suggestedBoundsForHListItemWithIndex:(unint64_t)index;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
- (void)mapListItemAt:(id)at index:(unint64_t)index withState:(id)state;
- (void)setDefaultFonSize;
@end

@implementation CMDiagramListMapper

- (void)setDefaultFonSize
{
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];
  if (self->super.mChildCount)
  {
    v4 = 0;
    do
    {
      v5 = [children objectAtIndex:v4];
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

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
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
  width = [OADOrientedBounds orientedBoundsWithBounds:0.0, (v11 - Height) * 0.5, Width];
  mDiagramShapeBounds = self->super.mDiagramShapeBounds;
  self->super.mDiagramShapeBounds = width;

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [(CMDrawableStyle *)v13 addPositionProperties:?];
  [atCopy addChild:v14];
  v21.receiver = self;
  v21.super_class = CMDiagramListMapper;
  [(CMMapper *)&v21 addStyleUsingGlobalCacheTo:v14 style:v13];
  v17 = v14;

  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v20 = v19;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [transform translateXBy:v20 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramListMapper *)self mapChildrenAt:v17 withState:stateCopy];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if (self->super.mChildCount)
  {
    v7 = 0;
    do
    {
      [(CMDiagramListMapper *)self mapListItemAt:atCopy index:v7++ withState:stateCopy];
    }

    while (self->super.mChildCount > v7);
  }
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  v4 = [(CMDiagramListMapper *)self suggestedBoundsForHListItemWithIndex:index];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (float)setFonSizeForChildNode:(id)node atIndex:(unint64_t)index level:(int)level
{
  nodeCopy = node;
  v8 = [[CMDiagramPointMapper alloc] initWithPoint:nodeCopy drawingContext:self->super.super.mDrawingContext orientedBounds:self->super.super.super.mOrientedBounds parent:self];
  [(CMDiagramListMapper *)self textSize];
  v10 = v9;
  v12 = v11;
  plainText = [(CMDiagramPointMapper *)v8 plainText];
  [CMShapeUtils fontSizeForText:plainText insideRectangle:v10, v12];
  v15 = v14;

  if (self->super.mDefaultFontSize > v15)
  {
    self->super.mDefaultFontSize = v15;
  }

  children = [nodeCopy children];
  v17 = [children count];
  if (v17)
  {
    v18 = 0;
    v19 = 1.0;
    do
    {
      v20 = [children objectAtIndex:v18];
      [(CMDiagramListMapper *)self setFonSizeForChildNode:v20 atIndex:v18 level:(level + 1)];
      v22 = v19 + v21;
      if (self->super.mMaxMappableTreeDepth <= level)
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

- (id)suggestedBoundsForHListItemWithIndex:(unint64_t)index
{
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v5 = CGRectGetWidth(v9) / (self->super.mChildCount + ((self->super.mChildCount - 1) * 0.14));
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  Height = CGRectGetHeight(v10);

  return [OADOrientedBounds orientedBoundsWithBounds:v5 * index * 1.13999999, 0.0, v5, Height];
}

- (void)mapListItemAt:(id)at index:(unint64_t)index withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v9 = [(CMDiagramListMapper *)self suggestedBoundsForHListItemWithIndex:index];
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];
  v12 = [children objectAtIndex:index];

  v13 = [[CMDiagramPointListItemL1Mapper alloc] initWithPoint:v12 drawingContext:self->super.super.mDrawingContext orientedBounds:v9 listIndex:index parent:self];
  [(CMDiagramPointListItemL1Mapper *)v13 mapAt:atCopy withState:stateCopy];
}

@end