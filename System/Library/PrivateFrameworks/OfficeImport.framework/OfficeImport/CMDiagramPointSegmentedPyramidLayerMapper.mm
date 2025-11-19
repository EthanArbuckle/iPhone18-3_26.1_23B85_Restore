@interface CMDiagramPointSegmentedPyramidLayerMapper
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPointSegmentedPyramidLayerMapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v26 = a3;
  v6 = a4;
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v7 = [(CMDiagramPointMapper *)self fill];
  v8 = [(CMDiagramPointMapper *)self stroke];
  v9 = MEMORY[0x277CBEAC0];
  LODWORD(v10) = 1195593728;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v13 = [v9 dictionaryWithObject:v11 forKey:v12];
  [CMShapeRenderer renderCanonicalShape:5 fill:v7 stroke:v8 adjustValues:v13 orientedBounds:self->super.mOrientedBounds state:v6 drawingContext:self->super.mDrawingContext];

  if (!self->mPlaceholder)
  {
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if ([(OADOrientedBounds *)self->super.mOrientedBounds flipY])
    {
      v22 = v17;
    }

    else
    {
      v22 = v17 + v21 * 0.5;
    }

    [(CMDrawingContext *)self->super.mDrawingContext transformRectToGroup:v15, v22, v19];
    v23 = [OADOrientedBounds orientedBoundsWithBounds:?];
    v24 = [OIXMLElement elementWithType:3];
    v25 = objc_alloc_init(CMDrawableStyle);
    [v23 bounds];
    [(CMDrawableStyle *)v25 addPositionProperties:?];
    [v26 addChild:v24];
    v27.receiver = self;
    v27.super_class = CMDiagramPointSegmentedPyramidLayerMapper;
    [(CMMapper *)&v27 addStyleUsingGlobalCacheTo:v24 style:v25];
    [(CMDiagramPointMapper *)self mapTextAt:v24 withBounds:v23 isCentered:1 includeChildren:1 withState:v6];
  }
}

@end