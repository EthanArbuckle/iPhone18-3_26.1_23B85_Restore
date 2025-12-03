@interface CHXAutoStyling
+ (id)colorWithSchemeColorId:(int)id transformType:(int)type transformValue:(float)value;
+ (int)styleColumnWithStyleId:(int)id;
+ (int)styleRowWithStyleId:(int)id;
- (id)autoAxisAndMajorGridColor;
- (id)autoChartAreaAndDataTableAndFloorStrokeColor;
- (id)autoChartAreaFillColor;
- (id)autoColorOfFirstColumnSeriesWithIndex:(unint64_t)index seriesCount:(unint64_t)count;
- (id)autoColorOfSeriesWithIndex:(unint64_t)index;
- (id)autoFloorAndWallsAndPlotArea2DFillColor;
- (id)autoMinorGridColor;
- (id)autoOtherStrokeColor;
- (id)autoStrokeForSeriesIndex:(unint64_t)index;
- (id)autoTextFill;
- (int)styleColumn;
- (int)styleRow;
- (void)resolveAxisGraphicProperties:(id)properties;
- (void)resolveChartAreaGraphicProperties:(id)properties;
- (void)resolveFloorGraphicProperties:(id)properties;
- (void)resolveGraphicPropertiesOfErrorBar:(id)bar forSeriesIndex:(unint64_t)index;
- (void)resolveGraphicPropertiesOfSeries:(id)series forSeriesIndex:(unint64_t)index isLine:(BOOL)line;
- (void)resolveGraphicPropertiesOfTrendline:(id)trendline forSeriesIndex:(unint64_t)index;
- (void)resolveLegendGraphicProperties:(id)properties;
- (void)resolveMajorGridLinesGraphicProperties:(id)properties;
- (void)resolveMarker:(id)marker withSeriesGraphicProperties:(id)properties forSeriesIndex:(unint64_t)index clientGraphicPropertyDefaults:(id)defaults;
- (void)resolveMinorGridLinesGraphicProperties:(id)properties;
- (void)resolvePlotAreaGraphicProperties:(id)properties;
- (void)resolveWallGraphicProperties:(id)properties;
- (void)setDefaultErrorBarPropertiesInGraphicProperties:(id)properties;
@end

@implementation CHXAutoStyling

- (int)styleRow
{
  styleId = [(CHXAutoStyling *)self styleId];

  return [CHXAutoStyling styleRowWithStyleId:styleId];
}

- (id)autoMinorGridColor
{
  styleId = [(CHXAutoStyling *)self styleId];
  v3 = objc_opt_class();
  if (styleId > 32)
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
  styleId = [(CHXAutoStyling *)self styleId];

  return [CHXAutoStyling styleColumnWithStyleId:styleId];
}

+ (id)colorWithSchemeColorId:(int)id transformType:(int)type transformValue:(float)value
{
  v6 = *&type;
  v7 = [OADSchemeColor schemeColorWithIndex:*&id];
  *&v8 = value;
  [v7 addTransformOfType:v6 value:v8];

  return v7;
}

+ (int)styleRowWithStyleId:(int)id
{
  v3 = id - 1;
  if (id < 1)
  {
    v3 = id + 6;
  }

  return (v3 >> 3) + 1;
}

+ (int)styleColumnWithStyleId:(int)id
{
  v3 = (id - 1) & 7;
  if (1 - id >= 0)
  {
    v3 = -((1 - id) & 7);
  }

  return v3 + 1;
}

