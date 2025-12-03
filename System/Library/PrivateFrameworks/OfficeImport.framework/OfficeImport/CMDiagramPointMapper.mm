@interface CMDiagramPointMapper
- (CMDiagramPointMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent;
- (float)defaultFontSize;
- (id)baseTextListStyleWithBounds:(id)bounds isCentered:(BOOL)centered;
- (id)diagram;
- (id)fill;
- (id)plainText;
- (id)presentationName;
- (id)presentationWithName:(id)name;
- (id)shapeStyle;
- (id)stroke;
- (id)styleMatrix;
- (id)transformForPresentationWithName:(id)name;
- (void)applyDiagramStyleToShapeProperties;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapChildrenTextAt:(id)at style:(id)style level:(int)level withState:(id)state;
- (void)mapPointTextAt:(id)at style:(id)style level:(int)level withState:(id)state;
- (void)mapSiblingTextAt:(id)at style:(id)style level:(int)level withState:(id)state;
- (void)mapStyledRectangle:(CGRect)rectangle at:(id)at withState:(id)state;
- (void)mapTextAt:(id)at withBounds:(id)bounds isCentered:(BOOL)centered includeChildren:(BOOL)children withState:(id)state;
@end

@implementation CMDiagramPointMapper

- (id)plainText
{
  text = [(ODDPoint *)self->mPoint text];
  plainText = [text plainText];

  return plainText;
}

- (void)applyDiagramStyleToShapeProperties
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shapeStyle = [(CMDiagramPointMapper *)self shapeStyle];
    styleMatrix = [(CMDiagramPointMapper *)self styleMatrix];
    shapeProperties = [(ODDPoint *)self->mPoint shapeProperties];
    [shapeStyle applyToGraphicProperties:shapeProperties styleMatrix:styleMatrix];
  }
}

- (id)shapeStyle
{
  diagram = [(CMDiagramPointMapper *)self diagram];
  styleDefinition = [diagram styleDefinition];

  presentationName = [(CMDiagramPointMapper *)self presentationName];
  v6 = [(CMDiagramPointMapper *)self presentationWithName:presentationName];

  propertySet = [v6 propertySet];
  presentationStyleLabel = [propertySet presentationStyleLabel];

  v9 = [styleDefinition labelForName:presentationStyleLabel];
  shapeStyle = [v9 shapeStyle];

  if (shapeStyle)
  {
    diagram2 = [(CMDiagramPointMapper *)self diagram];
    colorTransform = [diagram2 colorTransform];
    v13 = [colorTransform labelForName:presentationStyleLabel];

    propertySet2 = [v6 propertySet];
    presentationStyleIndex = [propertySet2 presentationStyleIndex];

    if (v13)
    {
      v16 = [shapeStyle copy];

      shapeStyle = v16;
      [v13 applyToShapeStyle:v16 index:presentationStyleIndex count:0 state:0];
    }
  }

  return shapeStyle;
}

- (id)diagram
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    v3 = parent;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parent2 = [v3 parent];

      v3 = parent2;
      if (!parent2)
      {
        goto LABEL_8;
      }
    }

    parent2 = [v3 diagram];
  }

  else
  {
    parent2 = 0;
  }

LABEL_8:

  return parent2;
}

- (id)presentationName
{
  mPresentationName = self->mPresentationName;
  if (mPresentationName)
  {
    v3 = mPresentationName;
  }

  else
  {
    type = [(ODDPoint *)self->mPoint type];
    v5 = @"node0";
    if (type == 2)
    {
      v5 = @"node1";
    }

    if (type)
    {
      v3 = v5;
    }

    else
    {
      v3 = @"asst0";
    }
  }

  return v3;
}

- (id)styleMatrix
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    v3 = parent;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      parent2 = [v3 parent];

      v3 = parent2;
      if (!parent2)
      {
        goto LABEL_5;
      }
    }

    styleMatrix = [v3 styleMatrix];
  }

  else
  {
LABEL_5:
    styleMatrix = 0;
  }

  return styleMatrix;
}

- (id)fill
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shapeProperties = [(ODDPoint *)self->mPoint shapeProperties];
    fill = [shapeProperties fill];
  }

  else
  {
    fill = 0;
  }

  return fill;
}

- (id)stroke
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shapeProperties = [(ODDPoint *)self->mPoint shapeProperties];
    stroke = [shapeProperties stroke];
  }

  else
  {
    stroke = 0;
  }

  return stroke;
}

- (float)defaultFontSize
{
  parent = [(CMMapper *)self parent];
  v3 = 0.0;
  if (parent)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Parent = [parent parent];

      parent = v2Parent;
      if (!v2Parent)
      {
        goto LABEL_6;
      }
    }

    [parent defaultFontSize];
    v3 = v5;
  }

LABEL_6:

  return v3;
}

