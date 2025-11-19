@interface CMDiagramPointTextMapper
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPointTextMapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CMDiagramPointMapper *)self transformPresentationName];
  if (v8)
  {
    v9 = [(CMDiagramPointMapper *)self transformForPresentationWithName:v8];
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
  [v6 addChild:v12];
  v14.receiver = self;
  v14.super_class = CMDiagramPointTextMapper;
  [(CMMapper *)&v14 addStyleUsingGlobalCacheTo:v12 style:v11];
  v13 = v12;

  [(CMDiagramPointMapper *)self mapTextAt:v13 withBounds:v10 isCentered:1 includeChildren:0 withState:v7];
}

@end