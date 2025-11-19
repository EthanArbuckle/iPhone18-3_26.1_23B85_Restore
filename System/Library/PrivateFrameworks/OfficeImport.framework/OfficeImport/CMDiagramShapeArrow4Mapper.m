@interface CMDiagramShapeArrow4Mapper
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramShapeArrow4Mapper

- (void)mapAt:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
  [v7 translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v7];
  [(CMDiagramShapeArrow4Mapper *)self mapChildrenAt:v10 withState:v6];
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v43 = a3;
  v6 = a4;
  v7 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v8 = [v7 children];

  v9 = [v8 count];
  if (v9)
  {
    v41 = v6;
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
    v13 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
    v14 = [v13 children];
    v40 = [v14 objectAtIndex:0];

    v15 = v10;
    v16 = Height;
    v42 = [[OADOrientedBounds alloc] initWithBounds:0.0, 0.0, v10, Height];
    v17 = [[CMDiagramPointMapper alloc] initWithPoint:v40 drawingContext:self->super.super.mDrawingContext orientedBounds:v42 parent:self];
    [(CMDiagramPointMapper *)v17 setPresentationName:@"upArrow"];
    [(CMDiagramPointMapper *)v17 applyDiagramStyleToShapeProperties];
    v18 = [(CMDiagramPointMapper *)v17 fill];
    v19 = [(CMDiagramPointMapper *)v17 stroke];
    [CMShapeRenderer renderCanonicalShape:248 fill:v18 stroke:v19 adjustValues:0 orientedBounds:v42 state:v6 drawingContext:self->super.super.mDrawingContext];

    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    v20 = Width * 0.100000001;
    v21 = v10 + 1.0;
    v22 = (v10 + 1.0);
    v23 = CGRectGetWidth(v49) - v15 - v20;
    v24 = [[OADOrientedBounds alloc] initWithBounds:v22, 0.0, v23, Height];
    v25 = objc_alloc_init(CMDrawableStyle);
    v26 = [OIXMLElement elementWithType:3];
    [(CMDrawableStyle *)v25 addPositionProperties:v22, 0.0, v23, Height];
    [v43 addChild:v26];
    v45.receiver = self;
    v45.super_class = CMDiagramShapeArrow4Mapper;
    [(CMMapper *)&v45 addStyleUsingGlobalCacheTo:v26 style:v25];
    [(CMDiagramPointMapper *)v17 setPresentationName:@"upArrowText"];
    [(CMDiagramPointMapper *)v17 applyDiagramStyleToShapeProperties];
    [(CMDiagramPointMapper *)v17 mapTextAt:v26 withBounds:v24 isCentered:1 includeChildren:0 withState:v41];
    if (v9 == 1)
    {
      v27 = v26;
      v28 = v25;
    }

    else
    {
      v37 = v24;
      v29 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
      v30 = [v29 children];
      v39 = [v30 objectAtIndex:1];

      v31 = (Height + 1.0);
      v38 = [[OADOrientedBounds alloc] initWithBounds:v20, v31, v15, Height];
      [(OADOrientedBounds *)v38 setFlipY:1];
      v32 = [[CMDiagramPointMapper alloc] initWithPoint:v39 drawingContext:self->super.super.mDrawingContext orientedBounds:v42 parent:self];
      [(CMDiagramPointMapper *)v32 setPresentationName:@"downArrow"];
      [(CMDiagramPointMapper *)v32 applyDiagramStyleToShapeProperties];
      v33 = [(CMDiagramPointMapper *)v32 fill];
      v34 = [(CMDiagramPointMapper *)v32 stroke];
      [CMShapeRenderer renderCanonicalShape:248 fill:v33 stroke:v34 adjustValues:0 orientedBounds:v38 state:v41 drawingContext:self->super.super.mDrawingContext];

      [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
      v35 = CGRectGetWidth(v50) - v15 - v20;
      v36 = [[OADOrientedBounds alloc] initWithBounds:(v21 + v20), v31, v35, v16];
      v28 = objc_alloc_init(CMDrawableStyle);

      v27 = [OIXMLElement elementWithType:3];

      [(CMDrawableStyle *)v28 addPositionProperties:(v21 + v20), v31, v35, v16];
      [v43 addChild:v27];
      v44.receiver = self;
      v44.super_class = CMDiagramShapeArrow4Mapper;
      [(CMMapper *)&v44 addStyleUsingGlobalCacheTo:v27 style:v28];
      [(CMDiagramPointMapper *)v32 setPresentationName:@"downArrowText"];
      [(CMDiagramPointMapper *)v32 applyDiagramStyleToShapeProperties];
      [(CMDiagramPointMapper *)v32 mapTextAt:v27 withBounds:v36 isCentered:1 includeChildren:0 withState:v41];

      v24 = v37;
    }

    v6 = v41;
  }
}

@end