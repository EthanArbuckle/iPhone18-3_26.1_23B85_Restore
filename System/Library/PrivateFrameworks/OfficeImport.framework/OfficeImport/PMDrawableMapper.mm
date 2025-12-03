@interface PMDrawableMapper
- (CGRect)shapeTextBoxWithState:(id)state;
- (CGRect)slideRect;
- (CGRect)transformRectToPage:(CGRect)result;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapBounds;
- (void)mapChartAt:(id)at withState:(id)state;
- (void)mapDiagramAt:(id)at withState:(id)state;
- (void)mapFreeForm:(id)form orientedBounds:(id)bounds transformedBounds:(CGRect *)transformedBounds state:(id)state;
- (void)mapOfficeArtGroupAt:(id)at withState:(id)state;
- (void)mapOfficeArtImageAt:(id)at withState:(id)state;
- (void)mapOfficeArtShapeAt:(id)at withState:(id)state;
- (void)mapRectangularShapeAt:(id)at withState:(id)state;
- (void)mapShapeAsBackgroundAt:(id)at withState:(id)state;
@end

@implementation PMDrawableMapper

- (void)mapBounds
{
  v3 = [OAITOrientedBounds relativeOrientedBoundsOfDrawable:self->super.mDrawable];
  mOrientedBounds = self->super.mOrientedBounds;
  self->super.mOrientedBounds = v3;

  [(OADOrientedBounds *)self->super.mOrientedBounds rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v5 = self->super.mOrientedBounds;
    [(OADOrientedBounds *)v5 bounds];
    [(OADOrientedBounds *)v5 setBounds:NSTransposedRectWithSameCenter(v6, v7, v8, v9)];
  }

  v10 = self->super.mOrientedBounds;
  if (v10)
  {
    [(OADOrientedBounds *)v10 bounds];
    self->super.mBox.origin.x = v11;
    self->super.mBox.origin.y = v12;
    self->super.mBox.size.width = v13;
    self->super.mBox.size.height = v14;
  }
}

