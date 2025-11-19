@interface CHPChangeDirection
- (BOOL)isObjectSupported:(id)a3;
- (id)createNewSeriesCollectionForOrthogonalDirection:(id)a3 forChart:(id)a4;
- (id)getGraphicPropertiesForSeriesWithIndex:(unint64_t)a3 fromCollection:(id)a4 isVaryColors:(BOOL)a5 forChart:(id)a6;
- (id)getSeriesCollectionForOrthogonalDirection:(id)a3 forChart:(id)a4;
- (void)addDataValue:(id)a3 to:(id)a4 withIndex:(unint64_t)a5;
- (void)changeBarColumnDirection:(id)a3;
- (void)changeChartDirection:(id)a3 sheet:(id)a4;
- (void)cleanUpOldSeriesCollection:(id)a3;
- (void)mapSeriesCollection:(id)a3 from:(id)a4 forChart:(id)a5;
- (void)mapSeriesValues:(id)a3 to:(id)a4 forIndex:(unint64_t)a5 byRow:(BOOL)a6 forChart:(id)a7;
@end

@implementation CHPChangeDirection

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = v3;
  v5 = [v4 seriesCollection];
  v6 = v5;
  if (!v5 || ![v5 nonEmptySeriesCount])
  {
    v13 = 0;
LABEL_12:

    goto LABEL_27;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class() || (v8 = objc_opt_class(), v8 == objc_opt_class()))
  {
    v13 = 1;
    goto LABEL_12;
  }

  v9 = [v4 chart];
  v10 = [v9 plotArea];
  v11 = [v10 chartTypes];

  if (v11 && [v11 count] > 1)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 isGroupingStacked] & 1) != 0 || objc_msgSend(v6, "nonEmptySeriesCount") != 1)
  {
    v12 = 1;
    goto LABEL_24;
  }

  v37 = [v6 firstNonEmptySeries];
  v14 = [v37 dataValuePropertiesCollection];
  v39 = v14;
  if (!v14 || [v14 count] < 2)
  {
    goto LABEL_42;
  }

  v15 = [v37 graphicProperties];
  if (v15 && ([v37 graphicProperties], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasFill"), v16, v15, v17))
  {
    v18 = [v37 graphicProperties];
    v19 = [v18 fill];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_45;
    }

    v20 = [v19 color];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_45;
    }

    v22 = [v19 color];
    v23 = [v22 index];
  }

  else
  {
    v23 = -1;
  }

  v38 = [v39 count];
  if (!v38)
  {
LABEL_42:
    v12 = 1;
    goto LABEL_43;
  }

  v36 = v23;
  v25 = 0;
  while (1)
  {
    v26 = [v39 objectAtIndex:{v25, v36}];
    v19 = v26;
    if (!v26)
    {
      goto LABEL_41;
    }

    v27 = [v26 graphicProperties];
    if (!v27)
    {
      goto LABEL_41;
    }

    v28 = [v19 graphicProperties];
    v29 = [v28 hasFill];

    if (!v29)
    {
      goto LABEL_41;
    }

    v30 = [v19 graphicProperties];
    v31 = [v30 fill];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v32 = [v31 color];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      goto LABEL_44;
    }

    v34 = [v31 color];
    v35 = [v34 index];
    if (v36 == -1)
    {
      v36 = v35;
      goto LABEL_40;
    }

    if (v36 != v35)
    {
      break;
    }

LABEL_40:

LABEL_41:
    if (v38 == ++v25)
    {
      goto LABEL_42;
    }
  }

LABEL_44:
LABEL_45:

  v12 = 0;
LABEL_43:

LABEL_24:
  v13 = 1;
LABEL_25:

  if (v12)
  {
LABEL_26:
    v13 = 0;
  }

LABEL_27:

  return v13;
}

- (void)changeBarColumnDirection:(id)a3
{
  v13 = a3;
  v4 = [v13 chart];
  v5 = [v4 plotArea];
  v6 = [v5 chartTypes];

  v7 = [v13 seriesCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isGroupingStacked])
  {
    goto LABEL_17;
  }

  if ([v7 nonEmptySeriesCount] < 2)
  {
    goto LABEL_17;
  }

  v8 = [v7 firstNonEmptySeries];
  v9 = [v8 valueData];
  if ([v9 countOfCellsBeingReferenced] != 1)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (!v6)
  {

LABEL_11:
    [v4 setVisibleSeriesNames:1];
    v11 = [(CHPChangeDirection *)self getSeriesCollectionForOrthogonalDirection:v7 forChart:v4];
    v8 = v11;
    if (v11 && [v11 count])
    {
      [(CHPChangeDirection *)self cleanUpOldSeriesCollection:v7];
      [v13 setSeriesCollection:v8];
      [v4 setDirectionChanged:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v13 overlap];
      [v13 setOverlap:{objc_msgSend(v13, "gapWidth")}];
      [v13 setGapWidth:v12];
    }

    goto LABEL_16;
  }

  v10 = [v6 count];

  if (v10 <= 1)
  {
    goto LABEL_11;
  }

