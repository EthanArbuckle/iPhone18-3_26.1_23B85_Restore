@interface CHBAutoStyling
- (id)autoSeriesFill:(unint64_t)a3;
- (id)autoTextFill;
- (id)fillWithColorIndex:(unint64_t)a3;
- (id)strokeWithColorIndex:(int)a3;
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
- (void)resolvedGraphicProperties:(id)a3 autoFill:(id)a4 autoStroke:(id)a5 autoShadow:(BOOL)a6 nullFill:(id)a7 nullStroke:(id)a8 nullShadow:(BOOL)a9;
@end

@implementation CHBAutoStyling

- (void)resolvedGraphicProperties:(id)a3 autoFill:(id)a4 autoStroke:(id)a5 autoShadow:(BOOL)a6 nullFill:(id)a7 nullStroke:(id)a8 nullShadow:(BOOL)a9
{
  v11 = a6;
  v14 = a9;
  v39 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (v39)
  {
    v19 = [v39 isMergedWithParent];
    [v39 setMergedWithParent:0];
    if (v16)
    {
      if (v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = +[OADStroke nullStroke];
      if (v18)
      {
        goto LABEL_7;
      }
    }

    v18 = +[OADStroke nullStroke];
LABEL_7:
    v20 = [v39 hasStroke];
    v21 = v18;
    if (v20)
    {
      v22 = [v39 stroke];
      v23 = +[CHDAutomaticObject automaticStroke];

      if (v22 != v23)
      {
        goto LABEL_13;
      }

      [v39 setStroke:0];
      v21 = v16;
    }

    v24 = v21;
    if (v24)
    {
      v25 = v24;
      v26 = [v24 copy];

      if ([v39 hasStroke])
      {
        v27 = [v39 stroke];
        [v27 setParent:v26];
      }

      else
      {
        [v39 setStroke:v26];
      }

LABEL_15:
      if (v15)
      {
        if (v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = +[OADNullFill nullFill];
        if (v17)
        {
          goto LABEL_20;
        }
      }

      v17 = +[OADNullFill nullFill];
LABEL_20:
      v28 = [v39 hasFill];
      v29 = v17;
      if (v28)
      {
        v30 = [v39 fill];
        v31 = +[CHDAutomaticObject automaticFill];

        if (v30 != v31)
        {
          goto LABEL_28;
        }

        [v39 setFill:0];
        v29 = v15;
      }

      v32 = v29;
      if (v32)
      {
        v33 = v32;
        v34 = [v32 copy];

        if ([v39 hasFill])
        {
          v35 = [v39 fill];
          if ([v34 isMemberOfClass:objc_opt_class()])
          {
            [v35 setParent:v34];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v34 setDefinedByStyle:1];
          }

          [v39 setFill:v34];
        }

LABEL_32:
        if ([v39 hasEffects])
        {
          v36 = [v39 effects];
          v37 = +[CHDAutomaticObject automaticEffects];

          if (v36 != v37)
          {
LABEL_36:
            [v39 setMergedWithParent:v19];

            goto LABEL_37;
          }

          [v39 setEffects:0];
          v14 = v11;
        }

        v38 = [CHDChart binaryEffects:v14];
        [v39 setEffects:v38];

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

- (id)fillWithColorIndex:(unint64_t)a3
{
  v3 = [[OADIndexedColor alloc] initWithIndex:a3];
  v4 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v4 setColor:v3];

  return v4;
}

- (id)strokeWithColorIndex:(int)a3
{
  v3 = [(CHBAutoStyling *)self fillWithColorIndex:a3];
  v4 = objc_alloc_init(OADStroke);
  [(OADStroke *)v4 setFill:v3];
  LODWORD(v5) = 1.0;
  [(OADStroke *)v4 setWidth:v5];

  return v4;
}

- (id)autoSeriesFill:(unint64_t)a3
{
  v3 = 16;
  if (a3 > 7)
  {
    v3 = 24;
  }

  return [(CHBAutoStyling *)self fillWithColorIndex:(v3 + a3) % 0x38 + 8];
}

- (void)resolveChartAreaGraphicProperties:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(CHBAutoStyling *)self autoFill];
    v5 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:v4 autoStroke:v5 autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v6];
  }
}

- (void)resolveWallGraphicProperties:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(CHBAutoStyling *)self autoFill];
    v5 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:v4 autoStroke:v5 autoShadow:0 nullFill:v4 nullStroke:v5 nullShadow:v6];
  }
}