- (CGRect)slideRect
{
  root = [(CMMapper *)self root];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [root slideSize];
    v4 = v3;
    v6 = v5;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v9 = v7;
  v10 = v8;
  v11 = v4;
  v12 = v6;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  childrenCount = [atCopy childrenCount];
  if (self->mDrawingContext)
  {
    v9 = 0;
  }

  else
  {
    v10 = +[CMGlobalCache drawableElementCache];
    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self->super.mDrawable];
    v9 = [v10 objectForKey:v11];
  }

  [(PMDrawableMapper *)self mapBounds];
  if (!self->mDrawingContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(PMDrawableMapper *)self setTopLevelMapper:1];
      v12 = [CMDrawingContext alloc];
      [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
      v13 = [(CMDrawingContext *)v12 initWithFrame:?];
      [(CMDrawingContext *)v13 setMapper:self];
      [(PMDrawableMapper *)self setDrawingContext:v13];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PMDrawableMapper *)self mapOfficeArtImageAt:atCopy withState:stateCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PMDrawableMapper *)self mapDiagramAt:atCopy withState:stateCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PMDrawableMapper *)self mapOfficeArtShapeAt:atCopy withState:stateCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PMDrawableMapper *)self mapOfficeArtGroupAt:atCopy withState:stateCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [[PMTableMapper alloc] initWithOadTable:self->super.mDrawable bounds:self->super.mOrientedBounds parent:self];
            [(PMTableMapper *)v14 mapAt:atCopy withState:stateCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PMDrawableMapper *)self mapChartAt:atCopy withState:stateCopy];
            }
          }
        }
      }
    }
  }

  if (v9)
  {
    [atCopy addChild:v9];
  }

  else if ([(PMDrawableMapper *)self isTopLevelMapper])
  {
    copyPDF = [(CMDrawingContext *)self->mDrawingContext copyPDF];
    if (copyPDF)
    {
      v9 = [OIXMLElement elementWithType:9];
      [atCopy insertChild:v9 atIndex:childrenCount];
      v16 = +[CMGlobalCache drawableElementCache];
      v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self->super.mDrawable];
      [v16 setObject:v9 forKey:v17];

      v30.receiver = self;
      v30.super_class = PMDrawableMapper;
      archiver = [(CMMapper *)&v30 archiver];
      v19 = [archiver addResourceForDrawable:copyPDF withType:7 drawable:self->super.mDrawable];
      [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v9 value:v19];
      [(CMDrawingContext *)self->mDrawingContext pdfFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = objc_alloc_init(CMDrawableStyle);
      [(CMDrawableStyle *)v28 addPositionProperties:v21, v23, v25, v27];
      v29.receiver = self;
      v29.super_class = PMDrawableMapper;
      [(CMMapper *)&v29 addStyleUsingGlobalCacheTo:v9 style:v28 embedStyle:1];
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
}

- (void)mapOfficeArtImageAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v6 = self->super.mDrawable;
  [(OADDrawable *)v6 movie];

  v7 = [OIXMLElement elementWithType:9];
  imageProperties = [(OADDrawable *)self->super.mDrawable imageProperties];
  if ([imageProperties hasImageFill])
  {
    imageFill = [imageProperties imageFill];
    v9 = [CMImageFillMapper alloc];
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    [(PMDrawableMapper *)self transformRectToPage:?];
    v10 = [(CMImageFillMapper *)v9 initWithOadFill:imageFill bounds:self parent:?];
    if ([(CMImageFillMapper *)v10 isCropped])
    {
      v11 = [OIXMLElement elementWithType:3];
      orientedBounds2 = objc_alloc_init(CMDrawableStyle);
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF4D30 stringWithColons:@":hidden;"];
      [(CMImageFillMapper *)v10 uncroppedBox];
      [(CMDrawableStyle *)orientedBounds2 addPositionProperties:?];
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:orientedBounds2 embedStyle:1];
      [v11 addChild:v7];
      mStyle = self->super.mStyle;
      orientedBounds = [imageProperties orientedBounds];
      [orientedBounds bounds];
      [(PMDrawableMapper *)self transformRectToPage:?];
      [(CMDrawableStyle *)mStyle addPositionProperties:?];
    }

    else
    {
      v11 = v7;
      v15 = self->super.mStyle;
      orientedBounds2 = [imageProperties orientedBounds];
      [(CMDrawableStyle *)orientedBounds2 bounds];
      [(PMDrawableMapper *)self transformRectToPage:?];
      [(CMDrawableStyle *)v15 addPositionProperties:?];
    }

    v16 = [(CMImageFillMapper *)v10 mapImageFill:v7 withState:stateCopy];
    if (v16)
    {
      [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v7 value:v16];
    }

    else
    {
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@":1px solid black;"];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v11 style:self->super.mStyle embedStyle:1];
    [atCopy addChild:v11];
  }

  else
  {
    v11 = 0;
  }
}

