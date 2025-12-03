@interface CMDiagramPointArrowMapper
- (CMDiagramPointArrowMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent;
- (id)getTextBoundsForBounds:(id)bounds;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointArrowMapper

- (CMDiagramPointArrowMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent
{
  v13.receiver = self;
  v13.super_class = CMDiagramPointArrowMapper;
  v6 = [(CMDiagramPointMapper *)&v13 initWithPoint:point drawingContext:context orientedBounds:bounds parent:parent];
  v7 = v6;
  if (v6)
  {
    [(OADOrientedBounds *)v6->super.mOrientedBounds rotation];
    if (v8 == -90.0 || v8 == 90.0)
    {
      v10 = 247;
    }

    else
    {
      v10 = 248;
    }

    v7->mArrowType = v10;
    v11 = v7;
  }

  return v7;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v20 = [(CMDiagramPointMapper *)self transformForPresentationWithName:@"arrow"];
  v7 = [CMShapeUtils transformedBoundsWithBounds:self->super.mOrientedBounds transform:v20];
  [v7 rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    [v7 bounds];
    [v7 setBounds:{NSTransposedRectWithSameCenter(v8, v9, v10, v11)}];
  }

  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  stroke = [(CMDiagramPointMapper *)self stroke];
  [CMShapeRenderer renderCanonicalShape:248 fill:fill stroke:stroke adjustValues:0 orientedBounds:v7 state:stateCopy drawingContext:self->super.mDrawingContext];

  v14 = objc_alloc_init(CMDrawableStyle);
  v15 = [OIXMLElement elementWithType:3];
  [v7 bounds];
  [(CMDrawableStyle *)v14 addPositionProperties:?];
  [atCopy addChild:v15];
  v23.receiver = self;
  v23.super_class = CMDiagramPointArrowMapper;
  [(CMMapper *)&v23 addStyleUsingGlobalCacheTo:v15 style:v14];
  v16 = v15;

  v17 = objc_alloc_init(CMDrawableStyle);
  v18 = [OIXMLElement elementWithType:3];

  v19 = [(CMDiagramPointArrowMapper *)self getTextBoundsForBounds:v7];
  [v19 bounds];
  [(CMDrawableStyle *)v17 addPositionProperties:?];
  [v16 addChild:v18];
  v22.receiver = self;
  v22.super_class = CMDiagramPointArrowMapper;
  [(CMMapper *)&v22 addStyleUsingGlobalCacheTo:v18 style:v17];
  [(CMDiagramPointMapper *)self mapTextAt:v18 withBounds:v19 isCentered:1 includeChildren:1 withState:stateCopy];
}

- (id)getTextBoundsForBounds:(id)bounds
{
  boundsCopy = bounds;
  v5 = boundsCopy;
  if (self->mArrowType == 248)
  {
    [boundsCopy bounds];
    Width = CGRectGetWidth(v24);
    [v5 bounds];
    Height = CGRectGetHeight(v25);
    [v5 bounds];
    v8 = CGRectGetWidth(v26);
    [v5 rotation];
    v9 = Width * 0.5;
    v10 = Height * 0.699999988;
    v11 = v8 * 0.25;
    v12 = 0.0;
    if (v13 <= 0.0)
    {
      [v5 bounds];
      v12 = CGRectGetHeight(v27) * 0.300000012;
    }
  }

  else
  {
    [boundsCopy bounds];
    v14 = CGRectGetWidth(v28);
    [v5 bounds];
    v15 = CGRectGetHeight(v29);
    [v5 bounds];
    v16 = CGRectGetHeight(v30);
    [v5 rotation];
    v9 = v14 * 0.699999988;
    v10 = v15 * 0.5;
    v12 = v16 * 0.25;
    v11 = 0.0;
    if (v17 <= 0.0)
    {
      [v5 bounds];
      v11 = CGRectGetWidth(v31) * 0.300000012;
    }
  }

  v18 = [OADOrientedBounds alloc];
  v19 = v9;
  v20 = v10;
  v21 = [(OADOrientedBounds *)v18 initWithBounds:v11, v12, v19, v20];

  return v21;
}

@end