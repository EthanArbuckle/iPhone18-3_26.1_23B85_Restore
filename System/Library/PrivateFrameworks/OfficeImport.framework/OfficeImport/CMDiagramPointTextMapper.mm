@interface CMDiagramPointTextMapper
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointTextMapper

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
  v11 = objc_alloc_init(CMDrawableStyle);
  v12 = [OIXMLElement elementWithType:3];
  [(OADOrientedBounds *)v10 bounds];
  [(CMDrawableStyle *)v11 addPositionProperties:?];
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  [atCopy addChild:v12];
  v14.receiver = self;
  v14.super_class = CMDiagramPointTextMapper;
  [(CMMapper *)&v14 addStyleUsingGlobalCacheTo:v12 style:v11];
  v13 = v12;

  [(CMDiagramPointMapper *)self mapTextAt:v13 withBounds:v10 isCentered:1 includeChildren:0 withState:stateCopy];
}

@end