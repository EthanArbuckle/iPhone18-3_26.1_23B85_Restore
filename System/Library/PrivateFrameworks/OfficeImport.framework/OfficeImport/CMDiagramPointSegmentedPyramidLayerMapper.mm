@interface CMDiagramPointSegmentedPyramidLayerMapper
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointSegmentedPyramidLayerMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  stroke = [(CMDiagramPointMapper *)self stroke];
  v9 = MEMORY[0x277CBEAC0];
  LODWORD(v10) = 1195593728;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v13 = [v9 dictionaryWithObject:v11 forKey:v12];
  [CMShapeRenderer renderCanonicalShape:5 fill:fill stroke:stroke adjustValues:v13 orientedBounds:self->super.mOrientedBounds state:stateCopy drawingContext:self->super.mDrawingContext];

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
    [atCopy addChild:v24];
    v27.receiver = self;
    v27.super_class = CMDiagramPointSegmentedPyramidLayerMapper;
    [(CMMapper *)&v27 addStyleUsingGlobalCacheTo:v24 style:v25];
    [(CMDiagramPointMapper *)self mapTextAt:v24 withBounds:v23 isCentered:1 includeChildren:1 withState:stateCopy];
  }
}

@end