- (void)mapOfficeArtShapeAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  objc_storeStrong(&self->mShape, self->super.mDrawable);
  type = [(OADShape *)self->mShape type];
  shapeProperties = [(OADShape *)self->mShape shapeProperties];
  orientedBounds = [shapeProperties orientedBounds];
  fill = [shapeProperties fill];
  isTextBox = [shapeProperties isTextBox];
  if (type == 202)
  {
    v12 = 1;
  }

  else
  {
    v12 = isTextBox;
  }

  [orientedBounds rotation];
  v14 = v13;
  [fill alpha];
  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [fill color];
    [CMColorProperty transformedAlphaFromOADColor:color];
    v16 = v16 * v18;
  }

  if (((v12 & 1) != 0 || type == 75 || type == 1) && (v14 == 0.0 ? (v19 = v16 == 1.0) : (v19 = 0), v19 && [(PMDrawableMapper *)self isTopLevelMapper]))
  {
    [(PMDrawableMapper *)self mapRectangularShapeAt:atCopy withState:stateCopy];
  }

  else
  {
    [(PMDrawableMapper *)self mapShapeAsBackgroundAt:atCopy withState:stateCopy];
    textBody = [(OADShape *)self->mShape textBody];
    if (textBody)
    {
      textBody2 = [(OADShape *)self->mShape textBody];
      isEmpty = [textBody2 isEmpty];

      if ((isEmpty & 1) == 0)
      {
        v31 = [OIXMLElement elementWithType:3];
        [(PMDrawableMapper *)self shapeTextBoxWithState:stateCopy];
        if (v24 <= 0.0 || v23 <= 0.0)
        {
          [orientedBounds bounds];
          [(PMDrawableMapper *)self transformRectToPage:?];
        }

        else
        {
          [(PMDrawableMapper *)self transformRectToPage:?];
        }

        v25 = [OADOrientedBounds orientedBoundsWithBounds:?];
        mStyle = self->super.mStyle;
        [v25 bounds];
        [(CMDrawableStyle *)mStyle addPositionProperties:?];
        [atCopy addChild:v31];
        v27 = self->super.mStyle;
        v33.receiver = self;
        v33.super_class = PMDrawableMapper;
        [(CMMapper *)&v33 addStyleUsingGlobalCacheTo:v31 style:v27 embedStyle:1];
        v28 = [PMShapeTextMapper alloc];
        textBody3 = [(OADShape *)self->mShape textBody];
        v30 = [(PMShapeTextMapper *)v28 initWithOadTextBody:textBody3 bounds:v25 parent:self];

        [(PMShapeTextMapper *)v30 mapAt:v31 withState:stateCopy];
      }
    }
  }
}

- (void)mapRectangularShapeAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  shapeProperties = [(OADShape *)self->mShape shapeProperties];
  orientedBounds = [shapeProperties orientedBounds];
  [orientedBounds bounds];
  [(PMDrawableMapper *)self transformRectToPage:?];
  v8 = [OADOrientedBounds orientedBoundsWithBounds:?];

  mStyle = self->super.mStyle;
  [v8 bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  fill = [shapeProperties fill];
  if (fill)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v11 = 0;
  }

  stroke = [shapeProperties stroke];
  fill2 = [stroke fill];

  if (fill2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [CMBordersProperty alloc];
      stroke2 = [shapeProperties stroke];
      v16 = [(CMBordersProperty *)v14 initWithOADStroke:stroke2];

      [(CMStyle *)self->super.mStyle addProperty:v16 forKey:0x286F07E30];
    }
  }

  if (v11)
  {
    v17 = [CMImageFillMapper alloc];
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    v18 = [(CMImageFillMapper *)v17 initWithOadFill:fill bounds:self parent:?];
    [(CMImageFillMapper *)v18 mapNonImageFillAt:atCopy toStyle:self->super.mStyle withState:stateCopy];
  }

  v19 = [OIXMLElement elementWithType:3];
  [atCopy addChild:v19];
  v20 = self->super.mStyle;
  v26.receiver = self;
  v26.super_class = PMDrawableMapper;
  [(CMMapper *)&v26 addStyleUsingGlobalCacheTo:v19 style:v20 embedStyle:1];
  v21 = [PMShapeTextMapper alloc];
  textBody = [(OADShape *)self->mShape textBody];
  v23 = [(PMShapeTextMapper *)v21 initWithOadTextBody:textBody bounds:v8 parent:self];

  [(PMShapeTextMapper *)v23 setRectangular:1];
  [(PMShapeTextMapper *)v23 mapAt:v19 withState:stateCopy];
}

