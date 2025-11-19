@interface CHXAutoStyling
+ (id)colorWithSchemeColorId:(int)a3 transformType:(int)a4 transformValue:(float)a5;
+ (int)styleColumnWithStyleId:(int)a3;
+ (int)styleRowWithStyleId:(int)a3;
- (id)autoAxisAndMajorGridColor;
- (id)autoChartAreaAndDataTableAndFloorStrokeColor;
- (id)autoChartAreaFillColor;
- (id)autoColorOfFirstColumnSeriesWithIndex:(unint64_t)a3 seriesCount:(unint64_t)a4;
- (id)autoColorOfSeriesWithIndex:(unint64_t)a3;
- (id)autoFloorAndWallsAndPlotArea2DFillColor;
- (id)autoMinorGridColor;
- (id)autoOtherStrokeColor;
- (id)autoStrokeForSeriesIndex:(unint64_t)a3;
- (id)autoTextFill;
- (int)styleColumn;
- (int)styleRow;
- (void)resolveAxisGraphicProperties:(id)a3;
- (void)resolveChartAreaGraphicProperties:(id)a3;
- (void)resolveFloorGraphicProperties:(id)a3;
- (void)resolveGraphicPropertiesOfErrorBar:(id)a3 forSeriesIndex:(unint64_t)a4;
- (void)resolveGraphicPropertiesOfSeries:(id)a3 forSeriesIndex:(unint64_t)a4 isLine:(BOOL)a5;
- (void)resolveGraphicPropertiesOfTrendline:(id)a3 forSeriesIndex:(unint64_t)a4;
- (void)resolveLegendGraphicProperties:(id)a3;
- (void)resolveMajorGridLinesGraphicProperties:(id)a3;
- (void)resolveMarker:(id)a3 withSeriesGraphicProperties:(id)a4 forSeriesIndex:(unint64_t)a5 clientGraphicPropertyDefaults:(id)a6;
- (void)resolveMinorGridLinesGraphicProperties:(id)a3;
- (void)resolvePlotAreaGraphicProperties:(id)a3;
- (void)resolveWallGraphicProperties:(id)a3;
- (void)setDefaultErrorBarPropertiesInGraphicProperties:(id)a3;
@end

@implementation CHXAutoStyling

- (int)styleRow
{
  v2 = [(CHXAutoStyling *)self styleId];

  return [CHXAutoStyling styleRowWithStyleId:v2];
}

- (id)autoMinorGridColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  v3 = objc_opt_class();
  if (v2 > 32)
  {
    LODWORD(v4) = *"fff?";
    v5 = 12;
  }

  else
  {
    LODWORD(v4) = 0.5;
    v5 = 1;
  }

  v6 = [v3 colorWithSchemeColorId:v5 tint:v4];

  return v6;
}

- (int)styleColumn
{
  v2 = [(CHXAutoStyling *)self styleId];

  return [CHXAutoStyling styleColumnWithStyleId:v2];
}

+ (id)colorWithSchemeColorId:(int)a3 transformType:(int)a4 transformValue:(float)a5
{
  v6 = *&a4;
  v7 = [OADSchemeColor schemeColorWithIndex:*&a3];
  *&v8 = a5;
  [v7 addTransformOfType:v6 value:v8];

  return v7;
}

+ (int)styleRowWithStyleId:(int)a3
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    v3 = a3 + 6;
  }

  return (v3 >> 3) + 1;
}

+ (int)styleColumnWithStyleId:(int)a3
{
  v3 = (a3 - 1) & 7;
  if (1 - a3 >= 0)
  {
    v3 = -((1 - a3) & 7);
  }

  return v3 + 1;
}

- (id)autoAxisAndMajorGridColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  v3 = objc_opt_class();
  if (v2 < 33)
  {
    v5 = 1;
  }

  else
  {
    v5 = 12;
  }

  LODWORD(v4) = 0.75;
  v6 = [v3 colorWithSchemeColorId:v5 tint:v4];

  return v6;
}

