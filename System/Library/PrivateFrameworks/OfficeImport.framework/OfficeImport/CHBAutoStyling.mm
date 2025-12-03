@interface CHBAutoStyling
- (id)autoSeriesFill:(unint64_t)fill;
- (id)autoTextFill;
- (id)fillWithColorIndex:(unint64_t)index;
- (id)strokeWithColorIndex:(int)index;
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
- (void)resolvedGraphicProperties:(id)properties autoFill:(id)fill autoStroke:(id)stroke autoShadow:(BOOL)shadow nullFill:(id)nullFill nullStroke:(id)nullStroke nullShadow:(BOOL)nullShadow;
@end

@implementation CHBAutoStyling

- (void)resolvedGraphicProperties:(id)properties autoFill:(id)fill autoStroke:(id)stroke autoShadow:(BOOL)shadow nullFill:(id)nullFill nullStroke:(id)nullStroke nullShadow:(BOOL)nullShadow
{
  shadowCopy = shadow;
  nullShadowCopy = nullShadow;
  propertiesCopy = properties;
  fillCopy = fill;
  strokeCopy = stroke;
  nullFillCopy = nullFill;
  nullStrokeCopy = nullStroke;
  if (propertiesCopy)
  {
    isMergedWithParent = [propertiesCopy isMergedWithParent];
    [propertiesCopy setMergedWithParent:0];
    if (strokeCopy)
    {
      if (nullStrokeCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
      strokeCopy = +[OADStroke nullStroke];
      if (nullStrokeCopy)
      {
        goto LABEL_7;
      }
    }

    nullStrokeCopy = +[OADStroke nullStroke];
LABEL_7:
    hasStroke = [propertiesCopy hasStroke];
    v21 = nullStrokeCopy;
    if (hasStroke)
    {
      stroke = [propertiesCopy stroke];
      v23 = +[CHDAutomaticObject automaticStroke];

      if (stroke != v23)
      {
        goto LABEL_13;
      }

      [propertiesCopy setStroke:0];
      v21 = strokeCopy;
    }

    v24 = v21;
    if (v24)
    {
      v25 = v24;
      v26 = [v24 copy];

      if ([propertiesCopy hasStroke])
      {
        stroke2 = [propertiesCopy stroke];
        [stroke2 setParent:v26];
      }

      else
      {
        [propertiesCopy setStroke:v26];
      }

LABEL_15:
      if (fillCopy)
      {
        if (nullFillCopy)
        {
          goto LABEL_20;
        }
      }

      else
      {
        fillCopy = +[OADNullFill nullFill];
        if (nullFillCopy)
        {
          goto LABEL_20;
        }
      }

      nullFillCopy = +[OADNullFill nullFill];
LABEL_20:
      hasFill = [propertiesCopy hasFill];
      v29 = nullFillCopy;
      if (hasFill)
      {
        fill = [propertiesCopy fill];
        v31 = +[CHDAutomaticObject automaticFill];

        if (fill != v31)
        {
          goto LABEL_28;
        }

        [propertiesCopy setFill:0];
        v29 = fillCopy;
      }

      v32 = v29;
      if (v32)
      {
        v33 = v32;
        v34 = [v32 copy];

        if ([propertiesCopy hasFill])
        {
          fill2 = [propertiesCopy fill];
          if ([v34 isMemberOfClass:objc_opt_class()])
          {
            [fill2 setParent:v34];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v34 setDefinedByStyle:1];
          }

          [propertiesCopy setFill:v34];
        }

LABEL_32:
        if ([propertiesCopy hasEffects])
        {
          effects = [propertiesCopy effects];
          v37 = +[CHDAutomaticObject automaticEffects];

          if (effects != v37)
          {
LABEL_36:
            [propertiesCopy setMergedWithParent:isMergedWithParent];

            goto LABEL_37;
          }

          [propertiesCopy setEffects:0];
          nullShadowCopy = shadowCopy;
        }

        v38 = [CHDChart binaryEffects:nullShadowCopy];
        [propertiesCopy setEffects:v38];

        goto LABEL_36;
      }

LABEL_28:
      v34 = 0;
      goto LABEL_32;
    }

LABEL_13:
    v26 = 0;
    goto LABEL_15;
  }

LABEL_37:
}

- (id)fillWithColorIndex:(unint64_t)index
{
  v3 = [[OADIndexedColor alloc] initWithIndex:index];
  v4 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v4 setColor:v3];

  return v4;
}

- (id)strokeWithColorIndex:(int)index
{
  v3 = [(CHBAutoStyling *)self fillWithColorIndex:index];
  v4 = objc_alloc_init(OADStroke);
  [(OADStroke *)v4 setFill:v3];
  LODWORD(v5) = 1.0;
  [(OADStroke *)v4 setWidth:v5];

  return v4;
}

- (id)autoSeriesFill:(unint64_t)fill
{
  v3 = 16;
  if (fill > 7)
  {
    v3 = 24;
  }

  return [(CHBAutoStyling *)self fillWithColorIndex:(v3 + fill) % 0x38 + 8];
}

