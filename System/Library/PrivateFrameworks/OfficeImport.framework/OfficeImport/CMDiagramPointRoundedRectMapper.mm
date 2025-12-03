@interface CMDiagramPointRoundedRectMapper
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointRoundedRectMapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  transformPresentationName = [(CMDiagramPointMapper *)self transformPresentationName];
  if (transformPresentationName)
  {
    v9 = [(CMDiagramPointMapper *)self transformForPresentationWithName:transformPresentationName];
    v10 = [CMShapeUtils transformedBoundsWithBounds:self->super.mOrientedBounds transform:v9];
  }

  else
  {
    v10 = self->super.mOrientedBounds;
  }

  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  stroke = [(CMDiagramPointMapper *)self stroke];
  [CMShapeRenderer renderCanonicalShape:2 fill:fill stroke:stroke adjustValues:0 orientedBounds:self->super.mOrientedBounds state:stateCopy drawingContext:self->super.mDrawingContext];

  plainText = [(CMDiagramPointMapper *)self plainText];

  if (plainText)
  {
    v14 = objc_alloc_init(CMDrawableStyle);
    v15 = [OIXMLElement elementWithType:3];
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    [(CMDrawableStyle *)v14 addPositionProperties:?];
    [atCopy addChild:v15];
    v17.receiver = self;
    v17.super_class = CMDiagramPointRoundedRectMapper;
    [(CMMapper *)&v17 addStyleUsingGlobalCacheTo:v15 style:v14];
    v16 = v15;

    [(CMDiagramPointMapper *)self mapTextAt:v16 withBounds:v10 isCentered:1 includeChildren:0 withState:stateCopy];
    [(CMDiagramPointMapper *)self mapChlidrenAt:v16 withState:stateCopy];
  }

  else
  {
    v16 = atCopy;
  }
}

@end