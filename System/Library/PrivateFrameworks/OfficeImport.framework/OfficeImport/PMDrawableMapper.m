@interface PMDrawableMapper
- (CGRect)shapeTextBoxWithState:(id)a3;
- (CGRect)slideRect;
- (CGRect)transformRectToPage:(CGRect)result;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapBounds;
- (void)mapChartAt:(id)a3 withState:(id)a4;
- (void)mapDiagramAt:(id)a3 withState:(id)a4;
- (void)mapFreeForm:(id)a3 orientedBounds:(id)a4 transformedBounds:(CGRect *)a5 state:(id)a6;
- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtImageAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4;
- (void)mapRectangularShapeAt:(id)a3 withState:(id)a4;
- (void)mapShapeAsBackgroundAt:(id)a3 withState:(id)a4;
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
  v2 = [(CMMapper *)self root];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 slideSize];
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

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 childrenCount];
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
    [(PMDrawableMapper *)self mapOfficeArtImageAt:v6 withState:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PMDrawableMapper *)self mapDiagramAt:v6 withState:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PMDrawableMapper *)self mapOfficeArtShapeAt:v6 withState:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PMDrawableMapper *)self mapOfficeArtGroupAt:v6 withState:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [[PMTableMapper alloc] initWithOadTable:self->super.mDrawable bounds:self->super.mOrientedBounds parent:self];
            [(PMTableMapper *)v14 mapAt:v6 withState:v7];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PMDrawableMapper *)self mapChartAt:v6 withState:v7];
            }
          }
        }
      }
    }
  }

  if (v9)
  {
    [v6 addChild:v9];
  }

  else if ([(PMDrawableMapper *)self isTopLevelMapper])
  {
    v15 = [(CMDrawingContext *)self->mDrawingContext copyPDF];
    if (v15)
    {
      v9 = [OIXMLElement elementWithType:9];
      [v6 insertChild:v9 atIndex:v8];
      v16 = +[CMGlobalCache drawableElementCache];
      v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self->super.mDrawable];
      [v16 setObject:v9 forKey:v17];

      v30.receiver = self;
      v30.super_class = PMDrawableMapper;
      v18 = [(CMMapper *)&v30 archiver];
      v19 = [v18 addResourceForDrawable:v15 withType:7 drawable:self->super.mDrawable];
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

- (void)mapOfficeArtImageAt:(id)a3 withState:(id)a4
{
  v18 = a3;
  v19 = a4;
  v6 = self->super.mDrawable;
  [(OADDrawable *)v6 movie];

  v7 = [OIXMLElement elementWithType:9];
  v8 = [(OADDrawable *)self->super.mDrawable imageProperties];
  if ([v8 hasImageFill])
  {
    v17 = [v8 imageFill];
    v9 = [CMImageFillMapper alloc];
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    [(PMDrawableMapper *)self transformRectToPage:?];
    v10 = [(CMImageFillMapper *)v9 initWithOadFill:v17 bounds:self parent:?];
    if ([(CMImageFillMapper *)v10 isCropped])
    {
      v11 = [OIXMLElement elementWithType:3];
      v12 = objc_alloc_init(CMDrawableStyle);
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF4D30 stringWithColons:@":hidden;"];
      [(CMImageFillMapper *)v10 uncroppedBox];
      [(CMDrawableStyle *)v12 addPositionProperties:?];
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:v12 embedStyle:1];
      [v11 addChild:v7];
      mStyle = self->super.mStyle;
      v14 = [v8 orientedBounds];
      [v14 bounds];
      [(PMDrawableMapper *)self transformRectToPage:?];
      [(CMDrawableStyle *)mStyle addPositionProperties:?];
    }

    else
    {
      v11 = v7;
      v15 = self->super.mStyle;
      v12 = [v8 orientedBounds];
      [(CMDrawableStyle *)v12 bounds];
      [(PMDrawableMapper *)self transformRectToPage:?];
      [(CMDrawableStyle *)v15 addPositionProperties:?];
    }

    v16 = [(CMImageFillMapper *)v10 mapImageFill:v7 withState:v19];
    if (v16)
    {
      [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v7 value:v16];
    }

    else
    {
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@":1px solid black;"];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v11 style:self->super.mStyle embedStyle:1];
    [v18 addChild:v11];
  }

  else
  {
    v11 = 0;
  }
}

- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4
{
  v32 = a3;
  v6 = a4;
  objc_storeStrong(&self->mShape, self->super.mDrawable);
  v7 = [(OADShape *)self->mShape type];
  v8 = [(OADShape *)self->mShape shapeProperties];
  v9 = [v8 orientedBounds];
  v10 = [v8 fill];
  v11 = [v8 isTextBox];
  if (v7 == 202)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v9 rotation];
  v14 = v13;
  [v10 alpha];
  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v10 color];
    [CMColorProperty transformedAlphaFromOADColor:v17];
    v16 = v16 * v18;
  }

  if (((v12 & 1) != 0 || v7 == 75 || v7 == 1) && (v14 == 0.0 ? (v19 = v16 == 1.0) : (v19 = 0), v19 && [(PMDrawableMapper *)self isTopLevelMapper]))
  {
    [(PMDrawableMapper *)self mapRectangularShapeAt:v32 withState:v6];
  }

  else
  {
    [(PMDrawableMapper *)self mapShapeAsBackgroundAt:v32 withState:v6];
    v20 = [(OADShape *)self->mShape textBody];
    if (v20)
    {
      v21 = [(OADShape *)self->mShape textBody];
      v22 = [v21 isEmpty];

      if ((v22 & 1) == 0)
      {
        v31 = [OIXMLElement elementWithType:3];
        [(PMDrawableMapper *)self shapeTextBoxWithState:v6];
        if (v24 <= 0.0 || v23 <= 0.0)
        {
          [v9 bounds];
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
        [v32 addChild:v31];
        v27 = self->super.mStyle;
        v33.receiver = self;
        v33.super_class = PMDrawableMapper;
        [(CMMapper *)&v33 addStyleUsingGlobalCacheTo:v31 style:v27 embedStyle:1];
        v28 = [PMShapeTextMapper alloc];
        v29 = [(OADShape *)self->mShape textBody];
        v30 = [(PMShapeTextMapper *)v28 initWithOadTextBody:v29 bounds:v25 parent:self];

        [(PMShapeTextMapper *)v30 mapAt:v31 withState:v6];
      }
    }
  }
}

- (void)mapRectangularShapeAt:(id)a3 withState:(id)a4
{
  v25 = a3;
  v24 = a4;
  v6 = [(OADShape *)self->mShape shapeProperties];
  v7 = [v6 orientedBounds];
  [v7 bounds];
  [(PMDrawableMapper *)self transformRectToPage:?];
  v8 = [OADOrientedBounds orientedBoundsWithBounds:?];

  mStyle = self->super.mStyle;
  [v8 bounds];
  [(CMDrawableStyle *)mStyle addPositionProperties:?];
  v10 = [v6 fill];
  if (v10)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 stroke];
  v13 = [v12 fill];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [CMBordersProperty alloc];
      v15 = [v6 stroke];
      v16 = [(CMBordersProperty *)v14 initWithOADStroke:v15];

      [(CMStyle *)self->super.mStyle addProperty:v16 forKey:0x286F07E30];
    }
  }

  if (v11)
  {
    v17 = [CMImageFillMapper alloc];
    [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
    v18 = [(CMImageFillMapper *)v17 initWithOadFill:v10 bounds:self parent:?];
    [(CMImageFillMapper *)v18 mapNonImageFillAt:v25 toStyle:self->super.mStyle withState:v24];
  }

  v19 = [OIXMLElement elementWithType:3];
  [v25 addChild:v19];
  v20 = self->super.mStyle;
  v26.receiver = self;
  v26.super_class = PMDrawableMapper;
  [(CMMapper *)&v26 addStyleUsingGlobalCacheTo:v19 style:v20 embedStyle:1];
  v21 = [PMShapeTextMapper alloc];
  v22 = [(OADShape *)self->mShape textBody];
  v23 = [(PMShapeTextMapper *)v21 initWithOadTextBody:v22 bounds:v8 parent:self];

  [(PMShapeTextMapper *)v23 setRectangular:1];
  [(PMShapeTextMapper *)v23 mapAt:v19 withState:v24];
}

- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = self->super.mDrawable;
  v8 = [(OADDrawable *)v7 childCount];
  [(OADDrawable *)v7 logicalBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27 = [OAITOrientedBounds relativeOrientedBoundsOfDrawable:v7];
  v17 = [CMShapeUtils transformFromBounds:v27 toOrientedBounds:v10, v12, v14, v16];
  v18 = [(PMDrawableMapper *)self drawingContext];
  [v18 addTransform:v17];

  if (v8)
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
        v24 = [(PMDrawableMapper *)self drawingContext];
        [(PMDrawableMapper *)v23 setDrawingContext:v24];

        [(PMDrawableMapper *)v23 mapAt:v28 withState:v6];
      }

      v19 = v21;
      v25 = v8 > v21++;
      v20 = v22;
    }

    while (v25);
  }

  else
  {
    v22 = 0;
  }

  v26 = [(PMDrawableMapper *)self drawingContext];
  [v26 restoreLastTransform];
}