- (CMDiagramPointMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds parent:(id)parent
{
  pointCopy = point;
  contextCopy = context;
  boundsCopy = bounds;
  v18.receiver = self;
  v18.super_class = CMDiagramPointMapper;
  v14 = [(CMMapper *)&v18 initWithParent:parent];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mPoint, point);
    objc_storeStrong(&v15->mDrawingContext, context);
    objc_storeStrong(&v15->mOrientedBounds, bounds);
    mPresentationName = v15->mPresentationName;
    v15->mPresentationName = 0;
  }

  return v15;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  transformPresentationName = [(CMDiagramPointMapper *)self transformPresentationName];
  if (transformPresentationName)
  {
    v9 = [(CMDiagramPointMapper *)self transformForPresentationWithName:transformPresentationName];
    v10 = [CMShapeUtils transformedBoundsWithBounds:self->mOrientedBounds transform:v9];
  }

  else
  {
    v10 = self->mOrientedBounds;
  }

  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  [(CMDiagramPointMapper *)self renderShapeAsBackgroundInBounds:v10];
  v11 = [OIXMLElement elementWithType:3];
  [(OADOrientedBounds *)v10 bounds];
  [(CMDiagramPointMapper *)self mapStyledRectangle:v11 at:stateCopy withState:?];
  [atCopy addChild:v11];
  v12 = v11;

  [CMDiagramPointMapper mapTextAt:"mapTextAt:withBounds:isCentered:includeChildren:withState:" withBounds:? isCentered:? includeChildren:? withState:?];
  [CMDiagramPointMapper mapChlidrenAt:"mapChlidrenAt:withState:" withState:?];
}

- (void)mapStyledRectangle:(CGRect)rectangle at:(id)at withState:(id)state
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  atCopy = at;
  stateCopy = state;
  v13 = objc_alloc_init(CMDrawableStyle);
  [(CMDrawableStyle *)v13 addPositionProperties:x, y, width, height];
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  v15 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];

  [(CMStyle *)v13 appendPropertyForName:0x286F07DF0 color:v15];
  stroke = [(CMDiagramPointMapper *)self stroke];
  v17 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v17 setFromOadStroke:stroke atLocation:0 state:stateCopy];
  cssString = [(CMBordersProperty *)v17 cssString];
  [(CMStyle *)v13 appendPropertyString:cssString];

  v19.receiver = self;
  v19.super_class = CMDiagramPointMapper;
  [(CMMapper *)&v19 addStyleUsingGlobalCacheTo:atCopy style:v13];
}

- (id)presentationWithName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentations = [(ODDPoint *)self->mPoint presentations];
    v6 = presentations;
    if (presentations && [presentations count])
    {
      if (nameCopy)
      {
        objectEnumerator = [v6 objectEnumerator];
        while (1)
        {
          nextObject = [objectEnumerator nextObject];
          v9 = nextObject;
          if (!nextObject)
          {

            goto LABEL_12;
          }

          propertySet = [nextObject propertySet];
          presentationName = [propertySet presentationName];
          v12 = [nameCopy isEqualToString:presentationName];

          if (v12)
          {
            break;
          }
        }
      }

      else
      {
LABEL_12:
        v9 = [v6 objectAtIndex:0];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)mapTextAt:(id)at withBounds:(id)bounds isCentered:(BOOL)centered includeChildren:(BOOL)children withState:(id)state
{
  centeredCopy = centered;
  atCopy = at;
  boundsCopy = bounds;
  stateCopy = state;
  v14 = [(CMDiagramPointMapper *)self baseTextListStyleWithBounds:boundsCopy isCentered:centeredCopy];
  if (centeredCopy)
  {
    v18 = [OIXMLElement elementWithType:3];
    [atCopy addChild:v18];
    v15 = v18;

    v16 = objc_alloc_init(CMStyle);
    [(CMStyle *)v16 appendPropertyForName:0x286F08050 stringValue:@"table"];
    [boundsCopy bounds];
    [(CMStyle *)v16 appendSizeInfoFromRect:?];
    v20.receiver = self;
    v20.super_class = CMDiagramPointMapper;
    [(CMMapper *)&v20 addStyleUsingGlobalCacheTo:v15 style:v16];
    atCopy = [OIXMLElement elementWithType:3];
    v17 = objc_alloc_init(CMStyle);
    [(CMStyle *)v17 appendPropertyForName:0x286F08050 stringValue:@"table-cell"];
    [(CMStyle *)v17 appendPropertyForName:0x286F077D0 stringValue:0x286EF7150];
    v19.receiver = self;
    v19.super_class = CMDiagramPointMapper;
    [(CMMapper *)&v19 addStyleUsingGlobalCacheTo:atCopy style:v17];
    [v15 addChild:atCopy];
  }

  [(CMDiagramPointMapper *)self mapPointTextAt:atCopy style:v14 level:0 withState:stateCopy];
}

- (void)mapChildrenTextAt:(id)at style:(id)style level:(int)level withState:(id)state
{
  v7 = *&level;
  atCopy = at;
  styleCopy = style;
  stateCopy = state;
  [(CMDiagramPointMapper *)self mapPointTextAt:atCopy style:styleCopy level:v7 withState:stateCopy];
  children = [(ODDPoint *)self->mPoint children];
  v13 = [children count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [children objectAtIndex:i];
      v16 = [[CMDiagramPointMapper alloc] initWithPoint:v15 drawingContext:self->mDrawingContext orientedBounds:self->mOrientedBounds parent:self];
      [(CMDiagramPointMapper *)v16 mapChildrenTextAt:atCopy style:styleCopy level:(v7 + 1) withState:stateCopy];
    }
  }
}

