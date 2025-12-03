@interface CMDiagramPointChevronMapper
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointChevronMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  stroke = [(CMDiagramPointMapper *)self stroke];
  v10 = MEMORY[0x277CBEAC0];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->mHomePlate];
  v12 = [v10 dictionaryWithObject:v11 forKey:@"IsHomePlate"];
  [CMShapeRenderer renderCanonicalShape:55 fill:fill stroke:stroke adjustValues:v12 orientedBounds:self->super.mOrientedBounds state:stateCopy drawingContext:self->super.mDrawingContext];

  mDrawingContext = self->super.mDrawingContext;
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawingContext *)mDrawingContext transformRectToGroup:?];
  v14 = [OADOrientedBounds orientedBoundsWithBounds:?];
  v15 = [OIXMLElement elementWithType:3];
  v16 = objc_alloc_init(CMDrawableStyle);
  [v14 bounds];
  [(CMDrawableStyle *)v16 addPositionProperties:?];
  [atCopy addChild:v15];
  v17.receiver = self;
  v17.super_class = CMDiagramPointChevronMapper;
  [(CMMapper *)&v17 addStyleUsingGlobalCacheTo:v15 style:v16];
  [(CMDiagramPointMapper *)self mapTextAt:v15 withBounds:v14 isCentered:1 includeChildren:1 withState:stateCopy];
}

@end