LABEL_17:
}

- (void)changeChartDirection:(id)a3 sheet:(id)a4
{
  v27 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [v27 chart];
  v6 = [v27 seriesCollection];
  if ([v6 nonEmptySeriesCount] != 1 || (objc_msgSend(v6, "firstNonEmptySeries"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "valueData"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (objc_msgSend(v8, "countOfCellsBeingReferenced") > 1) | isKindOfClass, v8, v7, (v9 & 1) != 0))
  {
    v10 = [v5 plotArea];
    v11 = [v10 chartTypes];

    if (v11 && [v11 count] >= 2)
    {
      v12 = [CHDSeriesCollection seriesCollectionWithChart:v5];
      v25 = v5;

      v13 = [v11 count];
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = [v11 objectAtIndex:i];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 seriesCollection];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 count];
              if (v19)
              {
                for (j = 0; j != v19; ++j)
                {
                  v21 = [v18 objectAtIndex:j];
                  [v12 addObject:v21];
                }
              }
            }
          }
        }
      }

      v5 = v25;
      if (!(([v12 nonEmptySeriesCount] < 2) | isKindOfClass & 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = v6;
    }

    v22 = [(CHPChangeDirection *)self getSeriesCollectionForOrthogonalDirection:v12 forChart:v5];
    v23 = v22;
    if (v22 && [v22 count])
    {
      [(CHPChangeDirection *)self cleanUpOldSeriesCollection:v12];
      [v27 setSeriesCollection:v23];
      [v5 setDirectionChanged:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v27 overlap];
      [v27 setOverlap:{objc_msgSend(v27, "gapWidth")}];
      [v27 setGapWidth:v24];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v27 setGapWidth:40];
      }
    }

LABEL_24:
    v6 = v12;
  }
}

- (id)createNewSeriesCollectionForOrthogonalDirection:(id)a3 forChart:(id)a4
{
  v30 = a3;
  v31 = a4;
  v6 = [v30 firstNonEmptySeries];
  v7 = [v6 valueData];
  v8 = [v7 countOfCellsBeingReferenced];

  v9 = [v6 valueData];
  v10 = [v9 contentFormat];

  v11 = [v6 graphicProperties];
  if ([v11 hasFill])
  {
    v12 = [v6 graphicProperties];
    v13 = [v12 fill];
    v14 = [v13 isOverridden];

    if (v14)
    {
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = [v6 chartType];
  v15 = [v16 isVaryColors];

LABEL_6:
  v17 = [CHDSeriesCollection seriesCollectionWithChart:v31];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v19 = [v6 shallowCopy];
      v20 = v19;
      if (v15)
      {
        [v19 setStyleIndex:i];
      }

      [v20 setOrder:i];
      WeakRetained = objc_loadWeakRetained(&self->super.mResources);
      v22 = [CHDData dataWithResources:WeakRetained];
      [v20 setValueData:v22];

      if (v10)
      {
        v23 = [v20 valueData];
        [v23 setContentFormat:v10];
      }

      v24 = [v6 defaultDataLabel];
      [v20 setDefaultDataLabel:v24];

      v25 = [v6 trendlineCollection];
      [v20 setTrendlineCollection:v25];

      v26 = [v6 errorBarXAxis];
      [v20 setErrorBarXAxis:v26];

      v27 = [v6 errorBarYAxis];
      [v20 setErrorBarYAxis:v27];

      v28 = [(CHPChangeDirection *)self getGraphicPropertiesForSeriesWithIndex:i fromCollection:v30 isVaryColors:v15 forChart:v31];
      [v20 setGraphicProperties:v28];

      [v17 addObject:v20];
    }
  }

  return v17;
}