- (id)autoChartAreaAndDataTableAndFloorStrokeColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  if (v2 <= 32)
  {
    v3 = objc_opt_class();
    LODWORD(v4) = 0.75;
    v5 = 1;
LABEL_5:
    v6 = [v3 colorWithSchemeColorId:v5 tint:v4];
    goto LABEL_7;
  }

  if (v2 <= 0x28)
  {
    v3 = objc_opt_class();
    LODWORD(v4) = 0.75;
    v5 = 12;
    goto LABEL_5;
  }

  v6 = [OADSchemeColor schemeColorWithIndex:13];
LABEL_7:

  return v6;
}

- (id)autoOtherStrokeColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  if (v2 > 32)
  {
    if (v2 > 0x22)
    {
      if (v2 <= 0x28)
      {
        v4 = objc_opt_class();
        LODWORD(v5) = 0.25;
        v6 = [v4 colorWithSchemeColorId:12 shade:v5];
        goto LABEL_9;
      }

      v3 = 13;
    }

    else
    {
      v3 = 12;
    }
  }

  else
  {
    v3 = 1;
  }

  v6 = [OADSchemeColor schemeColorWithIndex:v3];
LABEL_9:

  return v6;
}

- (id)autoChartAreaFillColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  if (v2 > 32)
  {
    if (v2 > 0x28)
    {
      v3 = 12;
    }

    else
    {
      v3 = 13;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [OADSchemeColor schemeColorWithIndex:v3];

  return v4;
}

- (id)autoFloorAndWallsAndPlotArea2DFillColor
{
  v2 = [(CHXAutoStyling *)self styleId];
  if (v2 <= 32)
  {
    v3 = [OADSchemeColor schemeColorWithIndex:0];
    goto LABEL_10;
  }

  v4 = v2;
  if (v2 <= 0x22)
  {
    v5 = objc_opt_class();
    LODWORD(v6) = 1045220557;
LABEL_8:
    v7 = 12;
    goto LABEL_9;
  }

  v5 = objc_opt_class();
  if (v4 > 0x28)
  {
    LODWORD(v6) = 1064514355;
    goto LABEL_8;
  }

  v7 = v4 - 31;
  LODWORD(v6) = 1045220557;
LABEL_9:
  v3 = [v5 colorWithSchemeColorId:v7 tint:v6];
LABEL_10:

  return v3;
}

- (void)setDefaultErrorBarPropertiesInGraphicProperties:(id)a3
{
  v11 = a3;
  v3 = [v11 isMergedWithParent];
  [v11 setMergedWithParent:0];
  if (([v11 hasStroke] & 1) == 0)
  {
    v4 = +[OADStroke blackStroke];
    [v11 setStroke:v4];

    v5 = [v11 stroke];
    LODWORD(v6) = 0.75;
    [v5 setWidth:v6];
  }

  v7 = [v11 stroke];
  v8 = [v7 isMergedWithParent];
  [v7 setMergedWithParent:0];
  if (([v7 isFillOverridden] & 1) == 0)
  {
    v9 = +[OADSolidFill blackFill];
    [v7 setFill:v9];
  }

  if (([v7 isWidthOverridden] & 1) == 0)
  {
    LODWORD(v10) = 0.75;
    [v7 setWidth:v10];
  }

  [v11 setMergedWithParent:v3];
  [v7 setMergedWithParent:v8];
}

- (id)autoColorOfFirstColumnSeriesWithIndex:(unint64_t)a3 seriesCount:(unint64_t)a4
{
  v5 = a4 % 0x1D;
  if (!(a4 % 0x1D) || (a3 %= v5, v5 <= 5))
  {
    v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[a3];
LABEL_4:
    v7 = *v6;
    v8 = 255;
    goto LABEL_5;
  }

  if (v5 > 0xB)
  {
    if (v5 <= 0x11)
    {
      if (a3 < 6)
      {
        v8 = 211;
        goto LABEL_26;
      }

      if (a3 > 0xB)
      {
LABEL_28:
        v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[a3 + 6];
        goto LABEL_4;
      }

LABEL_18:
      v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[a3 - 6];
      goto LABEL_4;
    }

    if (v5 > 0x17)
    {
      v20 = a3 - 6;
      if (a3 < 6)
      {
        v8 = 192;
        goto LABEL_26;
      }

      if (a3 > 0xB)
      {
        if (a3 <= 0x11)
        {
          v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[a3 - 12];
          goto LABEL_4;
        }

        if (a3 > 0x17)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v8 = 226;
    }

    else
    {
      v20 = a3 - 6;
      if (a3 < 6)
      {
        v8 = 200;
        goto LABEL_26;
      }

      if (a3 > 0xB)
      {
        if (a3 > 0x11)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v8 = 239;
    }

    a3 = v20;
    goto LABEL_26;
  }

  if (a3 >= 6)
  {
    goto LABEL_28;
  }

  v8 = 226;
LABEL_26:
  LOBYTE(v4) = [CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[a3];
  v21 = v8 / 255.0 * v4;
  v7 = llroundf(v21);
LABEL_5:
  v9 = [OADSchemeColor schemeColorWithIndex:1];
  LODWORD(v10) = 1.5;
  [v9 addTransformOfType:29 value:v10];
  v11 = (v8 - v7) / 255.0;
  v12 = v11;
  *&v11 = v12;
  [v9 addTransformOfType:20 value:v11];
  v13 = v7 / 255.0;
  v14 = v13;
  *&v13 = v14;
  [v9 addTransformOfType:19 value:v13];
  *&v15 = v12;
  [v9 addTransformOfType:23 value:v15];
  *&v16 = v14;
  [v9 addTransformOfType:22 value:v16];
  *&v17 = v12;
  [v9 addTransformOfType:26 value:v17];
  *&v18 = v14;
  [v9 addTransformOfType:25 value:v18];

  return v9;
}

- (id)autoColorOfSeriesWithIndex:(unint64_t)a3
{
  if ([(CHDChart *)self->super.mChart isPie]&& ![(CHDChart *)self->super.mChart isDirectionChanged])
  {
    v5 = [(CHDChart *)self->super.mChart categoryCount];
  }

  else
  {
    v5 = [(CHDChart *)self->super.mChart seriesCount];
  }

  v6 = v5;
  v7 = [(CHXAutoStyling *)self styleColumn];
  if (v7 == 1)
  {
    v8 = [(CHXAutoStyling *)self autoColorOfFirstColumnSeriesWithIndex:a3 seriesCount:v6];
  }

  else if (v7 == 2)
  {
    v8 = [OADSchemeColor schemeColorWithIndex:(a3 % 6) + 4];
  }

  else
  {
    if (v7 > 2)
    {
      v9 = (v7 + 1);
    }

    else
    {
      v9 = 1;
    }

    v10 = [(OADDrawingTheme *)self->super.mDrawingTheme colorMap];
    if (v10)
    {
      v11 = [(OADDrawingTheme *)self->super.mDrawingTheme colorScheme];

      if (v11)
      {
        v10 = [OADSchemeColor schemeColorWithIndex:v9];
        v11 = [(OADDrawingTheme *)self->super.mDrawingTheme colorMap];
        v12 = [(OADDrawingTheme *)self->super.mDrawingTheme colorScheme];
        v13 = [OADColor rgbColorWithColor:v10 colorMap:v11 colorScheme:v12 colorPalette:0];

        LOBYTE(v10) = [v13 isBlack];
        LODWORD(v11) = [v13 isWhite];
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v14 = v6;
    if (!((a3 >= v6 >> 1) | v10 & 1) || v11)
    {
      v20 = (pow(v14, -0.62) * 128.0 + 144.0) / -255.0;
      v21 = v20 + 1.0;
      if (v11)
      {
        v21 = 0.25;
      }

      v22 = vcvts_n_f32_u64(v6, 1uLL);
      v23 = pow((1.0 - (fabsf((v22 - a3) / v22) * v21)), 2.2);
      v24 = objc_opt_class();
      *&v25 = v23;
      v8 = [v24 colorWithSchemeColorId:v9 shade:v25];
    }

    else
    {
      v15 = (pow(v14, -0.8) * -144.0 + 220.0) / 255.0;
      v16 = vcvts_n_f32_u64(v6 - 1, 1uLL);
      if (v10)
      {
        v15 = 0.25;
      }

      v17 = 1.0 - pow(1.0 - (1.0 - (fabsf((a3 - v16) / vcvts_n_f32_u64(v6, 1uLL)) * v15)), 2.2);
      v18 = objc_opt_class();
      *&v19 = v17;
      v8 = [v18 colorWithSchemeColorId:v9 tint:v19];
    }
  }

  return v8;
}

- (void)resolveChartAreaGraphicProperties:(id)a3
{
  v15 = a3;
  v4 = objc_alloc_init(OADShapeStyle);
  v5 = [(CHXAutoStyling *)self styleId];
  v6 = [(CHXAutoStyling *)self _autoChartFillIsHollow];
  if (v5 >= 33 || !v6)
  {
    v8 = [(CHXAutoStyling *)self autoChartAreaFillColor];
    [(OADShapeStyle *)v4 setFillMatrixIndex:1 color:v8];
  }

  v9 = [(CHXAutoStyling *)self _autoChartFillIsHollow];
  if ((v5 - 41) >= 0xFFFFFFF8 || !v9)
  {
    v11 = [(CHXAutoStyling *)self autoFloorAndChartAreaStrokeIndex];
    v12 = [(CHXAutoStyling *)self autoChartAreaAndDataTableAndFloorStrokeColor];
    [(OADShapeStyle *)v4 setLineMatrixIndex:v11 color:v12];
  }

  v13 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
  LODWORD(v14) = 1.0;
  [(OADShapeStyle *)v4 applyToGraphicProperties:v15 styleMatrix:v13 useNull:1 strokeWidthMultiplier:v14];
}

- (void)resolveWallGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    if ([(CHXAutoStyling *)self styleId]>= 33)
    {
      v6 = [(CHXAutoStyling *)self autoFloorAndWallsFillIndex];
      v7 = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
      [(OADShapeStyle *)v5 setFillMatrixIndex:v6 color:v7];
    }

    v8 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v9) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v10 styleMatrix:v8 useNull:1 strokeWidthMultiplier:v9];

    v4 = v10;
  }
}

- (void)resolveFloorGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    if ([(CHXAutoStyling *)self styleId]>= 33)
    {
      v6 = [(CHXAutoStyling *)self autoFloorAndWallsFillIndex];
      v7 = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
      [(OADShapeStyle *)v5 setFillMatrixIndex:v6 color:v7];
    }

    v8 = [(CHXAutoStyling *)self autoFloorAndChartAreaStrokeIndex];
    v9 = [(CHXAutoStyling *)self autoChartAreaAndDataTableAndFloorStrokeColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:v8 color:v9];

    v10 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v11) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v12 styleMatrix:v10 useNull:1 strokeWidthMultiplier:v11];

    v4 = v12;
  }
}

