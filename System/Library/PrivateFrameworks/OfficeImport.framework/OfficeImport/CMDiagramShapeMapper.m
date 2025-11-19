@interface CMDiagramShapeMapper
- (CGRect)circumscribedBounds;
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (CMDiagramShapeMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7;
- (float)setFonSizeForChildNode:(id)a3 atIndex:(unint64_t)a4 level:(int)a5;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)setDefaultFonSize;
@end

@implementation CMDiagramShapeMapper

- (void)setDefaultFonSize
{
  v6 = [(ODDDiagram *)self->super.mDiagram documentPoint];
  v3 = [v6 children];
  if (self->mChildCount)
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndex:v4];
      [(CMDiagramShapeMapper *)self setFonSizeForChildNode:v5 atIndex:v4];

      ++v4;
    }

    while (self->mChildCount > v4);
  }
}

- (CMDiagramShapeMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = CMDiagramShapeMapper;
  v17 = [(CMDiagramMapper *)&v22 initWithOddDiagram:v12 drawingContext:v13 orientedBounds:v14 parent:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->mIdentifier, a6);
    v19 = [(ODDDiagram *)v18->super.mDiagram documentPoint];
    v20 = [v19 children];
    v18->mChildCount = [v20 count];

    v18->mDefaultFontSize = 65.0;
    v18->mMaxMappableTreeDepth = 0;
    v18->mDefaultScale = 1.0;
  }

  return v18;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v6 addChild:v18];
  v27.receiver = self;
  v27.super_class = CMDiagramShapeMapper;
  [(CMMapper *)&v27 addStyleUsingGlobalCacheTo:v18 style:v17];
  v23 = v18;

  v24 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.mOrientedBounds bounds];
  v26 = v25;
  [(OADOrientedBounds *)self->super.super.mOrientedBounds bounds];
  [v24 translateXBy:v26 yBy:?];
  [(CMDrawingContext *)self->super.mDrawingContext addTransform:v24];
  [(CMDiagramShapeMapper *)self mapChildrenAt:v23 withState:v7];
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

- (float)setFonSizeForChildNode:(id)a3 atIndex:(unint64_t)a4 level:(int)a5
{
  v8 = a3;
  v37 = v8;
  v9 = [[CMDiagramPointMapper alloc] initWithPoint:v8 drawingContext:self->super.mDrawingContext orientedBounds:self->super.super.mOrientedBounds parent:self];
  [(CMDiagramShapeMapper *)self sizeForNode:v8 atIndex:a4];
  v11 = v10;
  v13 = v12;
  v14 = [(CMDiagramPointMapper *)v9 transformPresentationName];
  v35 = v14;
  if (v14)
  {
    v15 = [(CMDiagramPointMapper *)v9 transformForPresentationWithName:v14, v14, v8];
    v16 = v15;
    if (v15)
    {
      [v15 transformSize:{v11, v13}];
      v11 = v17;
      v13 = v18;
    }
  }

  [(CMDiagramShapeMapper *)self textSizeForShapeSize:v11, v13, v35];
  v20 = v19;
  v22 = v21;
  v23 = [(CMDiagramPointMapper *)v9 plainText];
  [CMShapeUtils fontSizeForText:v23 insideRectangle:v20, v22];
  v25 = v24;

  if (self->mDefaultFontSize > v25)
  {
    self->mDefaultFontSize = v25;
  }

  v26 = [v8 children];
  v27 = [v26 count];
  if (v27)
  {
    v28 = 0;
    v29 = 1.0;
    do
    {
      v30 = [v26 objectAtIndex:v28];
      [(CMDiagramShapeMapper *)self setFonSizeForChildNode:v30 atIndex:v28 level:(a5 + 1)];
      v32 = v29 + v31;
      if (self->mMaxMappableTreeDepth <= a5)
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

  if (self->mMaxMappableTreeDepth == a5 && v13 < ((v29 * self->mDefaultFontSize) * 1.2))
  {
    v33 = v13 / v29 / 1.20000005;
    self->mDefaultFontSize = v33;
  }

  return v29;
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds:a3];
  Width = CGRectGetWidth(v9);
  [(OADOrientedBounds *)self->mDiagramShapeBounds bounds];
  Height = CGRectGetHeight(v10);
  v7 = Width;
  result.height = Height;
  result.width = v7;
  return result;
}

@end