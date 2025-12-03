@interface CMDiagramPointContinuousArrowMapper
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointContinuousArrowMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  mDrawingContext = self->super.mDrawingContext;
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawingContext *)mDrawingContext transformRectToGroup:?];
  v9 = [OADOrientedBounds orientedBoundsWithBounds:?];
  v10 = [OIXMLElement elementWithType:3];
  v11 = objc_alloc_init(CMDrawableStyle);
  [v9 bounds];
  [(CMDrawableStyle *)v11 addPositionProperties:?];
  [atCopy addChild:v10];
  v12.receiver = self;
  v12.super_class = CMDiagramPointContinuousArrowMapper;
  [(CMMapper *)&v12 addStyleUsingGlobalCacheTo:v10 style:v11];
  [(CMDiagramPointMapper *)self mapTextAt:v10 withBounds:v9 isCentered:1 includeChildren:1 withState:stateCopy];
}

@end