- (void)resolvePlotAreaGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    v6 = [(CHDChart *)self->super.mChart is3D];
    v7 = [(CHXAutoStyling *)self styleId];
    if (!v6)
    {
      v8 = v7;
      v9 = [(CHXAutoStyling *)self _autoChartFillIsHollow];
      if (v8 >= 33 || !v9)
      {
        v11 = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
        [(OADShapeStyle *)v5 setFillMatrixIndex:1 color:v11];
      }
    }

    v12 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v13) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v14 styleMatrix:v12 useNull:1 strokeWidthMultiplier:v13];

    v4 = v14;
  }
}

- (void)resolveAxisGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    v6 = [(CHXAutoStyling *)self autoAxisAndMajorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:v6];

    v7 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:v7 useNull:1 strokeWidthMultiplier:v8];

    v4 = v9;
  }
}

- (void)resolveMajorGridLinesGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    v6 = [(CHXAutoStyling *)self autoAxisAndMajorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:v6];

    v7 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:v7 useNull:1 strokeWidthMultiplier:v8];

    v4 = v9;
  }
}

- (void)resolveMinorGridLinesGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    v6 = [(CHXAutoStyling *)self autoMinorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:v6];

    v7 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:v7 useNull:1 strokeWidthMultiplier:v8];

    v4 = v9;
  }
}

