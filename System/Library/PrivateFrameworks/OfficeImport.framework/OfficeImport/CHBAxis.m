@interface CHBAxis
+ (Class)chbAxisClassWith:(XlChartPlotAxis *)a3 plotAxis:(int)a4;
+ (Class)chbAxisClassWith:(id)a3;
+ (id)readWithXlPlotAxis:(int)a3 state:(id)a4;
+ (int)chbAxisIdForPlotAxis:(int)a3 state:(id)a4;
+ (int)chdAxisPositionFromAxisType:(int)a3;
+ (int)xlPlotAxisTypeFrom:(int)a3;
@end

@implementation CHBAxis

+ (id)readWithXlPlotAxis:(int)a3 state:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [v5 axisGroup];
  if (!XlChartBinaryReader::hasAxis([v5 xlReader], v6, v4))
  {
LABEL_20:
    v10 = 0;
    goto LABEL_64;
  }

  v62 = 0;
  v7 = [v5 xlReader];
  (*(*v7 + 720))(v7, v6, v4, &v62);
  v8 = [CHBAxis chbAxisClassWith:v62 plotAxis:v4];
  if (!v8)
  {
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }

    goto LABEL_20;
  }

  v9 = [(objc_class *)v8 readFrom:v62 state:v5];
  v10 = v9;
  if (v6)
  {
    [v9 setSecondary:1];
  }

  v11 = [CHBAxis chbAxisIdForPlotAxis:v4 state:v5];
  [v10 setAxisId:v11];
  [v10 setAxisType:v11];
  [v10 setAxisPosition:{+[CHBAxis chdAxisPositionFromAxisType:](CHBAxis, "chdAxisPositionFromAxisType:", v11)}];
  v12 = v62;
  if (*(v62 + 145) == 1)
  {
    [v10 setContentFormatId:*(v62 + 122)];
    v12 = v62;
  }

  if (*(v12 + 144) == 1)
  {
    [v10 setFontIndex:{+[EBFontTable edFontIndexFromXlFontIndex:](EBFontTable, "edFontIndexFromXlFontIndex:", *(v12 + 120))}];
  }

  v13 = objc_alloc_init(OADGraphicProperties);
  v14 = *(v62 + 24);
  if (v14)
  {
    if (*(v14 + 16) == 5)
    {
      [v10 setLineVisible:0];
    }

    if ((*(v14 + 27) & 1) == 0)
    {
      [v10 setDeleted:1];
    }
  }

  v15 = [CHBGraphicProperties oadStrokeFrom:v14];
  [(OADGraphicProperties *)v13 setStroke:v15];

  v16 = [v5 autoStyling];
  [v16 resolveAxisGraphicProperties:v13];

  [v10 setAxisGraphicProperties:v13];
  v17 = *(v62 + 72);
  if (v17)
  {
    [v10 setMajorTickMark:*(v17 + 28)];
    [v10 setMinorTickMark:*(v17 + 32)];
    [v10 setTickLabelPosition:*(v17 + 36)];
    [v10 setTickLabelAutoRotation:XlChartTick::isAutoRotation(v17)];
    v18 = [v5 xlReader];
    v19 = *(v17 + 20);
    if (*(v18 + 1344) == 1 && v19 >= 0x40)
    {
      v20 = *(v17 + 16);
      v61[0] = 255;
      v61[1] = v20;
      v61[2] = BYTE1(v20);
      v61[3] = BYTE2(v20);
      v21 = [OITSUColor colorWithCsColour:v61];
      v22 = [v5 resources];
      v23 = [v22 colors];
      v24 = [v23 addOrEquivalentColorExcludingDefaults:v21];

      [v10 setTickLabelColorIndex:v24];
    }

    else
    {
      [v10 setTickLabelColorIndex:v19];
    }

    v25 = *(v17 + 24);
    v26 = v25 + -90.0;
    if (v25 == 255)
    {
      v26 = 90.0;
    }

    v27 = -v25;
    if (v25 > 0x5A)
    {
      v27 = v26;
    }

    [v10 setTickLabelRotationAngle:v27];
  }

  v28 = objc_alloc_init(OADGraphicProperties);
  v29 = [CHBGraphicProperties oadStrokeFrom:*(v62 + 40)];
  [(OADGraphicProperties *)v28 setStroke:v29];

  v30 = [v5 autoStyling];
  [v30 resolveMinorGridLinesGraphicProperties:v28];

  [v10 setMinorGridLinesGraphicProperties:v28];
  v31 = objc_alloc_init(OADGraphicProperties);
  v32 = [CHBGraphicProperties oadStrokeFrom:*(v62 + 32)];
  [(OADGraphicProperties *)v31 setStroke:v32];

  v33 = [v5 autoStyling];
  [v33 resolveMajorGridLinesGraphicProperties:v31];

  [v10 setMajorGridLinesGraphicProperties:v31];
  v34 = [CHBGraphicProperties oadGraphicPropertiesFromState:v5 xlLineStyle:*(v62 + 48) xlFillStyle:*(v62 + 56)];
  v35 = (*(*v62 + 32))(v62);
  v37 = v35 == 1 && v11 != 2;
  if (v35 == 2 || v37)
  {
    v40 = [v5 autoStyling];
    [v40 resolveWallGraphicProperties:v34];

    v41 = [v5 chart];
    [v41 setSideWallGraphicProperties:v34];

    v39 = [v5 chart];
    [v39 setBackWallGraphicProperties:v34];
    goto LABEL_38;
  }

  if (!v35)
  {
    v38 = [v5 autoStyling];
    [v38 resolveFloorGraphicProperties:v34];

    v39 = [v5 chart];
    [v39 setFloorGraphicProperties:v34];
LABEL_38:
  }

  v42 = v62;
  v43 = *(v62 + 16);
  if (v43)
  {
    v44 = [CHBTitle readFrom:v43 state:v5];
    [v10 setTitle:v44];

    v42 = v62;
  }

  v45 = CXGetRootElement(*(v42 + 112), *(v42 + 140));
  v46 = v45;
  if (v45)
  {
    if (xmlStrEqual(v45->name, "txPr"))
    {
      v47 = objc_alloc_init(OADTextBody);
      v48 = [[OAXDrawingState alloc] initWithClient:0];
      [OAXTextBody readTextBodyFromXmlNode:v46 textBody:v47 drawingState:v48];
      if ([(OADTextBody *)v47 paragraphCount])
      {
        v49 = [(OADTextBody *)v47 firstParagraphEffects];
        [v10 setLabelEffects:v49];
      }
    }

    xmlFreeDoc(v46->doc);
  }

  v50 = v62;
  if (*(v62 + 124))
  {
    v51 = [CHBGraphicProperties oadGraphicPropertiesFromShapePropsStream:*(v62 + 80) size:?];
    v52 = v51;
    if (v51 && [v51 hasEffects])
    {
      v53 = [v5 autoStyling];
      [v53 resolveAxisGraphicProperties:v52];

      [v10 setAxisGraphicProperties:v52];
    }

    v50 = v62;
  }

  if (*(v50 + 128))
  {
    v54 = [CHBGraphicProperties oadGraphicPropertiesFromShapePropsStream:*(v50 + 88) size:?];
    v55 = v54;
    if (v54 && [v54 hasEffects])
    {
      v56 = [v5 autoStyling];
      [v56 resolveAxisGraphicProperties:v55];

      [v10 setMajorGridLinesGraphicProperties:v55];
    }

    v50 = v62;
  }

  if (!*(v50 + 132))
  {
    goto LABEL_62;
  }

  v57 = [CHBGraphicProperties oadGraphicPropertiesFromShapePropsStream:*(v50 + 96) size:?];
  v58 = v57;
  if (v57 && [v57 hasEffects])
  {
    v59 = [v5 autoStyling];
    [v59 resolveAxisGraphicProperties:v58];

    [v10 setMinorGridLinesGraphicProperties:v58];
  }

  v50 = v62;
  if (v62)
  {
LABEL_62:
    (*(*v50 + 8))(v50);
  }

LABEL_64:

  return v10;
}

+ (int)chbAxisIdForPlotAxis:(int)a3 state:(id)a4
{
  v5 = [a4 axisGroup];
  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  if (v5)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 1)
  {
    v9 = v7;
  }

  if (a3 == 2)
  {
    return v6;
  }

  else
  {
    return v9;
  }
}

+ (Class)chbAxisClassWith:(XlChartPlotAxis *)a3 plotAxis:(int)a4
{
  if (a3)
  {
    v5 = (*(a3->var0 + 4))(a3, a2);
    if (!v5 || v5 == 2 || v5 == 1)
    {
      v6 = objc_opt_class();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (Class)chbAxisClassWith:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)xlPlotAxisTypeFrom:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE3EC[a3 - 1];
  }
}

+ (int)chdAxisPositionFromAxisType:(int)a3
{
  if (a3 > 4)
  {
    return -1;
  }

  else
  {
    return dword_25D6FE400[a3];
  }
}

@end