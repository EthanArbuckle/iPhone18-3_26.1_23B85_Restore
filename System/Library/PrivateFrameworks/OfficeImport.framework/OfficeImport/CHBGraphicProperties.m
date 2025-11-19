@interface CHBGraphicProperties
+ (char)oaPresetDashTypeFromLinePatternEnum:(int)a3;
+ (float)widthFromLineWeightEnum:(int)a3;
+ (id)mapAssociatedEscherObjectstate:(id)a3;
+ (id)mapFillStyle:(const XlChartFillStyle *)a3 xlPictureFormat:(const XlChartPicF *)a4 state:(id)a5;
+ (id)mapFillStyleForMarker:(const XlChartMarkerStyle *)a3 complex:(BOOL)a4 state:(id)a5;
+ (id)mapPresetDashFromPattern:(int)a3;
+ (id)oadGraphicPropertiesFromShapePropsStream:(const char *)a3 size:(unsigned int)a4;
+ (id)oadGraphicPropertiesFromState:(id)a3 xlLineStyle:(const XlChartLineStyle *)a4 xlFillStyle:(const XlChartFillStyle *)a5;
+ (id)oadGraphicPropertiesFromXlChartFrameType:(XlChartFrameType *)a3 state:(id)a4;
+ (id)oadGraphicPropertiesFromXlChartSeriesFormat:(const XlChartSeriesFormat *)a3 state:(id)a4;
+ (id)oadGraphicPropertiesFromXlChartTextFrame:(void *)a3 state:(id)a4;
+ (id)oadGraphicPropertiesFromXlLeaderLineStyleInPlot:(const void *)a3 state:(id)a4;
+ (id)oadGraphicPropertiesFromXlMarkerStyle:(const XlChartMarkerStyle *)a3 complex:(BOOL)a4 state:(id)a5;
+ (id)oadStrokeFrom:(const XlChartLineStyle *)a3;
+ (int)lineWeightEnumFromWidth:(float)a3;
+ (int)presetLinePatternEnumFromDash:(id)a3;
@end

@implementation CHBGraphicProperties