- (void)resolveLegendGraphicProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = objc_alloc_init(OADShapeStyle);
    v6 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v7) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v8 styleMatrix:v6 useNull:1 strokeWidthMultiplier:v7];

    v4 = v8;
  }
}

- (id)autoTextFill
{
  v2 = [(CHXAutoStyling *)self styleId];
  if (v2 < 41)
  {
    v3 = 12;
  }

  else
  {
    v3 = 13;
  }

  if (v2 < 33)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [OADSchemeColor schemeColorWithIndex:v4];
  v6 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v6 setColor:v5];

  return v6;
}

- (id)autoStrokeForSeriesIndex:(unint64_t)a3
{
  v4 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:a3];
  v5 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
  v6 = [v5 strokeAtIndex:1 color:v4];

  return v6;
}

- (void)resolveGraphicPropertiesOfSeries:(id)a3 forSeriesIndex:(unint64_t)a4 isLine:(BOOL)a5
{
  v5 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v8 = [(CHXAutoStyling *)self styleColumn];
  v9 = [(CHXAutoStyling *)self styleRow];
  if (v26 && v9 <= 6)
  {
    if (v5)
    {
      v10 = 0;
      v11 = 0;
      v12 = [CHXAutoStyling resolveGraphicPropertiesOfErrorBar:forSeriesIndex:]::strokeWidthMultiplierArray[v9 - 1];
      v13 = 1;
    }

    else if ([(CHDChart *)self->super.mChart is3D])
    {
      v27 = xmmword_25D6FE690;
      v28 = 1;
      if (v8 == 2)
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }

      v29 = v14;
      v30 = 0;
      v31 = v14;
      v32 = xmmword_25D6FCD80;
      v33 = 0;
      v34 = v14;
      v35 = 0;
      v15 = &v27 + 12 * v9;
      v10 = *(v15 - 3);
      v13 = *(v15 - 2);
      v12 = 1.0;
      v11 = *(v15 - 1);
    }

    else
    {
      v16 = &[CHXAutoStyling resolveGraphicPropertiesOfSeries:forSeriesIndex:isLine:]::styleIndices + 12 * v9;
      v10 = *(v16 - 3);
      v13 = *(v16 - 2);
      v11 = *(v16 - 1);
      v12 = 1.0;
    }

    v17 = objc_alloc_init(OADShapeStyle);
    v18 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:a4];
    v19 = [v18 copy];
    v21 = v19;
    if (!v5)
    {
      if (v9 == 5)
      {
        LODWORD(v20) = 1060655596;
        [v19 addTransformOfType:5 value:v20];
      }

      else if (v9 == 2)
      {
        v22 = [OADSchemeColor schemeColorWithIndex:0];

        v21 = v22;
      }
    }

    if (v10)
    {
      [(OADShapeStyle *)v17 setFillMatrixIndex:v10 color:v18];
    }

    if (v13)
    {
      [(OADShapeStyle *)v17 setLineMatrixIndex:v13 color:v21];
    }

    if (v11)
    {
      [(OADShapeStyle *)v17 setEffectMatrixIndex:v11 color:v18];
    }

    v23 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    *&v24 = v12;
    [(OADShapeStyle *)v17 applyToGraphicProperties:v26 styleMatrix:v23 useNull:1 strokeWidthMultiplier:v24];
  }

  v25 = v26;
}