- (void)mapSiblingTextAt:(id)at style:(id)style level:(int)level withState:(id)state
{
  v7 = *&level;
  atCopy = at;
  styleCopy = style;
  stateCopy = state;
  [(CMDiagramPointMapper *)self mapPointTextAt:atCopy style:styleCopy level:v7 withState:?];
  parent = [(ODDPoint *)self->mPoint parent];
  children = [parent children];

  v13 = [children count];
  if (v13 >= 2)
  {
    for (i = 1; i != v13; ++i)
    {
      v15 = [children objectAtIndex:i];
      v16 = [[CMDiagramPointMapper alloc] initWithPoint:v15 drawingContext:self->mDrawingContext orientedBounds:self->mOrientedBounds parent:self];
      [(CMDiagramPointMapper *)v16 mapChildrenTextAt:atCopy style:styleCopy level:v7 withState:stateCopy];
    }
  }
}

- (id)transformForPresentationWithName:(id)name
{
  v4 = [(CMDiagramPointMapper *)self presentationWithName:name];
  propertySet = [v4 propertySet];
  [propertySet customScaleX];
  v7 = v6;

  propertySet2 = [v4 propertySet];
  [propertySet2 customScaleY];
  v10 = v9;

  transform = [MEMORY[0x277CCA878] transform];
  [transform scaleXBy:v7 yBy:v10];
  propertySet3 = [v4 propertySet];
  [propertySet3 customOffsetX];
  v14 = v13;
  [(OADOrientedBounds *)self->mOrientedBounds bounds];
  Width = CGRectGetWidth(v23);

  propertySet4 = [v4 propertySet];
  [propertySet4 customOffsetY];
  v18 = v17;
  [(OADOrientedBounds *)self->mOrientedBounds bounds];
  v19 = v14 * Width;
  v20 = v18 * CGRectGetHeight(v24);

  [transform translateXBy:v19 yBy:v20];

  return transform;
}

- (id)baseTextListStyleWithBounds:(id)bounds isCentered:(BOOL)centered
{
  centeredCopy = centered;
  v6 = objc_alloc_init(OADTextListStyle);
  [(CMDiagramPointMapper *)self defaultFontSize];
  v8 = v7;
  v9 = 0;
  if (centeredCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&HUChDisc length:1];
  for (i = -1; i != 8; ++i)
  {
    v12 = [(OADTextListStyle *)v6 propertiesForListLevel:i + 1];
    *&v13 = v8;
    [v12 setSize:v13];
    [v12 setAlign:v9];
    if (i != -1)
    {
      v8 = v8 * 0.8;
      if (i)
      {
        v14 = v8 * 0.8 * i;
        *&v14 = v14;
        [v12 setLeftMargin:v14];
        *&v15 = v8;
        [v12 setIndent:v15];
      }

      v16 = [[OADCharacterBulletProperties alloc] initWithBullet:v10];
      [v12 setBulletProperties:v16];
    }
  }

  return v6;
}

- (void)mapPointTextAt:(id)at style:(id)style level:(int)level withState:(id)state
{
  v7 = *&level;
  atCopy = at;
  styleCopy = style;
  stateCopy = state;
  text = [(ODDPoint *)self->mPoint text];
  if (text)
  {
    shapeStyle = [(CMDiagramPointMapper *)self shapeStyle];
    [shapeStyle applyToTextBody:text];
    paragraphCount = [text paragraphCount];
    if (paragraphCount)
    {
      for (i = 0; i != paragraphCount; ++i)
      {
        v15 = [text paragraphAtIndex:i];
        properties = [v15 properties];
        [properties setLevel:v7];
        v17 = [styleCopy propertiesForListLevel:{objc_msgSend(properties, "level")}];
        [properties setParent:v17];
      }
    }

    v18 = objc_alloc_init(PMState);
    [(CMState *)v18 copyFromCMStateWithoutComponents:stateCopy];
    if (paragraphCount)
    {
      for (j = 0; j != paragraphCount; ++j)
      {
        v20 = [text paragraphAtIndex:j];
        v21 = [[PMParagraphMapper alloc] initWithOadParagraph:v20 parent:self];
        [(PMParagraphMapper *)v21 mapAt:atCopy withState:v18 isFirstParagraph:j == 0];
      }
    }
  }
}

@end