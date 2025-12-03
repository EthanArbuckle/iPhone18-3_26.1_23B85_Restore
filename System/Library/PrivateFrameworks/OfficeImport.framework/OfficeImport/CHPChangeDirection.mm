@interface CHPChangeDirection
- (BOOL)isObjectSupported:(id)supported;
- (id)createNewSeriesCollectionForOrthogonalDirection:(id)direction forChart:(id)chart;
- (id)getGraphicPropertiesForSeriesWithIndex:(unint64_t)index fromCollection:(id)collection isVaryColors:(BOOL)colors forChart:(id)chart;
- (id)getSeriesCollectionForOrthogonalDirection:(id)direction forChart:(id)chart;
- (void)addDataValue:(id)value to:(id)to withIndex:(unint64_t)index;
- (void)changeBarColumnDirection:(id)direction;
- (void)changeChartDirection:(id)direction sheet:(id)sheet;
- (void)cleanUpOldSeriesCollection:(id)collection;
- (void)mapSeriesCollection:(id)collection from:(id)from forChart:(id)chart;
- (void)mapSeriesValues:(id)values to:(id)to forIndex:(unint64_t)index byRow:(BOOL)row forChart:(id)chart;
@end

@implementation CHPChangeDirection

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  if (!supportedCopy)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = supportedCopy;
  seriesCollection = [v4 seriesCollection];
  v6 = seriesCollection;
  if (!seriesCollection || ![seriesCollection nonEmptySeriesCount])
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

  chart = [v4 chart];
  plotArea = [chart plotArea];
  chartTypes = [plotArea chartTypes];

  if (chartTypes && [chartTypes count] > 1)
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

  firstNonEmptySeries = [v6 firstNonEmptySeries];
  dataValuePropertiesCollection = [firstNonEmptySeries dataValuePropertiesCollection];
  v39 = dataValuePropertiesCollection;
  if (!dataValuePropertiesCollection || [dataValuePropertiesCollection count] < 2)
  {
    goto LABEL_42;
  }

  graphicProperties = [firstNonEmptySeries graphicProperties];
  if (graphicProperties && ([firstNonEmptySeries graphicProperties], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasFill"), v16, graphicProperties, v17))
  {
    graphicProperties2 = [firstNonEmptySeries graphicProperties];
    fill = [graphicProperties2 fill];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_45;
    }

    color = [fill color];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_45;
    }

    color2 = [fill color];
    index = [color2 index];
  }

  else
  {
    index = -1;
  }

  v38 = [v39 count];
  if (!v38)
  {
LABEL_42:
    v12 = 1;
    goto LABEL_43;
  }

  v36 = index;
  v25 = 0;
  while (1)
  {
    v26 = [v39 objectAtIndex:{v25, v36}];
    fill = v26;
    if (!v26)
    {
      goto LABEL_41;
    }

    graphicProperties3 = [v26 graphicProperties];
    if (!graphicProperties3)
    {
      goto LABEL_41;
    }

    graphicProperties4 = [fill graphicProperties];
    hasFill = [graphicProperties4 hasFill];

    if (!hasFill)
    {
      goto LABEL_41;
    }

    graphicProperties5 = [fill graphicProperties];
    fill2 = [graphicProperties5 fill];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    color3 = [fill2 color];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      goto LABEL_44;
    }

    color4 = [fill2 color];
    index2 = [color4 index];
    if (v36 == -1)
    {
      v36 = index2;
      goto LABEL_40;
    }

    if (v36 != index2)
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