+ (id)oadGraphicPropertiesFromXlChartFrameType:(XlChartFrameType *)a3 state:(id)a4
{
  v6 = a4;
  v7 = [v6 ebReaderSheetState];
  v8 = [v7 readerState];
  v9 = [v8 oaState];
  if ([v9 useXmlBlobs])
  {
    var16 = a3->var16;

    if (var16)
    {
      v11 = [a1 oadGraphicPropertiesFromShapePropsStream:a3->var15 size:a3->var16];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = objc_alloc_init(OADGraphicProperties);
  v12 = [a1 mapFillStyle:a3->var10 xlPictureFormat:a3->var11 state:v6];
  [(OADGraphicProperties *)v11 setFill:v12];

  v13 = [a1 oadStrokeFrom:a3->var9];
  [(OADGraphicProperties *)v11 setStroke:v13];

  v14 = [CHDChart binaryEffects:a3->var12];
  [(OADGraphicProperties *)v11 setEffects:v14];

LABEL_6:
  v15 = [[OADOrientedBounds alloc] initWithBounds:a3->var1, a3->var2, a3->var3, a3->var4];
  [(OADDrawableProperties *)v11 setOrientedBounds:v15];

  return v11;
}

+ (id)oadGraphicPropertiesFromShapePropsStream:(const char *)a3 size:(unsigned int)a4
{
  v4 = CXGetRootElement(a3, a4);
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

+ (id)oadGraphicPropertiesFromXlChartTextFrame:(void *)a3 state:(id)a4
{
  v4 = [a1 oadGraphicPropertiesFromXlChartFrameType:a3 state:a4];

  return v4;
}

+ (id)oadGraphicPropertiesFromXlChartSeriesFormat:(const XlChartSeriesFormat *)a3 state:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(OADGraphicProperties);
  if (a3)
  {
    var1 = a3->var1;
    var2 = a3->var2;
    var4 = a3->var4;
    var16 = a3->var16;
  }

  else
  {
    var1 = 0;
    var2 = 0;
    var4 = 0;
    var16 = 0;
  }

  v12 = [a1 mapFillStyle:var2 xlPictureFormat:var4 state:v6];
  [(OADGraphicProperties *)v7 setFill:v12];

  v13 = [a1 oadStrokeFrom:var1];
  [(OADGraphicProperties *)v7 setStroke:v13];

  v14 = [CHDChart binaryEffects:var16];
  [(OADGraphicProperties *)v7 setEffects:v14];

  return v7;
}

+ (id)oadGraphicPropertiesFromXlLeaderLineStyleInPlot:(const void *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    if (*(a3 + 27) && ([CHBGraphicProperties oadGraphicPropertiesFromShapePropsStream:*(a3 + 11) size:?], v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
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

    v10 = [a1 oadStrokeFrom:*(a3 + 7)];
    [(OADGraphicProperties *)v8 setStroke:v10];

LABEL_8:
    v11 = v8;

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)oadGraphicPropertiesFromState:(id)a3 xlLineStyle:(const XlChartLineStyle *)a4 xlFillStyle:(const XlChartFillStyle *)a5
{
  v8 = a3;
  v9 = objc_alloc_init(OADGraphicProperties);
  v10 = [a1 mapFillStyle:a5 xlPictureFormat:0 state:v8];
  [(OADGraphicProperties *)v9 setFill:v10];

  v11 = [a1 oadStrokeFrom:a4];
  [(OADGraphicProperties *)v9 setStroke:v11];

  v12 = [CHDChart binaryEffects:0];
  [(OADGraphicProperties *)v9 setEffects:v12];

  return v9;
}

+ (id)oadStrokeFrom:(const XlChartLineStyle *)a3
{
  if (!a3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if (a3->var5)
  {
    v4 = +[CHDAutomaticObject automaticStroke];
LABEL_7:
    v5 = v4;
    goto LABEL_13;
  }

  if (a3->var2 == 5)
  {
    v4 = +[OADStroke nullStroke];
    goto LABEL_7;
  }

  v5 = objc_alloc_init(OADStroke);
  v7 = objc_alloc_init(OADSolidFill);
  v8 = [OADIndexedColor indexedColorWithIndex:a3->var4];
  var8 = a3->var8;
  if (var8 != 1.0)
  {
    v10 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
    *&v11 = var8;
    [(OADValueColorTransform *)v10 setValue:v11];
    [v8 addTransform:v10];
  }

  [(OADSolidFill *)v7 setColor:v8];
  [(OADStroke *)v5 setFill:v7];
  [a1 widthFromLineWeightEnum:a3->var3];
  [(OADStroke *)v5 setWidth:?];
  var9 = a3->var9;
  if (var9 >= 1)
  {
    *&v12 = var9;
    [(OADStroke *)v5 setWidth:v12];
  }

  v14 = [a1 mapPresetDashFromPattern:a3->var2];
  [(OADStroke *)v5 setDash:v14];

LABEL_13:

  return v5;
}

+ (id)oadGraphicPropertiesFromXlMarkerStyle:(const XlChartMarkerStyle *)a3 complex:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = objc_alloc_init(OADGraphicProperties);
  if (a3)
  {
    if (a3->var8)
    {
      if (a3->var9)
      {
        v10 = +[CHDAutomaticObject automaticStroke];
        [(OADGraphicProperties *)v9 setStroke:v10];
      }

      else
      {
        v10 = objc_alloc_init(OADStroke);
        v11 = objc_alloc_init(OADSolidFill);
        v12 = [OADIndexedColor indexedColorWithIndex:a3->var5];
        [(OADSolidFill *)v11 setColor:v12];

        [(OADStroke *)v10 setFill:v11];
        [a1 widthFromLineWeightEnum:1];
        [(OADStroke *)v10 setWidth:?];
        v13 = [a1 mapPresetDashFromPattern:0];
        [(OADStroke *)v10 setDash:v13];

        [(OADGraphicProperties *)v9 setStroke:v10];
      }
    }

    if (a3->var7)
    {
      v14 = [a1 mapFillStyleForMarker:a3 complex:v5 state:v8];
      [(OADGraphicProperties *)v9 setFill:v14];
    }
  }

  return v9;
}

+ (id)mapPresetDashFromPattern:(int)a3
{
  if (a3 == 5)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&a3;
    v3 = objc_alloc_init(OADPresetDash);
    -[OADPresetDash setType:](v3, "setType:", [a1 oaPresetDashTypeFromLinePatternEnum:v4]);
  }

  return v3;
}

+ (id)mapFillStyle:(const XlChartFillStyle *)a3 xlPictureFormat:(const XlChartPicF *)a4 state:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_23;
  }

  if (a3->var7)
  {
    v9 = +[CHDAutomaticObject automaticFill];
LABEL_18:
    v10 = v9;
    goto LABEL_23;
  }

  if (!a3->var3)
  {
    v9 = +[OADNullFill nullFill];
    goto LABEL_18;
  }

  v11 = [v7 ebReaderSheetState];
  v12 = [v11 readerState];
  v13 = [EBEscher readRootObjectWithType:6 state:v12];

  if (v13)
  {
    v14 = [v13 eshObject];
    if ((*(*v14 + 16))(v14) == 4)
    {
      v15 = objc_alloc_init(OADGraphicProperties);
      v16 = [v8 ebReaderSheetState];
      v17 = [v16 readerState];
      v18 = [v17 oaState];
      [OABShape readGraphicDefaults:v13 to:v15 state:v18];

      v10 = [(OADGraphicProperties *)v15 fill];

      if (!a4)
      {
        goto LABEL_13;
      }

LABEL_11:
      if ((a4->var3 & 0xFFFFFFFE) == 2)
      {
        objc_opt_class();
        v19 = v10;
        v20 = objc_alloc_init(OADTileTechnique);
        [(OADSolidFill *)v19 setTechnique:v20];
      }

      goto LABEL_13;
    }
  }

  v10 = 0;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && a3->var3 == 1)
    {
      [v8 xlReader];
    }
  }

  else if (a3->var3 == 1)
  {
    v10 = objc_alloc_init(OADSolidFill);
    v21 = [OADIndexedColor indexedColorWithIndex:a3->var4];
    [(OADSolidFill *)v10 setColor:v21];
  }

  else
  {
    v10 = 0;
  }