- (void)resolveGraphicPropertiesOfTrendline:(id)a3 forSeriesIndex:(unint64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v10 = v5;
    v6 = [OADSchemeColor schemeColorWithIndex:1];
    v7 = objc_alloc_init(OADShapeStyle);
    [(OADShapeStyle *)v7 setLineMatrixIndex:1 color:v6];
    v8 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v9) = 1.0;
    [(OADShapeStyle *)v7 applyToGraphicProperties:v10 styleMatrix:v8 useNull:1 strokeWidthMultiplier:v9];

    v5 = v10;
  }
}

- (void)resolveGraphicPropertiesOfErrorBar:(id)a3 forSeriesIndex:(unint64_t)a4
{
  v12 = a3;
  v6 = [(CHXAutoStyling *)self styleRow];
  if (v12)
  {
    v7 = [CHXAutoStyling resolveGraphicPropertiesOfErrorBar:forSeriesIndex:]::strokeWidthMultiplierArray[v6 - 1];
    v8 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:a4];
    v9 = objc_alloc_init(OADShapeStyle);
    [(OADShapeStyle *)v9 setLineMatrixIndex:1 color:v8];
    [(CHXAutoStyling *)self setDefaultErrorBarPropertiesInGraphicProperties:v12];
    v10 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    *&v11 = v7;
    [(OADShapeStyle *)v9 applyToGraphicProperties:v12 styleMatrix:v10 useNull:1 strokeWidthMultiplier:v11];
  }
}

