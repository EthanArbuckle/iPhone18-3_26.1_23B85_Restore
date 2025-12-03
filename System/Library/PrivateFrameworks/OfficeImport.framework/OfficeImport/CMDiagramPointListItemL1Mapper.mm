@interface CMDiagramPointListItemL1Mapper
- (CMDiagramPointListItemL1Mapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds listIndex:(unint64_t)index parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointListItemL1Mapper

- (CMDiagramPointListItemL1Mapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds listIndex:(unint64_t)index parent:(id)parent
{
  v9.receiver = self;
  v9.super_class = CMDiagramPointListItemL1Mapper;
  result = [(CMDiagramPointMapper *)&v9 initWithPoint:point drawingContext:context orientedBounds:bounds parent:parent];
  if (result)
  {
    result->mListIndex = index;
  }

  return result;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = objc_alloc_init(CMDrawableStyle);
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v8 = [OIXMLElement elementWithType:3];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  [(CMDrawableStyle *)v7 addPositionProperties:?];
  [atCopy addChild:v8];
  v9 = v8;

  v43.receiver = self;
  v43.super_class = CMDiagramPointListItemL1Mapper;
  [(CMMapper *)&v43 addStyleUsingGlobalCacheTo:v9 style:v7];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  stroke = [(CMDiagramPointMapper *)self stroke];
  [stroke width];
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
  fill = [(CMDiagramPointMapper *)self fill];
  v29 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];

  v39 = v29;
  [(CMStyle *)v27 appendPropertyForName:0x286F07DF0 color:v29];
  v30 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v30 setFromOadStroke:stroke atLocation:0 state:stateCopy];
  cssString = [(CMBordersProperty *)v30 cssString];
  [(CMStyle *)v27 appendPropertyString:cssString];

  [v9 addChild:v26];
  v42.receiver = self;
  v42.super_class = CMDiagramPointListItemL1Mapper;
  [(CMMapper *)&v42 addStyleUsingGlobalCacheTo:v26 style:v27];
  [(CMDiagramPointMapper *)self mapTextAt:v26 withBounds:v25 isCentered:1 includeChildren:0 withState:stateCopy];
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
  children = [(ODDPoint *)self->super.mPoint children];
  v36 = [children objectAtIndex:0];

  if (v36)
  {
    shapeProperties = [(CMDiagramPointMapper *)[CMDiagramPointListBaseMapper alloc] initWithPoint:v36 drawingContext:self->super.mDrawingContext orientedBounds:v34 parent:self];
    [(CMDiagramPointListBaseMapper *)shapeProperties mapAt:v9 withState:stateCopy];
  }

  else
  {
    shapeProperties = [(ODDPoint *)self->super.mPoint shapeProperties];
    [(CMDiagramPointListBaseMapper *)shapeProperties setFill:0];
    [(CMDiagramPointListBaseMapper *)shapeProperties setStroke:0];
    [(CMDiagramPointMapper *)self setPresentationName:@"desTx"];
    [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
    v38 = [OIXMLElement elementWithType:3];
    [(CMDiagramPointMapper *)self mapStyledRectangle:v38 at:stateCopy withState:0.0, v24, Width, v33];
    [v9 addChild:v38];
  }
}

@end