- (void)resolveFloorGraphicProperties:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(CHBAutoStyling *)self fillWithColorIndex:23];
    v5 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:v4 autoStroke:v5 autoShadow:0 nullFill:v4 nullStroke:v5 nullShadow:v6];
  }
}

- (void)resolvePlotAreaGraphicProperties:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(CHBAutoStyling *)self autoFill];
    v5 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:v4 autoStroke:v5 autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v6];
  }
}

- (void)resolveAxisGraphicProperties:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v6 autoFill:0 autoStroke:v4 autoShadow:0 nullFill:0 nullStroke:v4 nullShadow:v5];
  }
}

- (void)resolveMajorGridLinesGraphicProperties:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v6 autoFill:0 autoStroke:v4 autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v5];
  }
}

- (void)resolveMinorGridLinesGraphicProperties:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v5) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v6 autoFill:0 autoStroke:v4 autoShadow:0 nullFill:0 nullStroke:0 nullShadow:v5];
  }
}

- (void)resolveLegendGraphicProperties:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(CHBAutoStyling *)self autoFill];
    v5 = [(CHBAutoStyling *)self autoStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:v4 autoStroke:v5 autoShadow:0 nullFill:v4 nullStroke:v5 nullShadow:v6];
  }
}

- (id)autoTextFill
{
  v2 = [(CHBAutoStyling *)self autoStroke];
  v3 = [v2 fill];

  return v3;
}

- (void)resolveGraphicPropertiesOfSeries:(id)a3 forSeriesIndex:(unint64_t)a4 isLine:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  if (v11)
  {
    v8 = [(CHBAutoStyling *)self autoSeriesFill:a4];
    if (v5)
    {
      [(CHBAutoStyling *)self autoStrokeForSeriesIndex:a4];
    }

    else
    {
      [(CHBAutoStyling *)self autoSeriesBorderStroke];
    }
    v9 = ;
    LOBYTE(v10) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v11 autoFill:v8 autoStroke:v9 autoShadow:0 nullFill:v8 nullStroke:v9 nullShadow:v10];
  }
}

- (void)resolveGraphicPropertiesOfTrendline:(id)a3 forSeriesIndex:(unint64_t)a4
{
  v9 = a3;
  if (v9)
  {
    v6 = [(CHBAutoStyling *)self autoSeriesFill:a4];
    v7 = [(CHBAutoStyling *)self autoSeriesBorderStroke];
    LOBYTE(v8) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v9 autoFill:v6 autoStroke:v7 autoShadow:0 nullFill:v6 nullStroke:v7 nullShadow:v8];
  }
}

- (void)resolveGraphicPropertiesOfErrorBar:(id)a3 forSeriesIndex:(unint64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v5 = [(CHBAutoStyling *)self autoSeriesBorderStroke];
    LOBYTE(v6) = 0;
    [(CHBAutoStyling *)self resolvedGraphicProperties:v7 autoFill:0 autoStroke:v5 autoShadow:0 nullFill:0 nullStroke:v5 nullShadow:v6];
  }
}

- (void)resolveMarker:(id)a3 withSeriesGraphicProperties:(id)a4 forSeriesIndex:(unint64_t)a5 clientGraphicPropertyDefaults:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = [v10 graphicProperties];

    if (v11)
    {
      if (v13)
      {
        v14 = [(CHBAutoStyling *)self autoStrokeForSeriesIndex:a5];
        if ([v11 hasFill])
        {
          v15 = [v11 fill];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [v16 technique];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v19 = [v16 copy];
              v20 = [v10 graphicProperties];
              [v20 setFill:v19];
            }
          }
        }

        if (![v10 size])
        {
          [v10 setSize:5];
        }

        if ([v10 style] == -1)
        {
          [v10 setStyle:{-[CHAutoStyling defaultMarkerStyleForSeriesIndex:](self, "defaultMarkerStyleForSeriesIndex:", a5)}];
          v21 = v14;
          v22 = [v21 fill];
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        if (![v10 style])
        {
          v26.receiver = self;
          v26.super_class = CHBAutoStyling;
          [(CHAutoStyling *)&v26 replaceStrokeAndFillInEmptyMarker:v10 withSeriesGraphicProperties:v11];
        }

        v23 = [v10 graphicProperties];
        v24 = [v14 fill];
        LOBYTE(v25) = 0;
        [(CHBAutoStyling *)self resolvedGraphicProperties:v23 autoFill:v24 autoStroke:v14 autoShadow:0 nullFill:v22 nullStroke:v21 nullShadow:v25];
      }
    }
  }
}

@end