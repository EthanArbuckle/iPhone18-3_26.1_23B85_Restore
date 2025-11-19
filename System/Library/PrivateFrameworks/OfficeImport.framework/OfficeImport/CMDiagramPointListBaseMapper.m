@interface CMDiagramPointListBaseMapper
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapTextAt:(id)a3 withBounds:(id)a4 isCentered:(BOOL)a5 includeChildren:(BOOL)a6 withState:(id)a7;
@end

@implementation CMDiagramPointListBaseMapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CMDrawableStyle);
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v9 = [(CMDiagramPointMapper *)self stroke];
  [v9 width];
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
  v21 = [(CMDiagramPointMapper *)self fill];
  v22 = [CMColorProperty nsColorFromOADFill:v21 state:v7];

  [(CMStyle *)v8 appendPropertyForName:0x286F07DF0 color:v22];
  v23 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v23 setFromOadStroke:v9 atLocation:0 state:v7];
  v24 = [(CMBordersProperty *)v23 cssString];
  [(CMStyle *)v8 appendPropertyString:v24];

  [v6 addChild:v20];
  v25.receiver = self;
  v25.super_class = CMDiagramPointListBaseMapper;
  [(CMMapper *)&v25 addStyleUsingGlobalCacheTo:v20 style:v8];
  [(CMDiagramPointListBaseMapper *)self mapTextAt:v20 withBounds:v19 isCentered:1 includeChildren:0 withState:v7];
}

- (void)mapTextAt:(id)a3 withBounds:(id)a4 isCentered:(BOOL)a5 includeChildren:(BOOL)a6 withState:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(CMDiagramPointMapper *)self baseTextListStyleWithBounds:a4 isCentered:0];
  v13.receiver = self;
  v13.super_class = CMDiagramPointListBaseMapper;
  [(CMDiagramPointMapper *)&v13 mapSiblingTextAt:v10 style:v12 level:1 withState:v11];
}

@end