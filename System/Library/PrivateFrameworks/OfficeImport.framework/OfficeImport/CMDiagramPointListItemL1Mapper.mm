@interface CMDiagramPointListItemL1Mapper
- (CMDiagramPointListItemL1Mapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 listIndex:(unint64_t)a6 parent:(id)a7;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPointListItemL1Mapper

- (CMDiagramPointListItemL1Mapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 listIndex:(unint64_t)a6 parent:(id)a7
{
  v9.receiver = self;
  v9.super_class = CMDiagramPointListItemL1Mapper;
  result = [(CMDiagramPointMapper *)&v9 initWithPoint:a3 drawingContext:a4 orientedBounds:a5 parent:a7];
  if (result)
  {
    result->mListIndex = a6;
  }

  return result;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v41 = a4;
  v7 = objc_alloc_init(CMDrawableStyle);
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v8 = [OIXMLElement elementWithType:3];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawableStyle *)v7 addPositionProperties:?];
  [v6 addChild:v8];
  v9 = v8;

  v43.receiver = self;
  v43.super_class = CMDiagramPointListItemL1Mapper;
  [(CMMapper *)&v43 addStyleUsingGlobalCacheTo:v9 style:v7];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v40 = [(CMDiagramPointMapper *)self stroke];
  [v40 width];
  v19 = v18;
  v20 = v18 * 0.5;
  if (v19 <= 1.5)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  [(CMDiagramPointMapper *)self defaultFontSize];
  v23 = v22;
  v44.origin.x = v11;
  v44.origin.y = v13;
  v44.size.width = v15;
  v44.size.height = v17;
  v24 = (v23 + v23) * 1.1;
  v25 = [OADOrientedBounds orientedBoundsWithBounds:-(v19 - v21), -(v19 - v21), CGRectGetWidth(v44) - v21, (v24 - v21)];
  v26 = [OIXMLElement elementWithType:3];

  v27 = objc_alloc_init(CMDrawableStyle);
  [v25 bounds];
  [(CMDrawableStyle *)v27 addPositionProperties:?];
  v28 = [(CMDiagramPointMapper *)self fill];
  v29 = [CMColorProperty nsColorFromOADFill:v28 state:v41];

  v39 = v29;
  [(CMStyle *)v27 appendPropertyForName:0x286F07DF0 color:v29];
  v30 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v30 setFromOadStroke:v40 atLocation:0 state:v41];
  v31 = [(CMBordersProperty *)v30 cssString];
  [(CMStyle *)v27 appendPropertyString:v31];

  [v9 addChild:v26];
  v42.receiver = self;
  v42.super_class = CMDiagramPointListItemL1Mapper;
  [(CMMapper *)&v42 addStyleUsingGlobalCacheTo:v26 style:v27];
  [(CMDiagramPointMapper *)self mapTextAt:v26 withBounds:v25 isCentered:1 includeChildren:0 withState:v41];
  v45.origin.x = v11;
  v45.origin.y = v13;
  v45.size.width = v15;
  v45.size.height = v17;
  Width = CGRectGetWidth(v45);
  v46.origin.x = v11;
  v46.origin.y = v13;
  v46.size.width = v15;
  v46.size.height = v17;
  v33 = CGRectGetHeight(v46) - v24;
  v34 = [OADOrientedBounds orientedBoundsWithBounds:0.0, v24, Width, v33];
  v35 = [(ODDPoint *)self->super.mPoint children];
  v36 = [v35 objectAtIndex:0];

  if (v36)
  {
    v37 = [(CMDiagramPointMapper *)[CMDiagramPointListBaseMapper alloc] initWithPoint:v36 drawingContext:self->super.mDrawingContext orientedBounds:v34 parent:self];
    [(CMDiagramPointListBaseMapper *)v37 mapAt:v9 withState:v41];
  }

  else
  {
    v37 = [(ODDPoint *)self->super.mPoint shapeProperties];
    [(CMDiagramPointListBaseMapper *)v37 setFill:0];
    [(CMDiagramPointListBaseMapper *)v37 setStroke:0];
    [(CMDiagramPointMapper *)self setPresentationName:@"desTx"];
    [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
    v38 = [OIXMLElement elementWithType:3];
    [(CMDiagramPointMapper *)self mapStyledRectangle:v38 at:v41 withState:0.0, v24, Width, v33];
    [v9 addChild:v38];
  }
}

@end