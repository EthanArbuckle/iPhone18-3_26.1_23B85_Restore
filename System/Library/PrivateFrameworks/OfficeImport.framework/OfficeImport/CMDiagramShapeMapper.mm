@interface CMDiagramShapeMapper
- (CGRect)circumscribedBounds;
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (CMDiagramShapeMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent;
- (float)setFonSizeForChildNode:(id)node atIndex:(unint64_t)index level:(int)level;
- (void)mapAt:(id)at withState:(id)state;
- (void)setDefaultFonSize;
@end

@implementation CMDiagramShapeMapper

- (void)setDefaultFonSize
{
  documentPoint = [(ODDDiagram *)self->super.mDiagram documentPoint];
  children = [documentPoint children];
  if (self->mChildCount)
  {
    v4 = 0;
    do
    {
      v5 = [children objectAtIndex:v4];
      [(CMDiagramShapeMapper *)self setFonSizeForChildNode:v5 atIndex:v4];

      ++v4;
    }

    while (self->mChildCount > v4);
  }
}

- (CMDiagramShapeMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent
{
  diagramCopy = diagram;
  contextCopy = context;
  boundsCopy = bounds;
  identifierCopy = identifier;
  parentCopy = parent;
  v22.receiver = self;
  v22.super_class = CMDiagramShapeMapper;
  v17 = [(CMDiagramMapper *)&v22 initWithOddDiagram:diagramCopy drawingContext:contextCopy orientedBounds:boundsCopy parent:parentCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->mIdentifier, identifier);
    documentPoint = [(ODDDiagram *)v18->super.mDiagram documentPoint];
    children = [documentPoint children];
    v18->mChildCount = [children count];

    v18->mDefaultFontSize = 65.0;
    v18->mMaxMappableTreeDepth = 0;
    v18->mDefaultScale = 1.0;
  }

  return v18;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramShapeMapper *)self circumscribedBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [CMShapeUtils inscribedBoundsWithBounds:self->super.super.mOrientedBounds logicalBounds:?];
  v17 = objc_alloc_init(CMDrawableStyle);
  v18 = [OIXMLElement elementWithType:3];
  v19 = [CMShapeUtils relatvieBoundsWithAbsoluteInnerBounds:v16 parentBounds:self->super.super.mOrientedBounds];
  mDiagramShapeBounds = self->mDiagramShapeBounds;
  self->mDiagramShapeBounds = v19;

  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds];
  Width = CGRectGetWidth(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  v22 = Width / CGRectGetWidth(v29);
  self->mDefaultScale = v22;
  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds];
  [(CMDrawableStyle *)v17 addPositionProperties:?];
  [atCopy addChild:v18];
  v27.receiver = self;
  v27.super_class = CMDiagramShapeMapper;
  [(CMMapper *)&v27 addStyleUsingGlobalCacheTo:v18 style:v17];
  v23 = v18;

  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.mOrientedBounds bounds];
  v26 = v25;
  [(OADOrientedBounds *)self->super.super.mOrientedBounds bounds];
  [transform translateXBy:v26 yBy:?];
  [(CMDrawingContext *)self->super.mDrawingContext addTransform:transform];
  [(CMDiagramShapeMapper *)self mapChildrenAt:v23 withState:stateCopy];
  [(CMDrawingContext *)self->super.mDrawingContext restoreLastTransform];
}

- (CGRect)circumscribedBounds
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (float)setFonSizeForChildNode:(id)node atIndex:(unint64_t)index level:(int)level
{
  nodeCopy = node;
  v37 = nodeCopy;
  v9 = [[CMDiagramPointMapper alloc] initWithPoint:nodeCopy drawingContext:self->super.mDrawingContext orientedBounds:self->super.super.mOrientedBounds parent:self];
  [(CMDiagramShapeMapper *)self sizeForNode:nodeCopy atIndex:index];
  v11 = v10;
  v13 = v12;
  transformPresentationName = [(CMDiagramPointMapper *)v9 transformPresentationName];
  v35 = transformPresentationName;
  if (transformPresentationName)
  {
    nodeCopy = [(CMDiagramPointMapper *)v9 transformForPresentationWithName:transformPresentationName, transformPresentationName, nodeCopy];
    v16 = nodeCopy;
    if (nodeCopy)
    {
      [nodeCopy transformSize:{v11, v13}];
      v11 = v17;
      v13 = v18;
    }
  }

  [(CMDiagramShapeMapper *)self textSizeForShapeSize:v11, v13, v35];
  v20 = v19;
  v22 = v21;
  plainText = [(CMDiagramPointMapper *)v9 plainText];
  [CMShapeUtils fontSizeForText:plainText insideRectangle:v20, v22];
  v25 = v24;

  if (self->mDefaultFontSize > v25)
  {
    self->mDefaultFontSize = v25;
  }

  children = [nodeCopy children];
  v27 = [children count];
  if (v27)
  {
    v28 = 0;
    v29 = 1.0;
    do
    {
      v30 = [children objectAtIndex:v28];
      [(CMDiagramShapeMapper *)self setFonSizeForChildNode:v30 atIndex:v28 level:(level + 1)];
      v32 = v29 + v31;
      if (self->mMaxMappableTreeDepth <= level)
      {
        v29 = v32;
      }

      ++v28;
    }

    while (v27 != v28);
  }

  else
  {
    v29 = 1.0;
  }

  if (self->mMaxMappableTreeDepth == level && v13 < ((v29 * self->mDefaultFontSize) * 1.2))
  {
    v33 = v13 / v29 / 1.20000005;
    self->mDefaultFontSize = v33;
  }

  return v29;
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds:node];
  Width = CGRectGetWidth(v9);
  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds];
  Height = CGRectGetHeight(v10);
  v7 = Width;
  result.height = Height;
  result.width = v7;
  return result;
}

@end