- (id)autoAxisAndMajorGridColor
{
  styleId = [(CHXAutoStyling *)self styleId];
  v3 = objc_opt_class();
  if (styleId < 33)
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
  styleId = [(CHXAutoStyling *)self styleId];
  if (styleId <= 32)
  {
    v3 = objc_opt_class();
    LODWORD(v4) = 0.75;
    v5 = 1;
LABEL_5:
    v6 = [v3 colorWithSchemeColorId:v5 tint:v4];
    goto LABEL_7;
  }

  if (styleId <= 0x28)
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
  styleId = [(CHXAutoStyling *)self styleId];
  if (styleId > 32)
  {
    if (styleId > 0x22)
    {
      if (styleId <= 0x28)
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
  styleId = [(CHXAutoStyling *)self styleId];
  if (styleId > 32)
  {
    if (styleId > 0x28)
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
  styleId = [(CHXAutoStyling *)self styleId];
  if (styleId <= 32)
  {
    v3 = [OADSchemeColor schemeColorWithIndex:0];
    goto LABEL_10;
  }

  v4 = styleId;
  if (styleId <= 0x22)
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

- (void)setDefaultErrorBarPropertiesInGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  isMergedWithParent = [propertiesCopy isMergedWithParent];
  [propertiesCopy setMergedWithParent:0];
  if (([propertiesCopy hasStroke] & 1) == 0)
  {
    v4 = +[OADStroke blackStroke];
    [propertiesCopy setStroke:v4];

    stroke = [propertiesCopy stroke];
    LODWORD(v6) = 0.75;
    [stroke setWidth:v6];
  }

  stroke2 = [propertiesCopy stroke];
  isMergedWithParent2 = [stroke2 isMergedWithParent];
  [stroke2 setMergedWithParent:0];
  if (([stroke2 isFillOverridden] & 1) == 0)
  {
    v9 = +[OADSolidFill blackFill];
    [stroke2 setFill:v9];
  }

  if (([stroke2 isWidthOverridden] & 1) == 0)
  {
    LODWORD(v10) = 0.75;
    [stroke2 setWidth:v10];
  }

  [propertiesCopy setMergedWithParent:isMergedWithParent];
  [stroke2 setMergedWithParent:isMergedWithParent2];
}

- (id)autoColorOfFirstColumnSeriesWithIndex:(unint64_t)index seriesCount:(unint64_t)count
{
  v5 = count % 0x1D;
  if (!(count % 0x1D) || (index %= v5, v5 <= 5))
  {
    v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[index];
LABEL_4:
    v7 = *v6;
    v8 = 255;
    goto LABEL_5;
  }

  if (v5 > 0xB)
  {
    if (v5 <= 0x11)
    {
      if (index < 6)
      {
        v8 = 211;
        goto LABEL_26;
      }

      if (index > 0xB)
      {
LABEL_28:
        v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[index + 6];
        goto LABEL_4;
      }

LABEL_18:
      v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[index - 6];
      goto LABEL_4;
    }

    if (v5 > 0x17)
    {
      v20 = index - 6;
      if (index < 6)
      {
        v8 = 192;
        goto LABEL_26;
      }

      if (index > 0xB)
      {
        if (index <= 0x11)
        {
          v6 = &[CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[index - 12];
          goto LABEL_4;
        }

        if (index > 0x17)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v8 = 226;
    }

    else
    {
      v20 = index - 6;
      if (index < 6)
      {
        v8 = 200;
        goto LABEL_26;
      }

      if (index > 0xB)
      {
        if (index > 0x11)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v8 = 239;
    }

    index = v20;
    goto LABEL_26;
  }

  if (index >= 6)
  {
    goto LABEL_28;
  }

  v8 = 226;
LABEL_26:
  LOBYTE(v4) = [CHXAutoStyling autoColorOfFirstColumnSeriesWithIndex:seriesCount:]::baseColors[index];
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

- (id)autoColorOfSeriesWithIndex:(unint64_t)index
{
  if ([(CHDChart *)self->super.mChart isPie]&& ![(CHDChart *)self->super.mChart isDirectionChanged])
  {
    categoryCount = [(CHDChart *)self->super.mChart categoryCount];
  }

  else
  {
    categoryCount = [(CHDChart *)self->super.mChart seriesCount];
  }

  v6 = categoryCount;
  styleColumn = [(CHXAutoStyling *)self styleColumn];
  if (styleColumn == 1)
  {
    v8 = [(CHXAutoStyling *)self autoColorOfFirstColumnSeriesWithIndex:index seriesCount:v6];
  }

  else if (styleColumn == 2)
  {
    v8 = [OADSchemeColor schemeColorWithIndex:(index % 6) + 4];
  }

  else
  {
    if (styleColumn > 2)
    {
      v9 = (styleColumn + 1);
    }

    else
    {
      v9 = 1;
    }

    colorMap = [(OADDrawingTheme *)self->super.mDrawingTheme colorMap];
    if (colorMap)
    {
      colorScheme = [(OADDrawingTheme *)self->super.mDrawingTheme colorScheme];

      if (colorScheme)
      {
        colorMap = [OADSchemeColor schemeColorWithIndex:v9];
        colorScheme = [(OADDrawingTheme *)self->super.mDrawingTheme colorMap];
        colorScheme2 = [(OADDrawingTheme *)self->super.mDrawingTheme colorScheme];
        v13 = [OADColor rgbColorWithColor:colorMap colorMap:colorScheme colorScheme:colorScheme2 colorPalette:0];

        LOBYTE(colorMap) = [v13 isBlack];
        LODWORD(colorScheme) = [v13 isWhite];
      }

      else
      {
        LOBYTE(colorMap) = 0;
      }
    }

    else
    {
      LODWORD(colorScheme) = 0;
    }

    v14 = v6;
    if (!((index >= v6 >> 1) | colorMap & 1) || colorScheme)
    {
      v20 = (pow(v14, -0.62) * 128.0 + 144.0) / -255.0;
      v21 = v20 + 1.0;
      if (colorScheme)
      {
        v21 = 0.25;
      }

      v22 = vcvts_n_f32_u64(v6, 1uLL);
      v23 = pow((1.0 - (fabsf((v22 - index) / v22) * v21)), 2.2);
      v24 = objc_opt_class();
      *&v25 = v23;
      v8 = [v24 colorWithSchemeColorId:v9 shade:v25];
    }

    else
    {
      v15 = (pow(v14, -0.8) * -144.0 + 220.0) / 255.0;
      v16 = vcvts_n_f32_u64(v6 - 1, 1uLL);
      if (colorMap)
      {
        v15 = 0.25;
      }

      v17 = 1.0 - pow(1.0 - (1.0 - (fabsf((index - v16) / vcvts_n_f32_u64(v6, 1uLL)) * v15)), 2.2);
      v18 = objc_opt_class();
      *&v19 = v17;
      v8 = [v18 colorWithSchemeColorId:v9 tint:v19];
    }
  }

  return v8;
}

- (void)resolveChartAreaGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_alloc_init(OADShapeStyle);
  styleId = [(CHXAutoStyling *)self styleId];
  _autoChartFillIsHollow = [(CHXAutoStyling *)self _autoChartFillIsHollow];
  if (styleId >= 33 || !_autoChartFillIsHollow)
  {
    autoChartAreaFillColor = [(CHXAutoStyling *)self autoChartAreaFillColor];
    [(OADShapeStyle *)v4 setFillMatrixIndex:1 color:autoChartAreaFillColor];
  }

  _autoChartFillIsHollow2 = [(CHXAutoStyling *)self _autoChartFillIsHollow];
  if ((styleId - 41) >= 0xFFFFFFF8 || !_autoChartFillIsHollow2)
  {
    autoFloorAndChartAreaStrokeIndex = [(CHXAutoStyling *)self autoFloorAndChartAreaStrokeIndex];
    autoChartAreaAndDataTableAndFloorStrokeColor = [(CHXAutoStyling *)self autoChartAreaAndDataTableAndFloorStrokeColor];
    [(OADShapeStyle *)v4 setLineMatrixIndex:autoFloorAndChartAreaStrokeIndex color:autoChartAreaAndDataTableAndFloorStrokeColor];
  }

  styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
  LODWORD(v14) = 1.0;
  [(OADShapeStyle *)v4 applyToGraphicProperties:propertiesCopy styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v14];
}

- (void)resolveWallGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v10 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    if ([(CHXAutoStyling *)self styleId]>= 33)
    {
      autoFloorAndWallsFillIndex = [(CHXAutoStyling *)self autoFloorAndWallsFillIndex];
      autoFloorAndWallsAndPlotArea2DFillColor = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
      [(OADShapeStyle *)v5 setFillMatrixIndex:autoFloorAndWallsFillIndex color:autoFloorAndWallsAndPlotArea2DFillColor];
    }

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v9) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v10 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v9];

    propertiesCopy = v10;
  }
}

- (void)resolveFloorGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v12 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    if ([(CHXAutoStyling *)self styleId]>= 33)
    {
      autoFloorAndWallsFillIndex = [(CHXAutoStyling *)self autoFloorAndWallsFillIndex];
      autoFloorAndWallsAndPlotArea2DFillColor = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
      [(OADShapeStyle *)v5 setFillMatrixIndex:autoFloorAndWallsFillIndex color:autoFloorAndWallsAndPlotArea2DFillColor];
    }

    autoFloorAndChartAreaStrokeIndex = [(CHXAutoStyling *)self autoFloorAndChartAreaStrokeIndex];
    autoChartAreaAndDataTableAndFloorStrokeColor = [(CHXAutoStyling *)self autoChartAreaAndDataTableAndFloorStrokeColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:autoFloorAndChartAreaStrokeIndex color:autoChartAreaAndDataTableAndFloorStrokeColor];

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v11) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v12 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v11];

    propertiesCopy = v12;
  }
}

