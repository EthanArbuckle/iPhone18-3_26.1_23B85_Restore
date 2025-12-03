@interface CHBGraphicProperties
+ (char)oaPresetDashTypeFromLinePatternEnum:(int)enum;
+ (float)widthFromLineWeightEnum:(int)enum;
+ (id)mapAssociatedEscherObjectstate:(id)objectstate;
+ (id)mapFillStyle:(const XlChartFillStyle *)style xlPictureFormat:(const XlChartPicF *)format state:(id)state;
+ (id)mapFillStyleForMarker:(const XlChartMarkerStyle *)marker complex:(BOOL)complex state:(id)state;
+ (id)mapPresetDashFromPattern:(int)pattern;
+ (id)oadGraphicPropertiesFromShapePropsStream:(const char *)stream size:(unsigned int)size;
+ (id)oadGraphicPropertiesFromState:(id)state xlLineStyle:(const XlChartLineStyle *)style xlFillStyle:(const XlChartFillStyle *)fillStyle;
+ (id)oadGraphicPropertiesFromXlChartFrameType:(XlChartFrameType *)type state:(id)state;
+ (id)oadGraphicPropertiesFromXlChartSeriesFormat:(const XlChartSeriesFormat *)format state:(id)state;
+ (id)oadGraphicPropertiesFromXlChartTextFrame:(void *)frame state:(id)state;
+ (id)oadGraphicPropertiesFromXlLeaderLineStyleInPlot:(const void *)plot state:(id)state;
+ (id)oadGraphicPropertiesFromXlMarkerStyle:(const XlChartMarkerStyle *)style complex:(BOOL)complex state:(id)state;
+ (id)oadStrokeFrom:(const XlChartLineStyle *)from;
+ (int)lineWeightEnumFromWidth:(float)width;
+ (int)presetLinePatternEnumFromDash:(id)dash;
@end

@implementation CHBGraphicProperties