- (void)mapOfficeArtGroupAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = self->super.mDrawable;
  childCount = [(OADDrawable *)v7 childCount];
  [(OADDrawable *)v7 logicalBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27 = [OAITOrientedBounds relativeOrientedBoundsOfDrawable:v7];
  v17 = [CMShapeUtils transformFromBounds:v27 toOrientedBounds:v10, v12, v14, v16];
  drawingContext = [(PMDrawableMapper *)self drawingContext];
  [drawingContext addTransform:v17];

  if (childCount)
  {
    v19 = 0;
    v20 = 0;
    v21 = 1;
    do
    {
      v22 = [(OADDrawable *)v7 childAtIndex:v19];

      if (([v22 hidden] & 1) == 0)
      {
        v23 = [(CMDrawableMapper *)[PMDrawableMapper alloc] initWithOadDrawable:v22 parent:self];
        drawingContext2 = [(PMDrawableMapper *)self drawingContext];
        [(PMDrawableMapper *)v23 setDrawingContext:drawingContext2];

        [(PMDrawableMapper *)v23 mapAt:atCopy withState:stateCopy];
      }

      v19 = v21;
      v25 = childCount > v21++;
      v20 = v22;
    }

    while (v25);
  }

  else
  {
    v22 = 0;
  }

  drawingContext3 = [(PMDrawableMapper *)self drawingContext];
  [drawingContext3 restoreLastTransform];
}

- (void)mapDiagramAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = [[CMDiagramMapper alloc] initWithOddDiagram:self->super.mDrawable drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds parent:self];
  [(CMDiagramMapper *)v7 mapAt:atCopy withState:stateCopy];
}

- (void)mapChartAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = [[EMChartMapper alloc] initWithChart:self->super.mDrawable parent:self];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = [(EMChartMapper *)v8 copyPdfWithState:stateCopy withSize:v9, v10];
  v12 = [OIXMLElement elementWithType:9];
  if (v11)
  {
    v14.receiver = self;
    v14.super_class = PMDrawableMapper;
    v13 = [(CMDrawableMapper *)&v14 saveResourceAndReturnPath:v11 withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v12 value:v13];
  }

  else
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@": 1px solid black;"];
  }

  [atCopy addChild:v12];
  [(CMDrawableStyle *)self->super.mStyle addPositionProperties:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v12 style:self->super.mStyle embedStyle:1];
}

- (void)mapShapeAsBackgroundAt:(id)at withState:(id)state
{
  stateCopy = state;
  type = [(OADShape *)self->mShape type];
  if (!type)
  {
    if ([CMShapeUtils isShapeALine:self->mShape])
    {
      type = 20;
    }

    else
    {
      type = 0;
    }
  }

  shapeProperties = [(OADShape *)self->mShape shapeProperties];
  orientedBounds = [shapeProperties orientedBounds];

  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v21[0] = *MEMORY[0x277CBF3A0];
  v21[1] = v8;
  switch(type)
  {
    case 0:
      geometry = [(OADShape *)self->mShape geometry];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        geometry2 = [(OADShape *)self->mShape geometry];
        [(PMDrawableMapper *)self mapFreeForm:geometry2 orientedBounds:orientedBounds transformedBounds:v21 state:stateCopy];
      }

      goto LABEL_8;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 22:
    case 47:
    case 55:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 92:
    case 96:
    case 97:
    case 99:
    case 106:
    case 110:
      goto LABEL_6;
    case 14:
    case 17:
    case 18:
    case 19:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 57:
    case 64:
    case 65:
    case 71:
    case 72:
    case 73:
    case 74:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 93:
    case 94:
    case 95:
    case 98:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 107:
    case 108:
    case 109:
      goto LABEL_8;
    case 20:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
      shapeProperties2 = [(OADShape *)self->mShape shapeProperties];
      stroke = [shapeProperties2 stroke];
      geometry3 = [(OADShape *)self->mShape geometry];
      adjustValues = [geometry3 adjustValues];
      [CMShapeRenderer renderLine:type stroke:stroke adjustValues:adjustValues orientedBounds:orientedBounds state:stateCopy drawingContext:self->mDrawingContext];

      goto LABEL_7;
    default:
      if ((type - 176) > 0x23 || ((1 << (type + 80)) & 0xF04000841) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      shapeProperties2 = [(OADShape *)self->mShape shapeProperties];
      stroke = [shapeProperties2 fill];
      geometry3 = [(OADShape *)self->mShape shapeProperties];
      stroke2 = [geometry3 stroke];
      geometry4 = [(OADShape *)self->mShape geometry];
      adjustValues2 = [geometry4 adjustValues];
      [CMShapeRenderer renderCanonicalShape:type fill:stroke stroke:stroke2 adjustValues:adjustValues2 orientedBounds:orientedBounds state:stateCopy drawingContext:self->mDrawingContext];

LABEL_7:
LABEL_8:

      return;
  }
}

