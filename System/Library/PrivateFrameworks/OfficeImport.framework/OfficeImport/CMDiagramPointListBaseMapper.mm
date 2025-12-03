@interface CMDiagramPointListBaseMapper
- (void)mapAt:(id)at withState:(id)state;
- (void)mapTextAt:(id)at withBounds:(id)bounds isCentered:(BOOL)centered includeChildren:(BOOL)children withState:(id)state;
@end

@implementation CMDiagramPointListBaseMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = objc_alloc_init(CMDrawableStyle);
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  stroke = [(CMDiagramPointMapper *)self stroke];
  [stroke width];
  v11 = v10;
  v12 = v10 * 0.5;
  if (v11 <= 1.5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v18 = CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v19 = [OADOrientedBounds orientedBoundsWithBounds:x - (v11 - v13), y - (v11 - v13), v18 - v13, CGRectGetHeight(v27) - v13];
  v20 = [OIXMLElement elementWithType:3];
  [v19 bounds];
  [(CMDrawableStyle *)v8 addPositionProperties:?];
  fill = [(CMDiagramPointMapper *)self fill];
  v22 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];

  [(CMStyle *)v8 appendPropertyForName:0x286F07DF0 color:v22];
  v23 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v23 setFromOadStroke:stroke atLocation:0 state:stateCopy];
  cssString = [(CMBordersProperty *)v23 cssString];
  [(CMStyle *)v8 appendPropertyString:cssString];

  [atCopy addChild:v20];
  v25.receiver = self;
  v25.super_class = CMDiagramPointListBaseMapper;
  [(CMMapper *)&v25 addStyleUsingGlobalCacheTo:v20 style:v8];
  [(CMDiagramPointListBaseMapper *)self mapTextAt:v20 withBounds:v19 isCentered:1 includeChildren:0 withState:stateCopy];
}

- (void)mapTextAt:(id)at withBounds:(id)bounds isCentered:(BOOL)centered includeChildren:(BOOL)children withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v12 = [(CMDiagramPointMapper *)self baseTextListStyleWithBounds:bounds isCentered:0];
  v13.receiver = self;
  v13.super_class = CMDiagramPointListBaseMapper;
  [(CMDiagramPointMapper *)&v13 mapSiblingTextAt:atCopy style:v12 level:1 withState:stateCopy];
}

@end