- (void)mapDiagramAt:(id)a3 withState:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[CMDiagramMapper alloc] initWithOddDiagram:self->super.mDrawable drawingContext:self->mDrawingContext orientedBounds:self->super.mOrientedBounds parent:self];
  [(CMDiagramMapper *)v7 mapAt:v8 withState:v6];
}

- (void)mapChartAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[EMChartMapper alloc] initWithChart:self->super.mDrawable parent:self];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = [(EMChartMapper *)v8 copyPdfWithState:v7 withSize:v9, v10];
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

  [v6 addChild:v12];
  [(CMDrawableStyle *)self->super.mStyle addPositionProperties:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v12 style:self->super.mStyle embedStyle:1];
}

- (void)mapShapeAsBackgroundAt:(id)a3 withState:(id)a4
{
  v20 = a4;
  v5 = [(OADShape *)self->mShape type];
  if (!v5)
  {
    if ([CMShapeUtils isShapeALine:self->mShape])
    {
      v5 = 20;
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = [(OADShape *)self->mShape shapeProperties];
  v7 = [v6 orientedBounds];

  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v21[0] = *MEMORY[0x277CBF3A0];
  v21[1] = v8;
  switch(v5)
  {
    case 0:
      v17 = [(OADShape *)self->mShape geometry];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [(OADShape *)self->mShape geometry];
        [(PMDrawableMapper *)self mapFreeForm:v19 orientedBounds:v7 transformedBounds:v21 state:v20];
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
      v9 = [(OADShape *)self->mShape shapeProperties];
      v10 = [v9 stroke];
      v11 = [(OADShape *)self->mShape geometry];
      v15 = [v11 adjustValues];
      [CMShapeRenderer renderLine:v5 stroke:v10 adjustValues:v15 orientedBounds:v7 state:v20 drawingContext:self->mDrawingContext];

      goto LABEL_7;
    default:
      if ((v5 - 176) > 0x23 || ((1 << (v5 + 80)) & 0xF04000841) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v9 = [(OADShape *)self->mShape shapeProperties];
      v10 = [v9 fill];
      v11 = [(OADShape *)self->mShape shapeProperties];
      v12 = [v11 stroke];
      v13 = [(OADShape *)self->mShape geometry];
      v14 = [v13 adjustValues];
      [CMShapeRenderer renderCanonicalShape:v5 fill:v10 stroke:v12 adjustValues:v14 orientedBounds:v7 state:v20 drawingContext:self->mDrawingContext];

LABEL_7:
LABEL_8:

      return;
  }
}

- (void)mapFreeForm:(id)a3 orientedBounds:(id)a4 transformedBounds:(CGRect *)a5 state:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a6;
  if ([v15 pathCount])
  {
    v11 = [(OADShape *)self->mShape shapeProperties];
    v12 = [v11 fill];
    v13 = [(OADShape *)self->mShape shapeProperties];
    v14 = [v13 stroke];
    [CMShapeRenderer renderFreeForm:v15 fill:v12 stroke:v14 orientedBounds:v9 state:v10 drawingContext:self->mDrawingContext];
  }
}

- (CGRect)shapeTextBoxWithState:(id)a3
{
  v4 = a3;
  v5 = [(OADShape *)self->mShape geometry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if ([v4 sourceFormat] == 5)
  {
    v6 = [v5 equivalentCustomGeometry];
    goto LABEL_5;
  }

  v7 = [v5 equivalentCustomGeometry];
  [CMShapeUtils setCoordSpaceForCustomeGeometry:self->super.mBox.size.width fromSize:self->super.mBox.size.height];
LABEL_7:
  if ([v7 textBodyRectCount])
  {
    v8 = [v7 textBodyRectAtIndex:0];
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 left], v7);
    v10 = v9;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 right], v7);
    v12 = v11;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 top], v7);
    v14 = v13;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v8 bottom], v7);
    v16 = v15;
    v17 = [v7 isEscher];
    v24.f32[0] = v10;
    v25.f32[0] = v12;
    if (v17)
    {
      v38 = v16;
      v39 = v14;
      v40 = v12;
      v42 = v10;
      if (v7)
      {
        *&v18 = v14;
        *&v22 = v16;
        [v7 geometryCoordSpace];
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