- (void)mapFreeForm:(id)form orientedBounds:(id)bounds transformedBounds:(CGRect *)transformedBounds state:(id)state
{
  formCopy = form;
  boundsCopy = bounds;
  stateCopy = state;
  if ([formCopy pathCount])
  {
    shapeProperties = [(OADShape *)self->mShape shapeProperties];
    fill = [shapeProperties fill];
    shapeProperties2 = [(OADShape *)self->mShape shapeProperties];
    stroke = [shapeProperties2 stroke];
    [CMShapeRenderer renderFreeForm:formCopy fill:fill stroke:stroke orientedBounds:boundsCopy state:stateCopy drawingContext:self->mDrawingContext];
  }
}

- (CGRect)shapeTextBoxWithState:(id)state
{
  stateCopy = state;
  geometry = [(OADShape *)self->mShape geometry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    equivalentCustomGeometry = geometry;
LABEL_5:
    equivalentCustomGeometry2 = equivalentCustomGeometry;
    goto LABEL_7;
  }

  if ([stateCopy sourceFormat] == 5)
  {
    equivalentCustomGeometry = [geometry equivalentCustomGeometry];
    goto LABEL_5;
  }

  equivalentCustomGeometry2 = [geometry equivalentCustomGeometry];
  [CMShapeUtils setCoordSpaceForCustomeGeometry:self->super.mBox.size.width fromSize:self->super.mBox.size.height];
LABEL_7:
  if ([equivalentCustomGeometry2 textBodyRectCount])
  {
    v8 = [equivalentCustomGeometry2 textBodyRectAtIndex:0];
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 left], equivalentCustomGeometry2);
    v10 = v9;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 right], equivalentCustomGeometry2);
    v12 = v11;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 top], equivalentCustomGeometry2);
    v14 = v13;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 bottom], equivalentCustomGeometry2);
    v16 = v15;
    isEscher = [equivalentCustomGeometry2 isEscher];
    v24.f32[0] = v10;
    v25.f32[0] = v12;
    if (isEscher)
    {
      v38 = v16;
      v39 = v14;
      v40 = v12;
      v42 = v10;
      if (equivalentCustomGeometry2)
      {
        *&v18 = v14;
        *&v22 = v16;
        [equivalentCustomGeometry2 geometryCoordSpace];
      }

      v26 = vsub_f32(__PAIR64__(LODWORD(v38), LODWORD(v40)), __PAIR64__(LODWORD(v39), LODWORD(v42)));
      size = self->super.mBox.size;
      v28 = vcvt_f32_f64(vdivq_f64(size, vdupq_n_s64(0x40D5180000000000uLL)));
      origin = vaddq_f64(self->super.mBox.origin, vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(v39), LODWORD(v42)), v28)));
      v29 = vmul_f32(v26, v28);
      v30 = vcgtz_f32(v29);
      v31.i64[0] = v30.i32[0];
      v31.i64[1] = v30.i32[1];
      v32 = vcvtq_f64_f32(v29);
      v33 = vbslq_s8(v31, v32, vaddq_f64(size, v32));
    }

    else
    {
      v24.f32[1] = v14;
      v25.f32[1] = v16;
      origin = vaddq_f64(self->super.mBox.origin, vcvtq_f64_f32(v24));
      v33 = vcvtq_f64_f32(vsub_f32(v25, v24));
    }

    v41 = v33;
  }

  else
  {
    v41 = self->super.mBox.size;
    origin = self->super.mBox.origin;
  }

  width = v41.width;
  y = origin.y;
  x = origin.x;
  height = v41.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)transformRectToPage:(CGRect)result
{
  mDrawingContext = self->mDrawingContext;
  if (mDrawingContext)
  {
    [(CMDrawingContext *)mDrawingContext transformRectToPage:result.origin.x, result.origin.y, result.size.width, result.size.height];
  }

  return result;
}

@end