- (void)resolveChartAreaGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoFill = [(CHBAutoStyling *)self autoFill];
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:autoFill autoStroke:autoStroke autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v6];
  }
}

- (void)resolveWallGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoFill = [(CHBAutoStyling *)self autoFill];
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:autoFill autoStroke:autoStroke autoShadow:0 nullFill:autoFill nullStroke:autoStroke nullShadow:v6];
  }
}

- (void)resolveFloorGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v4 = [(CHBAutoStyling *)self fillWithColorIndex:23];
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:v4 autoStroke:autoStroke autoShadow:0 nullFill:v4 nullStroke:autoStroke nullShadow:v6];
  }
}

- (void)resolvePlotAreaGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoFill = [(CHBAutoStyling *)self autoFill];
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:autoFill autoStroke:autoStroke autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v6];
  }
}

- (void)resolveAxisGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:0 autoStroke:autoStroke autoShadow:0 nullFill:0 nullStroke:autoStroke nullShadow:v5];
  }
}

- (void)resolveMajorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:0 autoStroke:autoStroke autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v5];
  }
}

- (void)resolveMinorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:0 autoStroke:autoStroke autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v5];
  }
}

- (void)resolveLegendGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    autoFill = [(CHBAutoStyling *)self autoFill];
    autoStroke = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:propertiesCopy autoFill:autoFill autoStroke:autoStroke autoShadow:0 nullFill:autoFill nullStroke:autoStroke nullShadow:v6];
  }
}

- (id)autoTextFill
{
  autoStroke = [(CHBAutoStyling *)self autoStroke];
  fill = [autoStroke fill];

  return fill;
}

- (void)resolveGraphicPropertiesOfSeries:(id)series forSeriesIndex:(unint64_t)index isLine:(BOOL)line
{
  lineCopy = line;
  seriesCopy = series;
  if (seriesCopy)
  {
    v8 = [(CHBAutoStyling *)self autoSeriesFill:index];
    if (lineCopy)
    {
      [(CHBAutoStyling *)self autoStrokeForSeriesIndex:index];
    }

    else
    {
      [(CHBAutoStyling *)self autoSeriesBorderStroke];
    }
    v9 = ;
    LOBYTE(v10) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:seriesCopy autoFill:v8 autoStroke:v9 autoShadow:0 nullFill:v8 nullStroke:v9 nullShadow:v10];
  }
}

- (void)resolveGraphicPropertiesOfTrendline:(id)trendline forSeriesIndex:(unint64_t)index
{
  trendlineCopy = trendline;
  if (trendlineCopy)
  {
    v6 = [(CHBAutoStyling *)self autoSeriesFill:index];
    autoSeriesBorderStroke = [(CHBAutoStyling *)self autoSeriesBorderStroke];
    LOBYTE(v8) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:trendlineCopy autoFill:v6 autoStroke:autoSeriesBorderStroke autoShadow:0 nullFill:v6 nullStroke:autoSeriesBorderStroke nullShadow:v8];
  }
}

- (void)resolveGraphicPropertiesOfErrorBar:(id)bar forSeriesIndex:(unint64_t)index
{
  barCopy = bar;
  if (barCopy)
  {
    autoSeriesBorderStroke = [(CHBAutoStyling *)self autoSeriesBorderStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:barCopy autoFill:0 autoStroke:autoSeriesBorderStroke autoShadow:0 nullFill:0 nullStroke:autoSeriesBorderStroke nullShadow:v6];
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
        v14 = [(CHBAutoStyling *)self autoStrokeForSeriesIndex:index];
        if ([propertiesCopy hasFill])
        {
          fill = [propertiesCopy fill];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = fill;
            technique = [v16 technique];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v19 = [v16 copy];
              graphicProperties2 = [markerCopy graphicProperties];
              [graphicProperties2 setFill:v19];
            }
          }
        }

        if (![markerCopy size])
        {
          [markerCopy setSize:5];
        }

        if ([markerCopy style] == -1)
        {
          [markerCopy setStyle:{-[CHAutoStyling defaultMarkerStyleForSeriesIndex:](self, "defaultMarkerStyleForSeriesIndex:", index)}];
          v21 = v14;
          fill2 = [v21 fill];
        }

        else
        {
          v21 = 0;
          fill2 = 0;
        }

        if (![markerCopy style])
        {
          v26.receiver = self;
          v26.super_class = CHBAutoStyling;
          [(CHAutoStyling *)&v26 replaceStrokeAndFillInEmptyMarker:markerCopy withSeriesGraphicProperties:propertiesCopy];
        }

        graphicProperties3 = [markerCopy graphicProperties];
        fill3 = [v14 fill];
        LOBYTE(v25) = 0;
        [(CHBAutoStyling *)self resolvedGraphicProperties:graphicProperties3 autoFill:fill3 autoStroke:v14 autoShadow:0 nullFill:fill2 nullStroke:v21 nullShadow:v25];
      }
    }
  }
}

@end