+ (id)oadGraphicPropertiesFromXlChartFrameType:(XlChartFrameType *)type state:(id)state
{
  stateCopy = state;
  ebReaderSheetState = [stateCopy ebReaderSheetState];
  readerState = [ebReaderSheetState readerState];
  oaState = [readerState oaState];
  if ([oaState useXmlBlobs])
  {
    var16 = type->var16;

    if (var16)
    {
      v11 = [self oadGraphicPropertiesFromShapePropsStream:type->var15 size:type->var16];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = objc_alloc_init(OADGraphicProperties);
  v12 = [self mapFillStyle:type->var10 xlPictureFormat:type->var11 state:stateCopy];
  [(OADGraphicProperties *)v11 setFill:v12];

  v13 = [self oadStrokeFrom:type->var9];
  [(OADGraphicProperties *)v11 setStroke:v13];

  v14 = [CHDChart binaryEffects:type->var12];
  [(OADGraphicProperties *)v11 setEffects:v14];

LABEL_6:
  v15 = [[OADOrientedBounds alloc] initWithBounds:type->var1, type->var2, type->var3, type->var4];
  [(OADDrawableProperties *)v11 setOrientedBounds:v15];

  return v11;
}

+ (id)oadGraphicPropertiesFromShapePropsStream:(const char *)stream size:(unsigned int)size
{
  v4 = CXGetRootElement(stream, size);
  v5 = v4;
  if (v4)
  {
    if (xmlStrEqual(v4->name, "spPr"))
    {
      v6 = objc_alloc_init(OADGraphicProperties);
      v7 = [[OAXDrawingState alloc] initWithClient:0];
      [OAXGraphic readPropertiesFromXmlNode:v5 graphicProperties:v6 drawingState:v7];
    }

    else
    {
      v6 = 0;
    }

    xmlFreeDoc(v5->doc);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)oadGraphicPropertiesFromXlChartTextFrame:(void *)frame state:(id)state
{
  v4 = [self oadGraphicPropertiesFromXlChartFrameType:frame state:state];

  return v4;
}

+ (id)oadGraphicPropertiesFromXlChartSeriesFormat:(const XlChartSeriesFormat *)format state:(id)state
{
  stateCopy = state;
  v7 = objc_alloc_init(OADGraphicProperties);
  if (format)
  {
    var1 = format->var1;
    var2 = format->var2;
    var4 = format->var4;
    var16 = format->var16;
  }

  else
  {
    var1 = 0;
    var2 = 0;
    var4 = 0;
    var16 = 0;
  }

  v12 = [self mapFillStyle:var2 xlPictureFormat:var4 state:stateCopy];
  [(OADGraphicProperties *)v7 setFill:v12];

  v13 = [self oadStrokeFrom:var1];
  [(OADGraphicProperties *)v7 setStroke:v13];

  v14 = [CHDChart binaryEffects:var16];
  [(OADGraphicProperties *)v7 setEffects:v14];

  return v7;
}

+ (id)oadGraphicPropertiesFromXlLeaderLineStyleInPlot:(const void *)plot state:(id)state
{
  stateCopy = state;
  if (plot)
  {
    if (*(plot + 27) && ([CHBGraphicProperties oadGraphicPropertiesFromShapePropsStream:*(plot + 11) size:?], v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
    {
      v9 = v7;
      if ([(OADGraphicProperties *)v7 hasStroke])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = objc_alloc_init(OADGraphicProperties);

    v10 = [self oadStrokeFrom:*(plot + 7)];
    [(OADGraphicProperties *)v8 setStroke:v10];

LABEL_8:
    v11 = v8;

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)oadGraphicPropertiesFromState:(id)state xlLineStyle:(const XlChartLineStyle *)style xlFillStyle:(const XlChartFillStyle *)fillStyle
{
  stateCopy = state;
  v9 = objc_alloc_init(OADGraphicProperties);
  v10 = [self mapFillStyle:fillStyle xlPictureFormat:0 state:stateCopy];
  [(OADGraphicProperties *)v9 setFill:v10];

  v11 = [self oadStrokeFrom:style];
  [(OADGraphicProperties *)v9 setStroke:v11];

  v12 = [CHDChart binaryEffects:0];
  [(OADGraphicProperties *)v9 setEffects:v12];

  return v9;
}

+ (id)oadStrokeFrom:(const XlChartLineStyle *)from
{
  if (!from)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if (from->var5)
  {
    v4 = +[CHDAutomaticObject automaticStroke];
LABEL_7:
    v5 = v4;
    goto LABEL_13;
  }

  if (from->var2 == 5)
  {
    v4 = +[OADStroke nullStroke];
    goto LABEL_7;
  }

  v5 = objc_alloc_init(OADStroke);
  v7 = objc_alloc_init(OADSolidFill);
  v8 = [OADIndexedColor indexedColorWithIndex:from->var4];
  var8 = from->var8;
  if (var8 != 1.0)
  {
    v10 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
    *&v11 = var8;
    [(OADValueColorTransform *)v10 setValue:v11];
    [v8 addTransform:v10];
  }

  [(OADSolidFill *)v7 setColor:v8];
  [(OADStroke *)v5 setFill:v7];
  [self widthFromLineWeightEnum:from->var3];
  [(OADStroke *)v5 setWidth:?];
  var9 = from->var9;
  if (var9 >= 1)
  {
    *&v12 = var9;
    [(OADStroke *)v5 setWidth:v12];
  }

  v14 = [self mapPresetDashFromPattern:from->var2];
  [(OADStroke *)v5 setDash:v14];

LABEL_13:

  return v5;
}

+ (id)oadGraphicPropertiesFromXlMarkerStyle:(const XlChartMarkerStyle *)style complex:(BOOL)complex state:(id)state
{
  complexCopy = complex;
  stateCopy = state;
  v9 = objc_alloc_init(OADGraphicProperties);
  if (style)
  {
    if (style->var8)
    {
      if (style->var9)
      {
        v10 = +[CHDAutomaticObject automaticStroke];
        [(OADGraphicProperties *)v9 setStroke:v10];
      }

      else
      {
        v10 = objc_alloc_init(OADStroke);
        v11 = objc_alloc_init(OADSolidFill);
        v12 = [OADIndexedColor indexedColorWithIndex:style->var5];
        [(OADSolidFill *)v11 setColor:v12];

        [(OADStroke *)v10 setFill:v11];
        [self widthFromLineWeightEnum:1];
        [(OADStroke *)v10 setWidth:?];
        v13 = [self mapPresetDashFromPattern:0];
        [(OADStroke *)v10 setDash:v13];

        [(OADGraphicProperties *)v9 setStroke:v10];
      }
    }

    if (style->var7)
    {
      v14 = [self mapFillStyleForMarker:style complex:complexCopy state:stateCopy];
      [(OADGraphicProperties *)v9 setFill:v14];
    }
  }

  return v9;
}

+ (id)mapPresetDashFromPattern:(int)pattern
{
  if (pattern == 5)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&pattern;
    v3 = objc_alloc_init(OADPresetDash);
    -[OADPresetDash setType:](v3, "setType:", [self oaPresetDashTypeFromLinePatternEnum:v4]);
  }

  return v3;
}

+ (id)mapFillStyle:(const XlChartFillStyle *)style xlPictureFormat:(const XlChartPicF *)format state:(id)state
{
  stateCopy = state;
  v8 = stateCopy;
  if (!style)
  {
    fill = 0;
    goto LABEL_23;
  }

  if (style->var7)
  {
    v9 = +[CHDAutomaticObject automaticFill];
LABEL_18:
    fill = v9;
    goto LABEL_23;
  }

  if (!style->var3)
  {
    v9 = +[OADNullFill nullFill];
    goto LABEL_18;
  }

  ebReaderSheetState = [stateCopy ebReaderSheetState];
  readerState = [ebReaderSheetState readerState];
  v13 = [EBEscher readRootObjectWithType:6 state:readerState];

  if (v13)
  {
    eshObject = [v13 eshObject];
    if ((*(*eshObject + 16))(eshObject) == 4)
    {
      v15 = objc_alloc_init(OADGraphicProperties);
      ebReaderSheetState2 = [v8 ebReaderSheetState];
      readerState2 = [ebReaderSheetState2 readerState];
      oaState = [readerState2 oaState];
      [OABShape readGraphicDefaults:v13 to:v15 state:oaState];

      fill = [(OADGraphicProperties *)v15 fill];

      if (!format)
      {
        goto LABEL_13;
      }

LABEL_11:
      if ((format->var3 & 0xFFFFFFFE) == 2)
      {
        objc_opt_class();
        v19 = fill;
        v20 = objc_alloc_init(OADTileTechnique);
        [(OADSolidFill *)v19 setTechnique:v20];
      }

      goto LABEL_13;
    }
  }

  fill = 0;
  if (format)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (fill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && style->var3 == 1)
    {
      [v8 xlReader];
    }
  }

  else if (style->var3 == 1)
  {
    fill = objc_alloc_init(OADSolidFill);
    v21 = [OADIndexedColor indexedColorWithIndex:style->var4];
    [(OADSolidFill *)fill setColor:v21];
  }

  else
  {
    fill = 0;
  }

LABEL_23:

  return fill;
}

+ (id)mapFillStyleForMarker:(const XlChartMarkerStyle *)marker complex:(BOOL)complex state:(id)state
{
  complexCopy = complex;
  stateCopy = state;
  if (marker)
  {
    if (marker->var9)
    {
      v9 = +[CHDAutomaticObject automaticFill];
    }

    else if (!complexCopy || ([self mapAssociatedEscherObjectstate:stateCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = objc_alloc_init(OADSolidFill);
      v10 = [OADIndexedColor indexedColorWithIndex:marker->var6];
      [(OADSolidFill *)v9 setColor:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mapAssociatedEscherObjectstate:(id)objectstate
{
  objectstateCopy = objectstate;
  ebReaderSheetState = [objectstateCopy ebReaderSheetState];
  readerState = [ebReaderSheetState readerState];
  v6 = [EBEscher readRootObjectWithType:6 state:readerState];

  if (v6 && (v7 = [v6 eshObject], (*(*v7 + 16))(v7) == 4))
  {
    v8 = objc_alloc_init(OADGraphicProperties);
    ebReaderSheetState2 = [objectstateCopy ebReaderSheetState];
    readerState2 = [ebReaderSheetState2 readerState];
    oaState = [readerState2 oaState];
    [OABShape readGraphicDefaults:v6 to:v8 state:oaState];

    fill = [(OADGraphicProperties *)v8 fill];
  }

  else
  {
    fill = 0;
  }

  return fill;
}

+ (char)oaPresetDashTypeFromLinePatternEnum:(int)enum
{
  if (enum > 8)
  {
    return -1;
  }

  else
  {
    return byte_25D6FE47C[enum];
  }
}

+ (float)widthFromLineWeightEnum:(int)enum
{
  if (enum <= 1)
  {
    if (enum == 1)
    {
      return 2.0;
    }

    return 1.0;
  }

  if (enum != 2)
  {
    result = 0.25;
    if (enum == 0xFFFF)
    {
      return result;
    }

    return 1.0;
  }

  return 3.0;
}

+ (int)presetLinePatternEnumFromDash:(id)dash
{
  dashCopy = dash;
  if (!dashCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [dashCopy type] + 1;
      if (v5 <= 0xFu)
      {
        v4 = dword_25D6FE488[v5];
        goto LABEL_8;
      }
    }

LABEL_7:
    v4 = 5;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

+ (int)lineWeightEnumFromWidth:(float)width
{
  if (width >= 1.0 && width < 2.0)
  {
    return 0;
  }

  if (width >= 2.0 && width < 3.0)
  {
    return 1;
  }

  if (width >= 3.0)
  {
    return 2;
  }

  return 0xFFFF;
}

@end