- (void)changeBarColumnDirection:(id)direction
{
  directionCopy = direction;
  chart = [directionCopy chart];
  plotArea = [chart plotArea];
  chartTypes = [plotArea chartTypes];

  seriesCollection = [directionCopy seriesCollection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([directionCopy isGroupingStacked])
  {
    goto LABEL_17;
  }

  if ([seriesCollection nonEmptySeriesCount] < 2)
  {
    goto LABEL_17;
  }

  firstNonEmptySeries = [seriesCollection firstNonEmptySeries];
  valueData = [firstNonEmptySeries valueData];
  if ([valueData countOfCellsBeingReferenced] != 1)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (!chartTypes)
  {

LABEL_11:
    [chart setVisibleSeriesNames:1];
    v11 = [(CHPChangeDirection *)self getSeriesCollectionForOrthogonalDirection:seriesCollection forChart:chart];
    firstNonEmptySeries = v11;
    if (v11 && [v11 count])
    {
      [(CHPChangeDirection *)self cleanUpOldSeriesCollection:seriesCollection];
      [directionCopy setSeriesCollection:firstNonEmptySeries];
      [chart setDirectionChanged:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      overlap = [directionCopy overlap];
      [directionCopy setOverlap:{objc_msgSend(directionCopy, "gapWidth")}];
      [directionCopy setGapWidth:overlap];
    }

    goto LABEL_16;
  }

  v10 = [chartTypes count];

  if (v10 <= 1)
  {
    goto LABEL_11;
  }

LABEL_17:
}

- (void)changeChartDirection:(id)direction sheet:(id)sheet
{
  directionCopy = direction;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  chart = [directionCopy chart];
  seriesCollection = [directionCopy seriesCollection];
  if ([seriesCollection nonEmptySeriesCount] != 1 || (objc_msgSend(seriesCollection, "firstNonEmptySeries"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "valueData"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (objc_msgSend(v8, "countOfCellsBeingReferenced") > 1) | isKindOfClass, v8, v7, (v9 & 1) != 0))
  {
    plotArea = [chart plotArea];
    chartTypes = [plotArea chartTypes];

    if (chartTypes && [chartTypes count] >= 2)
    {
      v12 = [CHDSeriesCollection seriesCollectionWithChart:chart];
      v25 = chart;

      v13 = [chartTypes count];
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = [chartTypes objectAtIndex:i];
          v16 = v15;
          if (v15)
          {
            seriesCollection2 = [v15 seriesCollection];
            v18 = seriesCollection2;
            if (seriesCollection2)
            {
              v19 = [seriesCollection2 count];
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

      chart = v25;
      if (!(([v12 nonEmptySeriesCount] < 2) | isKindOfClass & 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = seriesCollection;
    }

    v22 = [(CHPChangeDirection *)self getSeriesCollectionForOrthogonalDirection:v12 forChart:chart];
    v23 = v22;
    if (v22 && [v22 count])
    {
      [(CHPChangeDirection *)self cleanUpOldSeriesCollection:v12];
      [directionCopy setSeriesCollection:v23];
      [chart setDirectionChanged:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      overlap = [directionCopy overlap];
      [directionCopy setOverlap:{objc_msgSend(directionCopy, "gapWidth")}];
      [directionCopy setGapWidth:overlap];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [directionCopy setGapWidth:40];
      }
    }

LABEL_24:
    seriesCollection = v12;
  }
}

- (id)createNewSeriesCollectionForOrthogonalDirection:(id)direction forChart:(id)chart
{
  directionCopy = direction;
  chartCopy = chart;
  firstNonEmptySeries = [directionCopy firstNonEmptySeries];
  valueData = [firstNonEmptySeries valueData];
  countOfCellsBeingReferenced = [valueData countOfCellsBeingReferenced];

  valueData2 = [firstNonEmptySeries valueData];
  contentFormat = [valueData2 contentFormat];

  graphicProperties = [firstNonEmptySeries graphicProperties];
  if ([graphicProperties hasFill])
  {
    graphicProperties2 = [firstNonEmptySeries graphicProperties];
    fill = [graphicProperties2 fill];
    isOverridden = [fill isOverridden];

    if (isOverridden)
    {
      isVaryColors = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  chartType = [firstNonEmptySeries chartType];
  isVaryColors = [chartType isVaryColors];

LABEL_6:
  v17 = [CHDSeriesCollection seriesCollectionWithChart:chartCopy];
  if (countOfCellsBeingReferenced)
  {
    for (i = 0; i != countOfCellsBeingReferenced; ++i)
    {
      shallowCopy = [firstNonEmptySeries shallowCopy];
      v20 = shallowCopy;
      if (isVaryColors)
      {
        [shallowCopy setStyleIndex:i];
      }

      [v20 setOrder:i];
      WeakRetained = objc_loadWeakRetained(&self->super.mResources);
      v22 = [CHDData dataWithResources:WeakRetained];
      [v20 setValueData:v22];

      if (contentFormat)
      {
        valueData3 = [v20 valueData];
        [valueData3 setContentFormat:contentFormat];
      }

      defaultDataLabel = [firstNonEmptySeries defaultDataLabel];
      [v20 setDefaultDataLabel:defaultDataLabel];

      trendlineCollection = [firstNonEmptySeries trendlineCollection];
      [v20 setTrendlineCollection:trendlineCollection];

      errorBarXAxis = [firstNonEmptySeries errorBarXAxis];
      [v20 setErrorBarXAxis:errorBarXAxis];

      errorBarYAxis = [firstNonEmptySeries errorBarYAxis];
      [v20 setErrorBarYAxis:errorBarYAxis];

      v28 = [(CHPChangeDirection *)self getGraphicPropertiesForSeriesWithIndex:i fromCollection:directionCopy isVaryColors:isVaryColors forChart:chartCopy];
      [v20 setGraphicProperties:v28];

      [v17 addObject:v20];
    }
  }

  return v17;
}

- (id)getSeriesCollectionForOrthogonalDirection:(id)direction forChart:(id)chart
{
  directionCopy = direction;
  chartCopy = chart;
  v8 = [(CHPChangeDirection *)self createNewSeriesCollectionForOrthogonalDirection:directionCopy forChart:chartCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    [(CHPChangeDirection *)self mapSeriesCollection:v9 from:directionCopy forChart:chartCopy];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)mapSeriesCollection:(id)collection from:(id)from forChart:(id)chart
{
  collectionCopy = collection;
  fromCopy = from;
  chartCopy = chart;
  nonEmptySeriesCount = [fromCopy nonEmptySeriesCount];
  firstNonEmptySeries = [fromCopy firstNonEmptySeries];
  v52 = fromCopy;
  v57 = [collectionCopy count];
  if (nonEmptySeriesCount == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [fromCopy count];
  }

  v10 = +[EDReferenceCollection noCoalesceCollection];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v59 = [CHDData dataWithResources:WeakRetained];

  categoryData = [firstNonEmptySeries categoryData];
  contentFormat = [categoryData contentFormat];

  v51 = contentFormat;
  if (contentFormat)
  {
    [v59 setContentFormat:contentFormat];
  }

  chartType = [firstNonEmptySeries chartType];
  chart = [chartType chart];
  direction = [chart direction];

  if (v9)
  {
    v54 = 0;
    v17 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (nonEmptySeriesCount == 1)
      {
        v19 = firstNonEmptySeries;
      }

      else
      {
        v19 = [v52 objectAtIndex:i];
      }

      v20 = v19;
      if (([v19 isEmpty] & 1) == 0)
      {
        lastCachedName = [v20 lastCachedName];

        if (lastCachedName)
        {
          lastCachedName2 = [v20 lastCachedName];
          dataValues = [v59 dataValues];
          [(CHPChangeDirection *)self addDataValue:lastCachedName2 to:dataValues withIndex:i];
        }

        name = [v20 name];
        references = [name references];

        if (references)
        {
          for (j = 0; [references count] > j; ++j)
          {
            v27 = [references objectAtIndex:j];
            [v10 addObject:v27];
          }
        }

        else
        {
          v54 = 1;
        }

        defaultDataLabel = [v20 defaultDataLabel];
        v29 = defaultDataLabel;
        if (defaultDataLabel)
        {
          v17 |= [defaultDataLabel isShowLeaderLines];
        }

        [(CHPChangeDirection *)self mapSeriesValues:v20 to:collectionCopy forIndex:i byRow:direction != 2 forChart:chartCopy];
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
    [v59 setFormula:v30 chart:chartCopy];
  }

  categoryData2 = [firstNonEmptySeries categoryData];
  v33 = categoryData2;
  if (categoryData2)
  {
    formula = [categoryData2 formula];
    v35 = formula;
    if (formula)
    {
      [formula setCleaned:1];
      references2 = [v35 references];
    }

    else
    {
      references2 = 0;
    }
  }

  else
  {
    references2 = 0;
  }

  if (v57)
  {
    v36 = 0;
    for (k = 0; k < v57; v36 = ++k)
    {
      v38 = [collectionCopy objectAtIndex:v36];
      [v38 setCategoryData:v59];
      if (v33)
      {
        dataValues2 = [v33 dataValues];
        v40 = [dataValues2 dataValueWithIndex:k];

        if (v40 && [v40 contentFormatId] == -1 && objc_msgSend(v33, "contentFormatId") != -1)
        {
          [v40 setContentFormatId:{objc_msgSend(v33, "contentFormatId")}];
        }

        [v38 setLastCachedName:v40];
        v41 = [references2 referenceToCellWithIndex:v36 byRow:direction != 2];
        if (v41)
        {
          v42 = [CHDFormula formulaWithReference:v41];
          v43 = objc_loadWeakRetained(&self->super.mWorkbook);
          [v42 setWorkbook:v43];

          [v38 setName:v42];
        }
      }

      valueData = [v38 valueData];
      formula2 = [valueData formula];
      v46 = formula2;
      if (formula2)
      {
        references3 = [formula2 references];
        v48 = references3;
        if (references3)
        {
          [references3 coalesceProgressiveCellReferencesCollection];
        }
      }

      defaultDataLabel2 = [v38 defaultDataLabel];
      v50 = defaultDataLabel2;
      if (((defaultDataLabel2 != 0) & v17) == 1)
      {
        [defaultDataLabel2 setShowLeaderLines:1];
      }
    }
  }
}

- (void)mapSeriesValues:(id)values to:(id)to forIndex:(unint64_t)index byRow:(BOOL)row forChart:(id)chart
{
  rowCopy = row;
  valuesCopy = values;
  toCopy = to;
  chartCopy = chart;
  valueData = [valuesCopy valueData];
  dataValuePropertiesCollection = [valuesCopy dataValuePropertiesCollection];
  formula = [valueData formula];
  references = [formula references];

  v12 = [toCopy count];
  if (v12)
  {
    for (i = 0; v12 != i; ++i)
    {
      v14 = [toCopy objectAtIndex:i];
      v15 = [references referenceToCellWithIndex:i byRow:rowCopy];
      if (v15)
      {
        valueData2 = [v14 valueData];
        formula2 = [valueData2 formula];
        if (!formula2)
        {
          formula2 = objc_alloc_init(CHDFormula);
          WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
          [(CHDFormula *)formula2 setWorkbook:WeakRetained];

          [valueData2 setFormula:formula2 chart:chartCopy];
          [v14 setValueData:0];
          [v14 setValueData:valueData2];
        }

        references2 = [(CHDFormula *)formula2 references];
        if (!references2)
        {
          references2 = +[EDReferenceCollection noCoalesceCollection];
          [(CHDFormula *)formula2 setReferences:references2];
        }

        [references2 addObject:v15];
      }

      dataValues = [valueData dataValues];
      v21 = [dataValues dataValueWithIndex:i];

      if (v21)
      {
        valueData3 = [v14 valueData];
        dataValues2 = [valueData3 dataValues];
        [(CHPChangeDirection *)self addDataValue:v21 to:dataValues2 withIndex:index];
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      hasVisibleSeriesNames = [chartCopy hasVisibleSeriesNames];
      v26 = [dataValuePropertiesCollection objectWithKey:i];
      v27 = v26;
      if (v26)
      {
        dataLabel = [v26 shallowCopyWithIndex:index];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([dataLabel isExplosionSet] & 1) == 0)
        {
          [dataLabel setExplosion:{objc_msgSend(valuesCopy, "explosion")}];
        }

        dataValuePropertiesCollection2 = [v14 dataValuePropertiesCollection];
        [dataValuePropertiesCollection2 addObject:dataLabel];
      }

      else
      {
        if (((isKindOfClass | hasVisibleSeriesNames) & 1) == 0)
        {
          goto LABEL_21;
        }

        graphicProperties = [valuesCopy graphicProperties];

        if (!graphicProperties)
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
        graphicProperties2 = [valuesCopy graphicProperties];
        [v27 setGraphicProperties:graphicProperties2];

        [v27 setDataValueIndex:index];
        dataLabel = [v27 dataLabel];
        if (!dataLabel)
        {
          defaultDataLabel = [valuesCopy defaultDataLabel];
          [v27 setDataLabel:defaultDataLabel];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 setExplosion:{objc_msgSend(valuesCopy, "explosion")}];
        }

        dataValuePropertiesCollection2 = [v14 dataValuePropertiesCollection];
        [dataValuePropertiesCollection2 addObject:v27];
      }

LABEL_21:
    }
  }
}

- (id)getGraphicPropertiesForSeriesWithIndex:(unint64_t)index fromCollection:(id)collection isVaryColors:(BOOL)colors forChart:(id)chart
{
  colorsCopy = colors;
  collectionCopy = collection;
  chartCopy = chart;
  firstNonEmptySeries = [collectionCopy firstNonEmptySeries];
  dataValuePropertiesCollection = [firstNonEmptySeries dataValuePropertiesCollection];
  v13 = [dataValuePropertiesCollection objectWithKey:index];
  graphicProperties = [v13 graphicProperties];

  if (!graphicProperties)
  {
    if (!colorsCopy)
    {
      goto LABEL_17;
    }

    v16 = [collectionCopy objectWithKey:index];
    graphicProperties = [v16 graphicProperties];

    if (!graphicProperties)
    {
      if ([collectionCopy count] > index)
      {
        goto LABEL_17;
      }

      graphicProperties = objc_alloc_init(OADGraphicProperties);
      v17 = [OADDrawingTheme alloc];
      workbook = [chartCopy workbook];
      theme = [workbook theme];
      v20 = [(OADDrawingTheme *)v17 initWithTheme:theme colorMap:0 colorPalette:0];

      v21 = [CHAutoStyling autoStylingWithChart:chartCopy drawingTheme:v20];

      [v21 resolveGraphicPropertiesOfSeries:graphicProperties forSeriesIndex:index];
      graphicProperties2 = [firstNonEmptySeries graphicProperties];

      if (graphicProperties2)
      {
        graphicProperties3 = [firstNonEmptySeries graphicProperties];
        if ([graphicProperties3 hasStroke])
        {
          stroke = [graphicProperties3 stroke];
          v25 = stroke;
          if (!stroke || ([stroke fill], (v26 = objc_claimAutoreleasedReturnValue()) == 0) || (v31 = v26, objc_msgSend(v25, "fill"), v27 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v27, v31, (isKindOfClass & 1) != 0))
          {
            v28 = +[OADStroke nullStroke];
            [(OADGraphicProperties *)graphicProperties setStroke:v28];
          }
        }
      }

      if (!graphicProperties)
      {
LABEL_17:
        graphicProperties = [firstNonEmptySeries graphicProperties];
        if (!graphicProperties)
        {
          v29 = [collectionCopy objectWithKey:index];
          graphicProperties = [v29 graphicProperties];
        }
      }
    }
  }

  return graphicProperties;
}

- (void)addDataValue:(id)value to:(id)to withIndex:(unint64_t)index
{
  valueCopy = value;
  toCopy = to;
  if (valueCopy && toCopy)
  {
    [valueCopy setIndex:index];
    [toCopy addDataValue:valueCopy];
  }
}

- (void)cleanUpOldSeriesCollection:(id)collection
{
  collectionCopy = collection;
  v3 = [collectionCopy count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [collectionCopy objectAtIndex:i];
      v6 = v5;
      if (v5)
      {
        [v5 clearBackPointers];
      }
    }
  }
}

@end