@interface CMDiagramPointMapper
- (CMDiagramPointMapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 parent:(id)a6;
- (float)defaultFontSize;
- (id)baseTextListStyleWithBounds:(id)a3 isCentered:(BOOL)a4;
- (id)diagram;
- (id)fill;
- (id)plainText;
- (id)presentationName;
- (id)presentationWithName:(id)a3;
- (id)shapeStyle;
- (id)stroke;
- (id)styleMatrix;
- (id)transformForPresentationWithName:(id)a3;
- (void)applyDiagramStyleToShapeProperties;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapChildrenTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6;
- (void)mapPointTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6;
- (void)mapSiblingTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6;
- (void)mapStyledRectangle:(CGRect)a3 at:(id)a4 withState:(id)a5;
- (void)mapTextAt:(id)a3 withBounds:(id)a4 isCentered:(BOOL)a5 includeChildren:(BOOL)a6 withState:(id)a7;
@end

@implementation CMDiagramPointMapper

- (id)plainText
{
  v2 = [(ODDPoint *)self->mPoint text];
  v3 = [v2 plainText];

  return v3;
}

- (void)applyDiagramStyleToShapeProperties
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CMDiagramPointMapper *)self shapeStyle];
    v3 = [(CMDiagramPointMapper *)self styleMatrix];
    v4 = [(ODDPoint *)self->mPoint shapeProperties];
    [v5 applyToGraphicProperties:v4 styleMatrix:v3];
  }
}

- (id)shapeStyle
{
  v3 = [(CMDiagramPointMapper *)self diagram];
  v4 = [v3 styleDefinition];

  v5 = [(CMDiagramPointMapper *)self presentationName];
  v6 = [(CMDiagramPointMapper *)self presentationWithName:v5];

  v7 = [v6 propertySet];
  v8 = [v7 presentationStyleLabel];

  v9 = [v4 labelForName:v8];
  v10 = [v9 shapeStyle];

  if (v10)
  {
    v11 = [(CMDiagramPointMapper *)self diagram];
    v12 = [v11 colorTransform];
    v13 = [v12 labelForName:v8];

    v14 = [v6 propertySet];
    v15 = [v14 presentationStyleIndex];

    if (v13)
    {
      v16 = [v10 copy];

      v10 = v16;
      [v13 applyToShapeStyle:v16 index:v15 count:0 state:0];
    }
  }

  return v10;
}

- (id)diagram
{
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 parent];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v4 = [v3 diagram];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v4;
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
    v4 = [(ODDPoint *)self->mPoint type];
    v5 = @"node0";
    if (v4 == 2)
    {
      v5 = @"node1";
    }

    if (v4)
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
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    v3 = v2;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = [v3 parent];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = [v3 styleMatrix];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (id)fill
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(ODDPoint *)self->mPoint shapeProperties];
    v4 = [v3 fill];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stroke
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(ODDPoint *)self->mPoint shapeProperties];
    v4 = [v3 stroke];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)defaultFontSize
{
  v2 = [(CMMapper *)self parent];
  v3 = 0.0;
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v2 parent];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    [v2 defaultFontSize];
    v3 = v5;
  }

LABEL_6:

  return v3;
}

- (CMDiagramPointMapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = CMDiagramPointMapper;
  v14 = [(CMMapper *)&v18 initWithParent:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mPoint, a3);
    objc_storeStrong(&v15->mDrawingContext, a4);
    objc_storeStrong(&v15->mOrientedBounds, a5);
    mPresentationName = v15->mPresentationName;
    v15->mPresentationName = 0;
  }

  return v15;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CMDiagramPointMapper *)self transformPresentationName];
  if (v8)
  {
    v9 = [(CMDiagramPointMapper *)self transformForPresentationWithName:v8];
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
  [(CMDiagramPointMapper *)self mapStyledRectangle:v11 at:v7 withState:?];
  [v6 addChild:v11];
  v12 = v11;

  [CMDiagramPointMapper mapTextAt:"mapTextAt:withBounds:isCentered:includeChildren:withState:" withBounds:? isCentered:? includeChildren:? withState:?];
  [CMDiagramPointMapper mapChlidrenAt:"mapChlidrenAt:withState:" withState:?];
}

- (void)mapStyledRectangle:(CGRect)a3 at:(id)a4 withState:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(CMDrawableStyle);
  [(CMDrawableStyle *)v13 addPositionProperties:x, y, width, height];
  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  v14 = [(CMDiagramPointMapper *)self fill];
  v15 = [CMColorProperty nsColorFromOADFill:v14 state:v12];

  [(CMStyle *)v13 appendPropertyForName:0x286F07DF0 color:v15];
  v16 = [(CMDiagramPointMapper *)self stroke];
  v17 = [CMBordersProperty alloc];
  [(CMBordersProperty *)v17 setFromOadStroke:v16 atLocation:0 state:v12];
  v18 = [(CMBordersProperty *)v17 cssString];
  [(CMStyle *)v13 appendPropertyString:v18];

  v19.receiver = self;
  v19.super_class = CMDiagramPointMapper;
  [(CMMapper *)&v19 addStyleUsingGlobalCacheTo:v11 style:v13];
}