- (void)resolvePlotAreaGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v14 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    is3D = [(CHDChart *)self->super.mChart is3D];
    styleId = [(CHXAutoStyling *)self styleId];
    if (!is3D)
    {
      v8 = styleId;
      _autoChartFillIsHollow = [(CHXAutoStyling *)self _autoChartFillIsHollow];
      if (v8 >= 33 || !_autoChartFillIsHollow)
      {
        autoFloorAndWallsAndPlotArea2DFillColor = [(CHXAutoStyling *)self autoFloorAndWallsAndPlotArea2DFillColor];
        [(OADShapeStyle *)v5 setFillMatrixIndex:1 color:autoFloorAndWallsAndPlotArea2DFillColor];
      }
    }

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v13) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v14 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v13];

    propertiesCopy = v14;
  }
}

- (void)resolveAxisGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v9 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    autoAxisAndMajorGridColor = [(CHXAutoStyling *)self autoAxisAndMajorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:autoAxisAndMajorGridColor];

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v8];

    propertiesCopy = v9;
  }
}

- (void)resolveMajorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v9 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    autoAxisAndMajorGridColor = [(CHXAutoStyling *)self autoAxisAndMajorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:autoAxisAndMajorGridColor];

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v8];

    propertiesCopy = v9;
  }
}