- (void)resolveMarker:(id)a3 withSeriesGraphicProperties:(id)a4 forSeriesIndex:(unint64_t)a5 clientGraphicPropertyDefaults:(id)a6
{
  v31 = a3;
  v10 = a4;
  v11 = a6;
  if (v31)
  {
    v12 = [v31 graphicProperties];

    if (v10)
    {
      if (v12)
      {
        v13 = [(CHXAutoStyling *)self styleRow];
        if (v13 <= 6)
        {
          if ([v10 hasFill])
          {
            v14 = [v10 fill];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 technique];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v18 = [v15 copy];
                v19 = [v31 graphicProperties];
                [v19 setFill:v18];
              }
            }
          }

          if (![v31 size])
          {
            [v31 setSize:7];
            if (v11)
            {
              v20 = objc_opt_class();
              v21 = v11[2](v11, v10, &unk_286F6D6C8);
              v22 = TSUDynamicCast(v20, v21);

              if (v22)
              {
                [v31 setSize:{objc_msgSend(v22, "unsignedIntValue")}];
              }
            }
          }

          if ([v31 style] == -1)
          {
            [v31 setStyle:{-[CHAutoStyling defaultMarkerStyleForSeriesIndex:](self, "defaultMarkerStyleForSeriesIndex:", a5)}];
          }

          if (![v31 style])
          {
            [(CHAutoStyling *)self replaceStrokeAndFillInEmptyMarker:v31 withSeriesGraphicProperties:v10];
          }

          v23 = objc_alloc_init(OADShapeStyle);
          v24 = &[CHXAutoStyling resolveMarker:withSeriesGraphicProperties:forSeriesIndex:clientGraphicPropertyDefaults:]::styleIndices + 12 * v13;
          v25 = *(v24 - 3);
          v26 = *(v24 - 1);
          v27 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:a5];
          if (v25)
          {
            [(OADShapeStyle *)v23 setFillMatrixIndex:v25 color:v27];
          }

          [(OADShapeStyle *)v23 setLineMatrixIndex:1 color:v27];
          if (v26)
          {
            [(OADShapeStyle *)v23 setEffectMatrixIndex:v26 color:v27];
          }

          v28 = [v31 graphicProperties];
          v29 = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
          LODWORD(v30) = 1.0;
          [(OADShapeStyle *)v23 applyToGraphicProperties:v28 styleMatrix:v29 useNull:1 strokeWidthMultiplier:v30];
        }
      }
    }
  }
}

@end