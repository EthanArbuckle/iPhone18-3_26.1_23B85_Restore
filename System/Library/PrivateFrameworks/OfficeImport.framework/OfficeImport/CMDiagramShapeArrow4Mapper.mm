@interface CMDiagramShapeArrow4Mapper
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenAt:(id)at withState:(id)state;
@end

@implementation CMDiagramShapeArrow4Mapper

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  transform = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [transform translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramShapeArrow4Mapper *)self mapChildrenAt:atCopy withState:stateCopy];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  v9 = [children count];
  if (v9)
  {
    v41 = stateCopy;
    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    v10 = CGRectGetHeight(v46) * 0.479999989;
    Height = v10;
    if (v9 == 1)
    {
      [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
      Height = CGRectGetHeight(v47);
    }

    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    Width = CGRectGetWidth(v48);
    documentPoint2 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
    children2 = [documentPoint2 children];
    v40 = [children2 objectAtIndex:0];

    v15 = v10;
    v16 = Height;
    height = [[OADOrientedBounds alloc] initWithBounds:0.0, 0.0, v10, Height];
    v17 = [[CMDiagramPointMapper alloc] initWithPoint:v40 drawingContext:self->super.super.mDrawingContext orientedBounds:height parent:self];
    [(CMDiagramPointMapper *)v17 setPresentationName:@"upArrow"];
    [(CMDiagramPointMapper *)v17 applyDiagramStyleToShapeProperties];
    fill = [(CMDiagramPointMapper *)v17 fill];
    stroke = [(CMDiagramPointMapper *)v17 stroke];
    [CMShapeRenderer renderCanonicalShape:248 fill:fill stroke:stroke adjustValues:0 orientedBounds:height state:stateCopy drawingContext:self->super.super.mDrawingContext];

    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    v20 = Width * 0.100000001;
    v21 = v10 + 1.0;
    v22 = (v10 + 1.0);
    v23 = CGRectGetWidth(v49) - v15 - v20;
    height2 = [[OADOrientedBounds alloc] initWithBounds:v22, 0.0, v23, Height];
    v25 = objc_alloc_init(CMDrawableStyle);
    v26 = [OIXMLElement elementWithType:3];
    [(CMDrawableStyle *)v25 addPositionProperties:v22, 0.0, v23, Height];
    [atCopy addChild:v26];
    v45.receiver = self;
    v45.super_class = CMDiagramShapeArrow4Mapper;
    [(CMMapper *)&v45 addStyleUsingGlobalCacheTo:v26 style:v25];
    [(CMDiagramPointMapper *)v17 setPresentationName:@"upArrowText"];
    [(CMDiagramPointMapper *)v17 applyDiagramStyleToShapeProperties];
    [(CMDiagramPointMapper *)v17 mapTextAt:v26 withBounds:height2 isCentered:1 includeChildren:0 withState:v41];
    if (v9 == 1)
    {
      v27 = v26;
      v28 = v25;
    }

    else
    {
      v37 = height2;
      documentPoint3 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
      children3 = [documentPoint3 children];
      v39 = [children3 objectAtIndex:1];

      v31 = (Height + 1.0);
      height3 = [[OADOrientedBounds alloc] initWithBounds:v20, v31, v15, Height];
      [(OADOrientedBounds *)height3 setFlipY:1];
      v32 = [[CMDiagramPointMapper alloc] initWithPoint:v39 drawingContext:self->super.super.mDrawingContext orientedBounds:height parent:self];
      [(CMDiagramPointMapper *)v32 setPresentationName:@"downArrow"];
      [(CMDiagramPointMapper *)v32 applyDiagramStyleToShapeProperties];
      fill2 = [(CMDiagramPointMapper *)v32 fill];
      stroke2 = [(CMDiagramPointMapper *)v32 stroke];
      [CMShapeRenderer renderCanonicalShape:248 fill:fill2 stroke:stroke2 adjustValues:0 orientedBounds:height3 state:v41 drawingContext:self->super.super.mDrawingContext];

      [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
      v35 = CGRectGetWidth(v50) - v15 - v20;
      v36 = [[OADOrientedBounds alloc] initWithBounds:(v21 + v20), v31, v35, v16];
      v28 = objc_alloc_init(CMDrawableStyle);

      v27 = [OIXMLElement elementWithType:3];

      [(CMDrawableStyle *)v28 addPositionProperties:(v21 + v20), v31, v35, v16];
      [atCopy addChild:v27];
      v44.receiver = self;
      v44.super_class = CMDiagramShapeArrow4Mapper;
      [(CMMapper *)&v44 addStyleUsingGlobalCacheTo:v27 style:v28];
      [(CMDiagramPointMapper *)v32 setPresentationName:@"downArrowText"];
      [(CMDiagramPointMapper *)v32 applyDiagramStyleToShapeProperties];
      [(CMDiagramPointMapper *)v32 mapTextAt:v27 withBounds:v36 isCentered:1 includeChildren:0 withState:v41];

      height2 = v37;
    }

    stateCopy = v41;
  }
}

@end