- (id)presentationWithName:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ODDPoint *)self->mPoint presentations];
    v6 = v5;
    if (v5 && [v5 count])
    {
      if (v4)
      {
        v7 = [v6 objectEnumerator];
        while (1)
        {
          v8 = [v7 nextObject];
          v9 = v8;
          if (!v8)
          {

            goto LABEL_12;
          }

          v10 = [v8 propertySet];
          v11 = [v10 presentationName];
          v12 = [v4 isEqualToString:v11];

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

- (void)mapTextAt:(id)a3 withBounds:(id)a4 isCentered:(BOOL)a5 includeChildren:(BOOL)a6 withState:(id)a7
{
  v8 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(CMDiagramPointMapper *)self baseTextListStyleWithBounds:v12 isCentered:v8];
  if (v8)
  {
    v18 = [OIXMLElement elementWithType:3];
    [v11 addChild:v18];
    v15 = v18;

    v16 = objc_alloc_init(CMStyle);
    [(CMStyle *)v16 appendPropertyForName:0x286F08050 stringValue:@"table"];
    [v12 bounds];
    [(CMStyle *)v16 appendSizeInfoFromRect:?];
    v20.receiver = self;
    v20.super_class = CMDiagramPointMapper;
    [(CMMapper *)&v20 addStyleUsingGlobalCacheTo:v15 style:v16];
    v11 = [OIXMLElement elementWithType:3];
    v17 = objc_alloc_init(CMStyle);
    [(CMStyle *)v17 appendPropertyForName:0x286F08050 stringValue:@"table-cell"];
    [(CMStyle *)v17 appendPropertyForName:0x286F077D0 stringValue:0x286EF7150];
    v19.receiver = self;
    v19.super_class = CMDiagramPointMapper;
    [(CMMapper *)&v19 addStyleUsingGlobalCacheTo:v11 style:v17];
    [v15 addChild:v11];
  }

  [(CMDiagramPointMapper *)self mapPointTextAt:v11 style:v14 level:0 withState:v13];
}

- (void)mapChildrenTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6
{
  v7 = *&a5;
  v17 = a3;
  v10 = a4;
  v11 = a6;
  [(CMDiagramPointMapper *)self mapPointTextAt:v17 style:v10 level:v7 withState:v11];
  v12 = [(ODDPoint *)self->mPoint children];
  v13 = [v12 count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [v12 objectAtIndex:i];
      v16 = [[CMDiagramPointMapper alloc] initWithPoint:v15 drawingContext:self->mDrawingContext orientedBounds:self->mOrientedBounds parent:self];
      [(CMDiagramPointMapper *)v16 mapChildrenTextAt:v17 style:v10 level:(v7 + 1) withState:v11];
    }
  }
}

- (void)mapSiblingTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6
{
  v7 = *&a5;
  v18 = a3;
  v10 = a4;
  v17 = a6;
  [(CMDiagramPointMapper *)self mapPointTextAt:v18 style:v10 level:v7 withState:?];
  v11 = [(ODDPoint *)self->mPoint parent];
  v12 = [v11 children];

  v13 = [v12 count];
  if (v13 >= 2)
  {
    for (i = 1; i != v13; ++i)
    {
      v15 = [v12 objectAtIndex:i];
      v16 = [[CMDiagramPointMapper alloc] initWithPoint:v15 drawingContext:self->mDrawingContext orientedBounds:self->mOrientedBounds parent:self];
      [(CMDiagramPointMapper *)v16 mapChildrenTextAt:v18 style:v10 level:v7 withState:v17];
    }
  }
}

- (id)transformForPresentationWithName:(id)a3
{
  v4 = [(CMDiagramPointMapper *)self presentationWithName:a3];
  v5 = [v4 propertySet];
  [v5 customScaleX];
  v7 = v6;

  v8 = [v4 propertySet];
  [v8 customScaleY];
  v10 = v9;

  v11 = [MEMORY[0x277CCA878] transform];
  [v11 scaleXBy:v7 yBy:v10];
  v12 = [v4 propertySet];
  [v12 customOffsetX];
  v14 = v13;
  [(OADOrientedBounds *)self->mOrientedBounds bounds];
  Width = CGRectGetWidth(v23);

  v16 = [v4 propertySet];
  [v16 customOffsetY];
  v18 = v17;
  [(OADOrientedBounds *)self->mOrientedBounds bounds];
  v19 = v14 * Width;
  v20 = v18 * CGRectGetHeight(v24);

  [v11 translateXBy:v19 yBy:v20];

  return v11;
}

- (id)baseTextListStyleWithBounds:(id)a3 isCentered:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(OADTextListStyle);
  [(CMDiagramPointMapper *)self defaultFontSize];
  v8 = v7;
  v9 = 0;
  if (v4)
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

- (void)mapPointTextAt:(id)a3 style:(id)a4 level:(int)a5 withState:(id)a6
{
  v7 = *&a5;
  v23 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(ODDPoint *)self->mPoint text];
  if (v12)
  {
    v22 = [(CMDiagramPointMapper *)self shapeStyle];
    [v22 applyToTextBody:v12];
    v13 = [v12 paragraphCount];
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = [v12 paragraphAtIndex:i];
        v16 = [v15 properties];
        [v16 setLevel:v7];
        v17 = [v10 propertiesForListLevel:{objc_msgSend(v16, "level")}];
        [v16 setParent:v17];
      }
    }

    v18 = objc_alloc_init(PMState);
    [(CMState *)v18 copyFromCMStateWithoutComponents:v11];
    if (v13)
    {
      for (j = 0; j != v13; ++j)
      {
        v20 = [v12 paragraphAtIndex:j];
        v21 = [[PMParagraphMapper alloc] initWithOadParagraph:v20 parent:self];
        [(PMParagraphMapper *)v21 mapAt:v23 withState:v18 isFirstParagraph:j == 0];
      }
    }
  }
}

@end