- (void)resolveMinorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v9 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    autoMinorGridColor = [(CHXAutoStyling *)self autoMinorGridColor];
    [(OADShapeStyle *)v5 setLineMatrixIndex:1 color:autoMinorGridColor];

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v8) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v9 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v8];

    propertiesCopy = v9;
  }
}

- (void)resolveLegendGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v8 = propertiesCopy;
    v5 = objc_alloc_init(OADShapeStyle);
    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v7) = 1.0;
    [(OADShapeStyle *)v5 applyToGraphicProperties:v8 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v7];

    propertiesCopy = v8;
  }
}

- (id)autoTextFill
{
  styleId = [(CHXAutoStyling *)self styleId];
  if (styleId < 41)
  {
    v3 = 12;
  }

  else
  {
    v3 = 13;
  }

  if (styleId < 33)
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

- (id)autoStrokeForSeriesIndex:(unint64_t)index
{
  v4 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:index];
  styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
  v6 = [styleMatrix strokeAtIndex:1 color:v4];

  return v6;
}

- (void)resolveGraphicPropertiesOfSeries:(id)series forSeriesIndex:(unint64_t)index isLine:(BOOL)line
{
  lineCopy = line;
  v36 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  styleColumn = [(CHXAutoStyling *)self styleColumn];
  styleRow = [(CHXAutoStyling *)self styleRow];
  if (seriesCopy && styleRow <= 6)
  {
    if (lineCopy)
    {
      v10 = 0;
      v11 = 0;
      v12 = [CHXAutoStyling resolveGraphicPropertiesOfErrorBar:forSeriesIndex:]::strokeWidthMultiplierArray[styleRow - 1];
      v13 = 1;
    }

    else if ([(CHDChart *)self->super.mChart is3D])
    {
      v27 = xmmword_25D6FE690;
      v28 = 1;
      if (styleColumn == 2)
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
      v15 = &v27 + 12 * styleRow;
      v10 = *(v15 - 3);
      v13 = *(v15 - 2);
      v12 = 1.0;
      v11 = *(v15 - 1);
    }

    else
    {
      v16 = &[CHXAutoStyling resolveGraphicPropertiesOfSeries:forSeriesIndex:isLine:]::styleIndices + 12 * styleRow;
      v10 = *(v16 - 3);
      v13 = *(v16 - 2);
      v11 = *(v16 - 1);
      v12 = 1.0;
    }

    v17 = objc_alloc_init(OADShapeStyle);
    v18 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:index];
    v19 = [v18 copy];
    v21 = v19;
    if (!lineCopy)
    {
      if (styleRow == 5)
      {
        LODWORD(v20) = 1060655596;
        [v19 addTransformOfType:5 value:v20];
      }

      else if (styleRow == 2)
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

    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    *&v24 = v12;
    [(OADShapeStyle *)v17 applyToGraphicProperties:seriesCopy styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v24];
  }

  v25 = seriesCopy;
}