- (id)getSeriesCollectionForOrthogonalDirection:(id)a3 forChart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHPChangeDirection *)self createNewSeriesCollectionForOrthogonalDirection:v6 forChart:v7];
  v9 = v8;
  if (v8 && [v8 count])
  {
    [(CHPChangeDirection *)self mapSeriesCollection:v9 from:v6 forChart:v7];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)mapSeriesCollection:(id)a3 from:(id)a4 forChart:(id)a5
{
  v60 = a3;
  v7 = a4;
  v53 = a5;
  v8 = [v7 nonEmptySeriesCount];
  v56 = [v7 firstNonEmptySeries];
  v52 = v7;
  v57 = [v60 count];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 count];
  }

  v10 = +[EDReferenceCollection noCoalesceCollection];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v59 = [CHDData dataWithResources:WeakRetained];

  v12 = [v56 categoryData];
  v13 = [v12 contentFormat];

  v51 = v13;
  if (v13)
  {
    [v59 setContentFormat:v13];
  }

  v14 = [v56 chartType];
  v15 = [v14 chart];
  v16 = [v15 direction];

  if (v9)
  {
    v54 = 0;
    v17 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v8 == 1)
      {
        v19 = v56;
      }

      else
      {
        v19 = [v52 objectAtIndex:i];
      }

      v20 = v19;
      if (([v19 isEmpty] & 1) == 0)
      {
        v21 = [v20 lastCachedName];

        if (v21)
        {
          v22 = [v20 lastCachedName];
          v23 = [v59 dataValues];
          [(CHPChangeDirection *)self addDataValue:v22 to:v23 withIndex:i];
        }

        v24 = [v20 name];
        v25 = [v24 references];

        if (v25)
        {
          for (j = 0; [v25 count] > j; ++j)
          {
            v27 = [v25 objectAtIndex:j];
            [v10 addObject:v27];
          }
        }

        else
        {
          v54 = 1;
        }

        v28 = [v20 defaultDataLabel];
        v29 = v28;
        if (v28)
        {
          v17 |= [v28 isShowLeaderLines];
        }

        [(CHPChangeDirection *)self mapSeriesValues:v20 to:v60 forIndex:i byRow:v16 != 2 forChart:v53];
      }
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    v54 = 0;
  }

  if (!(([v10 count] == 0) | v54 & 1))
  {
    v30 = objc_alloc_init(CHDFormula);
    v31 = objc_loadWeakRetained(&self->super.mWorkbook);
    [(CHDFormula *)v30 setWorkbook:v31];

    [v10 coalesceProgressiveCellReferencesCollection];
    [(CHDFormula *)v30 setReferences:v10];
    [v59 setFormula:v30 chart:v53];
  }

  v32 = [v56 categoryData];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 formula];
    v35 = v34;
    if (v34)
    {
      [v34 setCleaned:1];
      v55 = [v35 references];
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
  }

  if (v57)
  {
    v36 = 0;
    for (k = 0; k < v57; v36 = ++k)
    {
      v38 = [v60 objectAtIndex:v36];
      [v38 setCategoryData:v59];
      if (v33)
      {
        v39 = [v33 dataValues];
        v40 = [v39 dataValueWithIndex:k];

        if (v40 && [v40 contentFormatId] == -1 && objc_msgSend(v33, "contentFormatId") != -1)
        {
          [v40 setContentFormatId:{objc_msgSend(v33, "contentFormatId")}];
        }

        [v38 setLastCachedName:v40];
        v41 = [v55 referenceToCellWithIndex:v36 byRow:v16 != 2];
        if (v41)
        {
          v42 = [CHDFormula formulaWithReference:v41];
          v43 = objc_loadWeakRetained(&self->super.mWorkbook);
          [v42 setWorkbook:v43];

          [v38 setName:v42];
        }
      }

      v44 = [v38 valueData];
      v45 = [v44 formula];
      v46 = v45;
      if (v45)
      {
        v47 = [v45 references];
        v48 = v47;
        if (v47)
        {
          [v47 coalesceProgressiveCellReferencesCollection];
        }
      }

      v49 = [v38 defaultDataLabel];
      v50 = v49;
      if (((v49 != 0) & v17) == 1)
      {
        [v49 setShowLeaderLines:1];
      }
    }
  }
}