LABEL_23:

  return v10;
}

+ (id)mapFillStyleForMarker:(const XlChartMarkerStyle *)a3 complex:(BOOL)a4 state:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3)
  {
    if (a3->var9)
    {
      v9 = +[CHDAutomaticObject automaticFill];
    }

    else if (!v5 || ([a1 mapAssociatedEscherObjectstate:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = objc_alloc_init(OADSolidFill);
      v10 = [OADIndexedColor indexedColorWithIndex:a3->var6];
      [(OADSolidFill *)v9 setColor:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mapAssociatedEscherObjectstate:(id)a3
{
  v3 = a3;
  v4 = [v3 ebReaderSheetState];
  v5 = [v4 readerState];
  v6 = [EBEscher readRootObjectWithType:6 state:v5];

  if (v6 && (v7 = [v6 eshObject], (*(*v7 + 16))(v7) == 4))
  {
    v8 = objc_alloc_init(OADGraphicProperties);
    v9 = [v3 ebReaderSheetState];
    v10 = [v9 readerState];
    v11 = [v10 oaState];
    [OABShape readGraphicDefaults:v6 to:v8 state:v11];

    v12 = [(OADGraphicProperties *)v8 fill];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (char)oaPresetDashTypeFromLinePatternEnum:(int)a3
{
  if (a3 > 8)
  {
    return -1;
  }

  else
  {
    return byte_25D6FE47C[a3];
  }
}

+ (float)widthFromLineWeightEnum:(int)a3
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      return 2.0;
    }

    return 1.0;
  }

  if (a3 != 2)
  {
    result = 0.25;
    if (a3 == 0xFFFF)
    {
      return result;
    }

    return 1.0;
  }

  return 3.0;
}

+ (int)presetLinePatternEnumFromDash:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 type] + 1;
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

+ (int)lineWeightEnumFromWidth:(float)a3
{
  if (a3 >= 1.0 && a3 < 2.0)
  {
    return 0;
  }

  if (a3 >= 2.0 && a3 < 3.0)
  {
    return 1;
  }

  if (a3 >= 3.0)
  {
    return 2;
  }

  return 0xFFFF;
}

@end