- (void)resolveGraphicPropertiesOfTrendline:(id)trendline forSeriesIndex:(unint64_t)index
{
  trendlineCopy = trendline;
  if (trendlineCopy)
  {
    v10 = trendlineCopy;
    v6 = [OADSchemeColor schemeColorWithIndex:1];
    v7 = objc_alloc_init(OADShapeStyle);
    [(OADShapeStyle *)v7 setLineMatrixIndex:1 color:v6];
    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    LODWORD(v9) = 1.0;
    [(OADShapeStyle *)v7 applyToGraphicProperties:v10 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v9];

    trendlineCopy = v10;
  }
}

- (void)resolveGraphicPropertiesOfErrorBar:(id)bar forSeriesIndex:(unint64_t)index
{
  barCopy = bar;
  styleRow = [(CHXAutoStyling *)self styleRow];
  if (barCopy)
  {
    v7 = [CHXAutoStyling resolveGraphicPropertiesOfErrorBar:forSeriesIndex:]::strokeWidthMultiplierArray[styleRow - 1];
    v8 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:index];
    v9 = objc_alloc_init(OADShapeStyle);
    [(OADShapeStyle *)v9 setLineMatrixIndex:1 color:v8];
    [(CHXAutoStyling *)self setDefaultErrorBarPropertiesInGraphicProperties:barCopy];
    styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
    *&v11 = v7;
    [(OADShapeStyle *)v9 applyToGraphicProperties:barCopy styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v11];
  }
}

- (void)resolveMarker:(id)marker withSeriesGraphicProperties:(id)properties forSeriesIndex:(unint64_t)index clientGraphicPropertyDefaults:(id)defaults
{
  markerCopy = marker;
  propertiesCopy = properties;
  defaultsCopy = defaults;
  if (markerCopy)
  {
    graphicProperties = [markerCopy graphicProperties];

    if (propertiesCopy)
    {
      if (graphicProperties)
      {
        styleRow = [(CHXAutoStyling *)self styleRow];
        if (styleRow <= 6)
        {
          if ([propertiesCopy hasFill])
          {
            fill = [propertiesCopy fill];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = fill;
              technique = [v15 technique];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v18 = [v15 copy];
                graphicProperties2 = [markerCopy graphicProperties];
                [graphicProperties2 setFill:v18];
              }
            }
          }

          if (![markerCopy size])
          {
            [markerCopy setSize:7];
            if (defaultsCopy)
            {
              v20 = objc_opt_class();
              v21 = defaultsCopy[2](defaultsCopy, propertiesCopy, &unk_286F6D6C8);
              v22 = TSUDynamicCast(v20, v21);

              if (v22)
              {
                [markerCopy setSize:{objc_msgSend(v22, "unsignedIntValue")}];
              }
            }
          }

          if ([markerCopy style] == -1)
          {
            [markerCopy setStyle:{-[CHAutoStyling defaultMarkerStyleForSeriesIndex:](self, "defaultMarkerStyleForSeriesIndex:", index)}];
          }

          if (![markerCopy style])
          {
            [(CHAutoStyling *)self replaceStrokeAndFillInEmptyMarker:markerCopy withSeriesGraphicProperties:propertiesCopy];
          }

          v23 = objc_alloc_init(OADShapeStyle);
          v24 = &[CHXAutoStyling resolveMarker:withSeriesGraphicProperties:forSeriesIndex:clientGraphicPropertyDefaults:]::styleIndices + 12 * styleRow;
          v25 = *(v24 - 3);
          v26 = *(v24 - 1);
          v27 = [(CHXAutoStyling *)self autoColorOfSeriesWithIndex:index];
          if (v25)
          {
            [(OADShapeStyle *)v23 setFillMatrixIndex:v25 color:v27];
          }

          [(OADShapeStyle *)v23 setLineMatrixIndex:1 color:v27];
          if (v26)
          {
            [(OADShapeStyle *)v23 setEffectMatrixIndex:v26 color:v27];
          }

          graphicProperties3 = [markerCopy graphicProperties];
          styleMatrix = [(OADDrawingTheme *)self->super.mDrawingTheme styleMatrix];
          LODWORD(v30) = 1.0;
          [(OADShapeStyle *)v23 applyToGraphicProperties:graphicProperties3 styleMatrix:styleMatrix useNull:1 strokeWidthMultiplier:v30];
        }
      }
    }
  }
}

@end