- (void)mapSeriesValues:(id)a3 to:(id)a4 forIndex:(unint64_t)a5 byRow:(BOOL)a6 forChart:(id)a7
{
  v8 = a6;
  v33 = a3;
  v38 = a4;
  v39 = a7;
  v37 = [v33 valueData];
  v35 = [v33 dataValuePropertiesCollection];
  v11 = [v37 formula];
  v36 = [v11 references];

  v12 = [v38 count];
  if (v12)
  {
    for (i = 0; v12 != i; ++i)
    {
      v14 = [v38 objectAtIndex:i];
      v15 = [v36 referenceToCellWithIndex:i byRow:v8];
      if (v15)
      {
        v16 = [v14 valueData];
        v17 = [v16 formula];
        if (!v17)
        {
          v17 = objc_alloc_init(CHDFormula);
          WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
          [(CHDFormula *)v17 setWorkbook:WeakRetained];

          [v16 setFormula:v17 chart:v39];
          [v14 setValueData:0];
          [v14 setValueData:v16];
        }

        v19 = [(CHDFormula *)v17 references];
        if (!v19)
        {
          v19 = +[EDReferenceCollection noCoalesceCollection];
          [(CHDFormula *)v17 setReferences:v19];
        }

        [v19 addObject:v15];
      }

      v20 = [v37 dataValues];
      v21 = [v20 dataValueWithIndex:i];

      if (v21)
      {
        v22 = [v14 valueData];
        v23 = [v22 dataValues];
        [(CHPChangeDirection *)self addDataValue:v21 to:v23 withIndex:a5];
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v25 = [v39 hasVisibleSeriesNames];
      v26 = [v35 objectWithKey:i];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 shallowCopyWithIndex:a5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v28 isExplosionSet] & 1) == 0)
        {
          [v28 setExplosion:{objc_msgSend(v33, "explosion")}];
        }

        v29 = [v14 dataValuePropertiesCollection];
        [v29 addObject:v28];
      }

      else
      {
        if (((isKindOfClass | v25) & 1) == 0)
        {
          goto LABEL_21;
        }

        v30 = [v33 graphicProperties];

        if (!v30)
        {
          goto LABEL_21;
        }

        if (isKindOfClass)
        {
          +[(CHDDataValueProperties *)CHDPieDataValueProperties];
        }

        else
        {
          +[CHDDataValueProperties dataValueProperties];
        }
        v27 = ;
        v31 = [v33 graphicProperties];
        [v27 setGraphicProperties:v31];

        [v27 setDataValueIndex:a5];
        v28 = [v27 dataLabel];
        if (!v28)
        {
          v32 = [v33 defaultDataLabel];
          [v27 setDataLabel:v32];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 setExplosion:{objc_msgSend(v33, "explosion")}];
        }

        v29 = [v14 dataValuePropertiesCollection];
        [v29 addObject:v27];
      }

LABEL_21:
    }
  }
}

- (id)getGraphicPropertiesForSeriesWithIndex:(unint64_t)a3 fromCollection:(id)a4 isVaryColors:(BOOL)a5 forChart:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = [v9 firstNonEmptySeries];
  v12 = [v11 dataValuePropertiesCollection];
  v13 = [v12 objectWithKey:a3];
  v14 = [v13 graphicProperties];

  if (!v14)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v16 = [v9 objectWithKey:a3];
    v14 = [v16 graphicProperties];

    if (!v14)
    {
      if ([v9 count] > a3)
      {
        goto LABEL_17;
      }

      v14 = objc_alloc_init(OADGraphicProperties);
      v17 = [OADDrawingTheme alloc];
      v18 = [v10 workbook];
      v19 = [v18 theme];
      v20 = [(OADDrawingTheme *)v17 initWithTheme:v19 colorMap:0 colorPalette:0];

      v21 = [CHAutoStyling autoStylingWithChart:v10 drawingTheme:v20];

      [v21 resolveGraphicPropertiesOfSeries:v14 forSeriesIndex:a3];
      v22 = [v11 graphicProperties];

      if (v22)
      {
        v23 = [v11 graphicProperties];
        if ([v23 hasStroke])
        {
          v24 = [v23 stroke];
          v25 = v24;
          if (!v24 || ([v24 fill], (v26 = objc_claimAutoreleasedReturnValue()) == 0) || (v31 = v26, objc_msgSend(v25, "fill"), v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, v31, (isKindOfClass & 1) != 0))
          {
            v28 = +[OADStroke nullStroke];
            [(OADGraphicProperties *)v14 setStroke:v28];
          }
        }
      }

      if (!v14)
      {
LABEL_17:
        v14 = [v11 graphicProperties];
        if (!v14)
        {
          v29 = [v9 objectWithKey:a3];
          v14 = [v29 graphicProperties];
        }
      }
    }
  }

  return v14;
}

- (void)addDataValue:(id)a3 to:(id)a4 withIndex:(unint64_t)a5
{
  v8 = a3;
  v7 = a4;
  if (v8 && v7)
  {
    [v8 setIndex:a5];
    [v7 addDataValue:v8];
  }
}

- (void)cleanUpOldSeriesCollection:(id)a3
{
  v7 = a3;
  v3 = [v7 count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [v7 objectAtIndex:i];
      v6 = v5;
      if (v5)
      {
        [v5 clearBackPointers];
      }
    }
  }
}

@end