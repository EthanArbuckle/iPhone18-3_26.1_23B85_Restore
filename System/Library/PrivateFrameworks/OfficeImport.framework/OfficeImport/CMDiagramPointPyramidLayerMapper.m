@interface CMDiagramPointPyramidLayerMapper
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPointPyramidLayerMapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v18 = a3;
  v6 = a4;
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v7 = [(CMDiagramPointMapper *)self fill];
  v8 = [(CMDiagramPointMapper *)self stroke];
  v9 = MEMORY[0x277CBEAC0];
  mPyramidAspectRatio = self->mPyramidAspectRatio;
  *&mPyramidAspectRatio = mPyramidAspectRatio;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:mPyramidAspectRatio];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v13 = [v9 dictionaryWithObject:v11 forKey:v12];
  [CMShapeRenderer renderCanonicalShape:249 fill:v7 stroke:v8 adjustValues:v13 orientedBounds:self->super.mOrientedBounds state:v6 drawingContext:self->super.mDrawingContext];

  mDrawingContext = self->super.mDrawingContext;
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawingContext *)mDrawingContext transformRectToGroup:?];
  v15 = [OADOrientedBounds orientedBoundsWithBounds:?];
  v16 = [OIXMLElement elementWithType:3];
  v17 = objc_alloc_init(CMDrawableStyle);
  [v15 bounds];
  [(CMDrawableStyle *)v17 addPositionProperties:?];
  [v18 addChild:v16];
  v19.receiver = self;
  v19.super_class = CMDiagramPointPyramidLayerMapper;
  [(CMMapper *)&v19 addStyleUsingGlobalCacheTo:v16 style:v17];
  [(CMDiagramPointMapper *)self mapTextAt:v16 withBounds:v15 isCentered:1 includeChildren:1 withState:v6];
}

@end