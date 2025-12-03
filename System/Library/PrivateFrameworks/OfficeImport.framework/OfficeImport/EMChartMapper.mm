@interface EMChartMapper
+ (CGColor)newColorWithCalibratedRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (EMChartMapper)initWithChart:(id)chart parent:(id)parent;
- (id)copyPdfWithState:(id)state withSize:(CGSize)size;
- (id)dateFromXlDateTimeNumber:(double)number;
- (void)_addCategoryAxis:(id)axis series:(id)series state:(id)state toDescription:(id)description;
- (void)_addGraphicProperties:(id)properties toDescription:(id)description withState:(id)state;
- (void)_addStandardSeries:(id)series toDescription:(id)description withState:(id)state;
- (void)_addUnitAxis:(id)axis series:(id)series state:(id)state toDescription:(id)description;
- (void)addBackgroundToDescription:(id)description withState:(id)state;
- (void)addLegendToDescription:(id)description chartSize:(CGSize)size withState:(id)state;
- (void)addTitleToDescription:(id)description withState:(id)state;
@end

@implementation EMChartMapper

- (id)dateFromXlDateTimeNumber:(double)number
{
  workbook = [(CHDChart *)self->mChart workbook];
  v5 = [ECUtils dateFromXlDateTimeNumber:workbook edWorkbook:number];

  return v5;
}

- (EMChartMapper)initWithChart:(id)chart parent:(id)parent
{
  chartCopy = chart;
  v8 = [(CMMapper *)self initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mChart, chart);
  }

  return v9;
}

- (id)copyPdfWithState:(id)state withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  objc_storeStrong(&self->mState, state);
  resources = [stateCopy resources];
  mResources = self->mResources;
  self->mResources = resources;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mainType = [(CHDChart *)self->mChart mainType];
  mMainType = self->mMainType;
  self->mMainType = mainType;

  v30 = 72;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [(CHDChartType *)self->mMainType isColumn]^ 1;
  }

  else
  {
    v12 = 0;
  }

  self->mIsHorizontal = v12;
  [*(&self->super.super.isa + v30) axes];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v13 = v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        if (([v17 axisPosition] || self->mIsHorizontal) && (objc_msgSend(v17, "axisPosition") != 1 || !self->mIsHorizontal))
        {
          if ([v17 isSecondary])
          {
            v18 = 104;
          }

          else
          {
            v18 = 96;
          }
        }

        else
        {
          v18 = 88;
        }

        if (!*(&self->super.super.isa + v18))
        {
          objc_storeStrong((&self->super.super.isa + v18), v17);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->mIsStacked = [*(&self->super.super.isa + v31) grouping] == 2;
    self->mIsPercentStacked = [*(&self->super.super.isa + v31) grouping] == 1;
  }

  else
  {
    self->mIsStacked = 0;
    self->mIsPercentStacked = 0;
  }

  [(EMChartMapper *)self addTitleToDescription:dictionary withState:stateCopy];
  [(EMChartMapper *)self addBackgroundToDescription:dictionary withState:stateCopy];
  [(EMChartMapper *)self addLegendToDescription:dictionary chartSize:stateCopy withState:width, height];
  seriesCollection = [*(&self->super.super.isa + v31) seriesCollection];
  if ([seriesCollection count])
  {
    v20 = [seriesCollection objectAtIndex:0];
    mMainSeries = self->mMainSeries;
    self->mMainSeries = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(EMChartMapper *)self _addCategoryAxis:self->mBaseAxis series:self->mMainSeries state:stateCopy toDescription:dictionary];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(EMChartMapper *)self _addUnitAxis:self->mBaseAxis series:self->mMainSeries state:stateCopy toDescription:dictionary];
    }
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [dictionary setValue:v22 forKey:*MEMORY[0x277D43E10]];

  v23 = [seriesCollection count];
  if (v23 >= 1)
  {
    for (j = 0; j != v23; ++j)
    {
      v25 = [seriesCollection objectAtIndex:j];
      [(EMChartMapper *)self addSeries:v25 toDescription:dictionary withState:stateCopy];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    mPrimaryAxis = self->mPrimaryAxis;
    if (!mPrimaryAxis)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  mPrimaryAxis = self->mPrimaryAxis;
  if (mPrimaryAxis)
  {
LABEL_40:
    [(EMChartMapper *)self _addUnitAxis:mPrimaryAxis series:self->mMainSeries state:stateCopy toDescription:dictionary];
  }

LABEL_41:
  mSecondaryAxis = self->mSecondaryAxis;
  if (mSecondaryAxis)
  {
    [(EMChartMapper *)self _addUnitAxis:mSecondaryAxis series:self->mMainSeries state:stateCopy toDescription:dictionary];
  }

LABEL_43:
  PDFDataWithFormatterCallback = OIChartingCreatePDFDataWithFormatterCallback();

  return PDFDataWithFormatterCallback;
}

- (void)addTitleToDescription:(id)description withState:(id)state
{
  descriptionCopy = description;
  title = [(CHDChart *)self->mChart title];
  v6 = title;
  if (title)
  {
    lastCachedName = [title lastCachedName];
    string = [lastCachedName string];

    if (string)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setValue:string forKey:*MEMORY[0x277D43D20]];
      lastCachedName2 = [v6 lastCachedName];
      runs = [lastCachedName2 runs];

      if ([runs count])
      {
        v12 = [runs objectAtIndex:0];
        font = [v12 font];
        color = [font color];
        v15 = color;
        if (color)
        {
          cGColor = [color CGColor];
          [dictionary setValue:cGColor forKey:*MEMORY[0x277D43E00]];
        }
      }

      graphicProperties = [v6 graphicProperties];
      if ([graphicProperties hasFill] && (objc_msgSend(graphicProperties, "fill"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        fill = [graphicProperties fill];
        v24 = [CMColorProperty copyCGColorFromOADFill:fill state:self->mState];
      }

      else
      {
        LODWORD(v18) = 1.0;
        LODWORD(v19) = 1.0;
        LODWORD(v20) = 1.0;
        LODWORD(v21) = 1.0;
        v24 = [EMChartMapper newColorWithCalibratedRed:v18 green:v19 blue:v20 alpha:v21];
      }

      [dictionary setValue:v24 forKey:*MEMORY[0x277D43D10]];
      CGColorRelease(v24);
      [descriptionCopy setValue:dictionary forKey:*MEMORY[0x277D43E08]];
    }
  }
}

- (void)addBackgroundToDescription:(id)description withState:(id)state
{
  descriptionCopy = description;
  stateCopy = state;
  plotArea = [(CHDChart *)self->mChart plotArea];
  graphicProperties = [plotArea graphicProperties];
  if (graphicProperties)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([stateCopy isOffice12])
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    if ([graphicProperties hasFill] && (objc_msgSend(graphicProperties, "fill"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      fill = [graphicProperties fill];
      v17 = [CMColorProperty copyCGColorFromOADFill:fill state:self->mState];
    }

    else
    {
      LODWORD(v11) = 1.0;
      LODWORD(v12) = 1.0;
      LODWORD(v13) = 1.0;
      *&v14 = v10;
      v17 = [EMChartMapper newColorWithCalibratedRed:v11 green:v12 blue:v13 alpha:v14];
    }

    [dictionary setValue:v17 forKey:*MEMORY[0x277D43D10]];
    CGColorRelease(v17);
    *&v18 = v10;
    v19 = [EMChartMapper newColorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:v18];
    [dictionary setValue:v19 forKey:*MEMORY[0x277D43DF0]];
    CGColorRelease(v19);
    [descriptionCopy setValue:dictionary forKey:*MEMORY[0x277D43D60]];
  }

  chartAreaGraphicProperties = [(CHDChart *)self->mChart chartAreaGraphicProperties];
  if (chartAreaGraphicProperties)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    if ([chartAreaGraphicProperties hasFill] && (objc_msgSend(chartAreaGraphicProperties, "fill"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      fill2 = [chartAreaGraphicProperties fill];
      v24 = [CMColorProperty copyCGColorFromOADFill:fill2 state:self->mState];
    }

    else
    {
      isOffice12 = [stateCopy isOffice12];
      LODWORD(v29) = 0.5;
      if (isOffice12)
      {
        *&v29 = 1.0;
      }

      LODWORD(v28) = 1.0;
      LODWORD(v26) = LODWORD(v29);
      LODWORD(v27) = LODWORD(v29);
      v24 = [EMChartMapper newColorWithCalibratedRed:v29 green:v26 blue:v27 alpha:v28];
    }

    [dictionary2 setValue:v24 forKey:*MEMORY[0x277D43D10]];
    CGColorRelease(v24);
    LODWORD(v30) = 1064514355;
    LODWORD(v31) = 1.0;
    LODWORD(v32) = 1064514355;
    LODWORD(v33) = 1064514355;
    v34 = [EMChartMapper newColorWithCalibratedRed:v30 green:v32 blue:v33 alpha:v31];
    [dictionary2 setValue:v34 forKey:*MEMORY[0x277D43DF0]];
    CGColorRelease(v34);
    [descriptionCopy setValue:dictionary2 forKey:*MEMORY[0x277D43CF8]];
  }
}

- (void)addLegendToDescription:(id)description chartSize:(CGSize)size withState:(id)state
{
  descriptionCopy = description;
  legend = [(CHDChart *)self->mChart legend];
  v7 = legend;
  if (legend)
  {
    v8 = [legend legendPosition] - 1;
    if (v8 >= 4)
    {
      v9 = 3;
    }

    else
    {
      v9 = dword_25D710C00[v8];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [dictionary setValue:v11 forKey:*MEMORY[0x277D43D30]];

    font = [v7 font];
    color = [font color];
    v14 = color;
    if (color)
    {
      cGColor = [color CGColor];
      [dictionary setValue:cGColor forKey:*MEMORY[0x277D43E00]];
    }

    else
    {
      v16 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      cGColor2 = [v16 CGColor];
      [dictionary setValue:cGColor2 forKey:*MEMORY[0x277D43E00]];
    }

    [descriptionCopy setValue:dictionary forKey:*MEMORY[0x277D43D28]];
  }
}

- (void)_addCategoryAxis:(id)axis series:(id)series state:(id)state toDescription:(id)description
{
  axisCopy = axis;
  seriesCopy = series;
  stateCopy = state;
  descriptionCopy = description;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  self->mHasDateCategory = objc_opt_isKindOfClass() & 1;
  contentFormat = [axisCopy contentFormat];
  formatString = [contentFormat formatString];
  string = [formatString string];

  v47 = string;
  if (!string || (v12 = [(__CFString *)string isEqualToString:@"General"], v13 = string, (v12 & 1) != 0))
  {
    if (!self->mHasDateCategory)
    {
      goto LABEL_8;
    }

    v13 = @"GenericDate";
  }

  v51 = [EMNumberFormatter formatterForFormat:v13];
  if (!self->mHasDateCategory)
  {
    goto LABEL_9;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [dictionary setValue:v14 forKey:*MEMORY[0x277D43CD0]];

  if (v51)
  {
    [dictionary setValue:? forKey:?];
    goto LABEL_9;
  }

LABEL_8:
  v51 = 0;
LABEL_9:
  categoryData = [seriesCopy categoryData];
  dataValues = [categoryData dataValues];
  v15 = objc_opt_new();
  if ([dataValues count])
  {
    v16 = [dataValues count];
    if (v16 >= 1)
    {
      for (i = 0; v16 != i; ++i)
      {
        v18 = [dataValues dataValueAtIndex:i];
        EDValue::EDValue(&v58, [v18 value]);

        SInt32 = CsLeReadSInt32(&v58);
        if (self->mHasDateCategory)
        {
          workbook = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v58)];
          v21 = MEMORY[0x277CCABB0];
          [workbook timeIntervalSinceReferenceDate];
          v22 = [v21 numberWithDouble:?];
          [v15 addObject:v22];
        }

        else
        {
          if (SInt32 == 3)
          {
            workbook = EDValue::nsStringValue(&v58);
            if (workbook)
            {
              [v15 addObject:workbook];
            }

            goto LABEL_15;
          }

          if (SInt32 != 2)
          {
            goto LABEL_16;
          }

          if (v51)
          {
            v23 = EDValue::numberValue(&v58);
            workbook = [(CHDChart *)self->mChart workbook];
            [v51 formatValue:workbook inWorkbook:v23];
          }

          else
          {
            workbook = [MEMORY[0x277CCABB0] numberWithDouble:EDValue::numberValue(&v58)];
            [workbook description];
          }
          v22 = ;
          [v15 addObject:v22];
        }

LABEL_15:
LABEL_16:
        EDValue::~EDValue(&v58);
      }
    }
  }

  else
  {
    formula = [categoryData formula];
    references = [formula references];
    v53 = [references count];
    if (v53 >= 1)
    {
      v25 = 0;
      v52 = references;
      do
      {
        v26 = [references objectAtIndex:v25];
        document = [stateCopy document];
        v54 = [document sheetAtIndex:{objc_msgSend(v26, "sheetIndex")}];
        rowBlocks = [v54 rowBlocks];
        for (j = [v26 firstColumn]; j <= objc_msgSend(v26, "lastColumn"); j = (j + 1))
        {
          for (k = [v26 firstRow]; k <= objc_msgSend(v26, "lastRow"); k = (k + 1))
          {
            v30 = [rowBlocks cellWithRowNumber:k columnNumber:j];
            resources = [stateCopy resources];
            v32 = stringValueForEDCell(v30, resources);

            string2 = [v32 string];
            v34 = string2;
            if (string2)
            {
              v35 = string2;
            }

            else
            {
              v35 = &stru_286EE1130;
            }

            [v15 addObject:v35];
          }
        }

        ++v25;
        references = v52;
      }

      while (v25 != v53);
    }
  }

  [dictionary setValue:v15 forKey:*MEMORY[0x277D43CB8]];
  font = [axisCopy font];
  color = [font color];
  v38 = color;
  if (color)
  {
    cGColor = [color CGColor];
    [dictionary setValue:cGColor forKey:*MEMORY[0x277D43E00]];
  }

  v40 = *MEMORY[0x277D43CB0];
  dictionary2 = [descriptionCopy objectForKey:*MEMORY[0x277D43CB0]];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [descriptionCopy setValue:dictionary2 forKey:v40];
  }

  if (self->mIsHorizontal)
  {
    v42 = MEMORY[0x277D43CE0];
  }

  else
  {
    v42 = MEMORY[0x277D43CD8];
  }

  [dictionary2 setValue:dictionary forKey:*v42];
}

- (void)_addUnitAxis:(id)axis series:(id)series state:(id)state toDescription:(id)description
{
  axisCopy = axis;
  descriptionCopy = description;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277D43CB0];
  dictionary2 = [descriptionCopy objectForKey:*MEMORY[0x277D43CB0]];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [descriptionCopy setValue:dictionary2 forKey:v10];
  }

  if (self->mIsPercentStacked)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [dictionary setValue:v12 forKey:*MEMORY[0x277D43CD0]];
  }

  else
  {
    if (!self->mHasPrimaryDateAxis)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [dictionary setValue:v12 forKey:*MEMORY[0x277D43CD0]];
  }

LABEL_8:
  majorGridLinesGraphicProperties = [axisCopy majorGridLinesGraphicProperties];
  stroke = [majorGridLinesGraphicProperties stroke];
  fill = [stroke fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setValue:v17 forKey:*MEMORY[0x277D43CA8]];
  }

  if (([axisCopy isAutoMinimumValue] & 1) == 0)
  {
    v18 = MEMORY[0x277CCABB0];
    [axisCopy scalingMinimum];
    *&v19 = v19;
    v20 = [v18 numberWithFloat:v19];
    [dictionary setValue:v20 forKey:*MEMORY[0x277D43CC8]];
  }

  if (([axisCopy isAutoMaximumValue] & 1) == 0)
  {
    v21 = MEMORY[0x277CCABB0];
    [axisCopy scalingMaximum];
    *&v22 = v22;
    v23 = [v21 numberWithFloat:v22];
    [dictionary setValue:v23 forKey:*MEMORY[0x277D43CC0]];
  }

  font = [axisCopy font];
  color = [font color];
  v26 = color;
  if (color)
  {
    cGColor = [color CGColor];
    [dictionary setValue:cGColor forKey:*MEMORY[0x277D43E00]];
  }

  axisPosition = [axisCopy axisPosition];
  if (axisPosition >= 4)
  {
    v29 = MEMORY[0x277D43CE0];
  }

  else
  {
    v29 = qword_2799CE108[axisPosition];
  }

  [dictionary2 setValue:dictionary forKey:*v29];
}

- (void)_addGraphicProperties:(id)properties toDescription:(id)description withState:(id)state
{
  propertiesCopy = properties;
  descriptionCopy = description;
  stateCopy = state;
  if ([propertiesCopy hasStroke])
  {
    stroke = [propertiesCopy stroke];
    v11 = stroke;
    if (stroke)
    {
      fill = [stroke fill];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fill2 = [propertiesCopy fill];

        fill = fill2;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        cGColor = [v14 CGColor];
        v16 = cGColor;
        if (cGColor)
        {
          CGColorRetain(cGColor);
        }
      }

      else
      {
        v16 = [CMColorProperty copyCGColorFromOADFill:fill state:stateCopy];
      }

      [descriptionCopy setValue:v16 forKey:*MEMORY[0x277D43DF0]];
      CGColorRelease(v16);
      v17 = MEMORY[0x277CCABB0];
      [v11 width];
      v18 = [v17 numberWithFloat:?];
      [descriptionCopy setValue:v18 forKey:*MEMORY[0x277D43DF8]];
    }
  }

  if ([propertiesCopy hasFill])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        fill3 = [propertiesCopy fill];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          parent = [(CMMapper *)self parent];
          v21 = [CMShapeRenderer copyImageFromOADImageFill:fill3 withMapper:parent];

          if (v21)
          {
            [descriptionCopy setValue:v21 forKey:*MEMORY[0x277D43D18]];
            CGImageRelease(v21);
          }
        }

        else if (fill3)
        {
          v22 = [CMColorProperty copyCGColorFromOADFill:fill3 state:stateCopy];
          [descriptionCopy setValue:v22 forKey:*MEMORY[0x277D43D10]];
          CGColorRelease(v22);
        }
      }
    }
  }
}

- (void)_addStandardSeries:(id)series toDescription:(id)description withState:(id)state
{
  seriesCopy = series;
  descriptionCopy = description;
  stateCopy = state;
  v115 = seriesCopy;
  isDateTimeFormattingFlag = [seriesCopy isDateTimeFormattingFlag];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277D43D98];
  v106 = descriptionCopy;
  array = [descriptionCopy valueForKey:*MEMORY[0x277D43D98]];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [descriptionCopy setValue:array forKey:v10];
  }

  [array addObject:dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D43D68];
LABEL_5:
    [dictionary setValue:*v11 forKey:*MEMORY[0x277D43DC8]];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dictionary setValue:*MEMORY[0x277D43CF0] forKey:*MEMORY[0x277D43DC8]];
    v12 = 0;
    v13 = 1;
    if (!isDateTimeFormattingFlag)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    chartType = [seriesCopy chartType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = MEMORY[0x277D43C88];
    }

    else
    {
      chartType2 = [v115 chartType];
      isDoughnutType = [chartType2 isDoughnutType];

      v22 = MEMORY[0x277D43D58];
      if (isDoughnutType)
      {
        v22 = MEMORY[0x277D43D08];
      }
    }

    [dictionary setValue:*v22 forKey:*MEMORY[0x277D43DC8]];
    dataValuePropertiesCollection = [v115 dataValuePropertiesCollection];
    if ([dataValuePropertiesCollection count])
    {
      v86 = [dataValuePropertiesCollection objectAtIndex:0];
      if (objc_opt_respondsToSelector())
      {
        v87 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v86, "explosion") / 2)}];
        [dictionary setValue:v87 forKey:*MEMORY[0x277D43DB8]];
      }
    }

LABEL_6:
    v12 = 0;
    v13 = 0;
    if (!isDateTimeFormattingFlag)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (self->mIsStacked)
      {
        v11 = MEMORY[0x277D43DE8];
        goto LABEL_5;
      }

      mIsPercentStacked = self->mIsPercentStacked;
      v103 = MEMORY[0x277D43D38];
      v104 = MEMORY[0x277D43D50];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->mIsHorizontal)
        {
          if (self->mIsStacked)
          {
            v11 = MEMORY[0x277D43C90];
            goto LABEL_5;
          }

          mIsPercentStacked = self->mIsPercentStacked;
          v103 = MEMORY[0x277D43C68];
          v104 = MEMORY[0x277D43C78];
        }

        else
        {
          if (self->mIsStacked)
          {
            v11 = MEMORY[0x277D43C98];
            goto LABEL_5;
          }

          mIsPercentStacked = self->mIsPercentStacked;
          v103 = MEMORY[0x277D43C70];
          v104 = MEMORY[0x277D43C80];
        }
      }

      else if (self->mIsHorizontal)
      {
        if (self->mIsStacked)
        {
          v11 = MEMORY[0x277D43DD8];
          goto LABEL_5;
        }

        mIsPercentStacked = self->mIsPercentStacked;
        v103 = MEMORY[0x277D43CE8];
        v104 = MEMORY[0x277D43D40];
      }

      else
      {
        if (self->mIsStacked)
        {
          v11 = MEMORY[0x277D43DE0];
          goto LABEL_5;
        }

        mIsPercentStacked = self->mIsPercentStacked;
        v103 = MEMORY[0x277D43D00];
        v104 = MEMORY[0x277D43D48];
      }
    }

    if (mIsPercentStacked)
    {
      v11 = v104;
    }

    else
    {
      v11 = v103;
    }

    goto LABEL_5;
  }

  [dictionary setValue:*MEMORY[0x277D43E18] forKey:*MEMORY[0x277D43DC8]];
  v13 = 0;
  v12 = 1;
  if (!isDateTimeFormattingFlag)
  {
    goto LABEL_18;
  }

LABEL_10:
  self->mHasPrimaryDateAxis = 1;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [dictionary setValue:v14 forKey:*MEMORY[0x277D43CD0]];

  valueData = [v115 valueData];
  contentFormat = [valueData contentFormat];

  formatString = [contentFormat formatString];
  string = [formatString string];

  if (string && ([string isEqualToString:@"General"] & 1) == 0)
  {
    v19 = [EMNumberFormatter formatterForFormat:string];
    [dictionary setValue:v19 forKey:*MEMORY[0x277D43CA0]];
  }

  else
  {
    v19 = [EMNumberFormatter formatterForFormat:@"GenericDate"];
    [dictionary setValue:v19 forKey:*MEMORY[0x277D43CA0]];
  }

LABEL_18:
  categoryData = [v115 categoryData];
  valueData2 = [v115 valueData];
  if (((v12 | v13) & 1) != 0 || self->mHasDateCategory)
  {
    dataValues = [categoryData dataValues];
    array2 = [MEMORY[0x277CBEB18] array];
    if ([dataValues count])
    {
      v23 = [dataValues count];
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          v25 = [dataValues dataValueAtIndex:i];
          EDValue::EDValue(&v131, [v25 value]);

          if (self->mHasDateCategory)
          {
            v26 = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v131)];
            v27 = MEMORY[0x277CCABB0];
            [v26 timeIntervalSinceReferenceDate];
            v28 = [v27 numberWithDouble:?];
            [array2 addObject:v28];
          }

          else
          {
            v29 = EDValue::numberValue(&v131);
            if (v29 > 1.79769313e308)
            {
              v29 = 1.79769313e308;
            }

            if (v29 < -1.79769313e308)
            {
              v29 = -1.79769313e308;
            }

            v26 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
            [array2 addObject:v26];
          }

          EDValue::~EDValue(&v131);
        }
      }

      array3 = array2;
    }

    else
    {
      array3 = [MEMORY[0x277CBEB18] array];

      formula = [categoryData formula];
      references = [formula references];
      v116 = [references count];
      if (v116)
      {
        v32 = 0;
        v112 = references;
        do
        {
          v118 = v32;
          v33 = [references objectAtIndex:?];
          document = [stateCopy document];
          v121 = [document sheetAtIndex:{objc_msgSend(v33, "sheetIndex")}];
          rowBlocks = [v121 rowBlocks];
          for (j = [v33 firstColumn]; j <= objc_msgSend(v33, "lastColumn"); j = (j + 1))
          {
            for (k = [v33 firstRow]; k <= objc_msgSend(v33, "lastRow"); k = (k + 1))
            {
              v37 = [rowBlocks cellWithRowNumber:k columnNumber:j];
              v38 = v37;
              if (v37 && typeForEDCell(v37) == 2)
              {
                v39 = numberValueForEDCell(v38);
                if (v39 > 1.79769313e308)
                {
                  v39 = 1.79769313e308;
                }

                if (v39 < -1.79769313e308)
                {
                  v39 = -1.79769313e308;
                }

                v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
                [array3 addObject:v40];
              }
            }
          }

          v32 = v118 + 1;
          references = v112;
        }

        while (v118 + 1 != v116);
      }
    }

    [dictionary setValue:array3 forKey:*MEMORY[0x277D43D70]];
  }

  else
  {
    array3 = 0;
    dataValues = 0;
  }

  v41 = dataValues;
  dataValues2 = [valueData2 dataValues];

  array4 = [MEMORY[0x277CBEB18] array];

  if (![dataValues2 count])
  {
    formula2 = [valueData2 formula];
    references2 = [formula2 references];
    v113 = [references2 count];
    if (!v113)
    {
      goto LABEL_82;
    }

    v50 = 0;
    v111 = references2;
    while (1)
    {
      v117 = v50;
      v51 = [references2 objectAtIndex:?];
      document2 = [stateCopy document];
      v119 = [document2 sheetAtIndex:{objc_msgSend(v51, "sheetIndex")}];
      rowBlocks2 = [v119 rowBlocks];
      for (m = [v51 firstColumn]; m <= objc_msgSend(v51, "lastColumn"); m = (m + 1))
      {
        for (n = [v51 firstRow]; n <= objc_msgSend(v51, "lastRow"); n = (n + 1))
        {
          v55 = [rowBlocks2 cellWithRowNumber:n columnNumber:m];
          v56 = v55;
          if (isDateTimeFormattingFlag)
          {
            v57 = [(EMChartMapper *)self dateFromXlDateTimeNumber:numberValueForEDCell(v55)];
            v58 = MEMORY[0x277CCABB0];
            [v57 timeIntervalSinceReferenceDate];
            v59 = [v58 numberWithDouble:?];
            [array4 addObject:v59];

LABEL_77:
            continue;
          }

          if (typeForEDCell(v55))
          {
            v60 = numberValueForEDCell(v56);
            if (v60 > 1.79769313e308)
            {
              v60 = 1.79769313e308;
            }

            if (v60 < -1.79769313e308)
            {
              v60 = -1.79769313e308;
            }

            v57 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
            [array4 addObject:v57];
            goto LABEL_77;
          }

          [array4 addObject:&unk_286F6DD88];
        }
      }

      v50 = v117 + 1;
      references2 = v111;
      if (v117 + 1 == v113)
      {
LABEL_82:

        goto LABEL_83;
      }
    }
  }

  v42 = [dataValues2 count];
  if (v42)
  {
    for (ii = 0; ii != v42; ++ii)
    {
      v44 = [dataValues2 dataValueAtIndex:ii];
      EDValue::EDValue(&v131, [v44 value]);

      if (isDateTimeFormattingFlag)
      {
        v45 = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v131)];
        v46 = MEMORY[0x277CCABB0];
        [v45 timeIntervalSinceReferenceDate];
        v47 = [v46 numberWithDouble:?];
        [array4 addObject:v47];
      }

      else
      {
        v48 = EDValue::numberValue(&v131);
        if (v48 > 1.79769313e308)
        {
          v48 = 1.79769313e308;
        }

        if (v48 < -1.79769313e308)
        {
          v48 = -1.79769313e308;
        }

        v45 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
        [array4 addObject:v45];
      }

      EDValue::~EDValue(&v131);
    }
  }

LABEL_83:
  [dictionary setValue:array4 forKey:*MEMORY[0x277D43DD0]];
  lastCachedName = [v115 lastCachedName];
  v62 = lastCachedName;
  if (lastCachedName && CsLeReadSInt32([lastCachedName value]) == 3)
  {
    v63 = EDValue::EDValue(&v131, [v62 value]);
    v64 = EDValue::nsStringValue(v63);
    [dictionary setValue:v64 forKey:*MEMORY[0x277D43D20]];

    EDValue::~EDValue(&v131);
  }

  else
  {
    name = [v115 name];
    references3 = [name references];
    if ([references3 count])
    {
      v67 = [references3 objectAtIndex:0];
      document3 = [stateCopy document];
      v120 = [document3 sheetAtIndex:{objc_msgSend(v67, "sheetIndex")}];
      rowBlocks3 = [v120 rowBlocks];
      firstColumn = [v67 firstColumn];
LABEL_88:
      if (firstColumn <= [v67 lastColumn])
      {
        for (jj = [v67 firstRow]; ; jj = (jj + 1))
        {
          if (jj > [v67 lastRow])
          {
            firstColumn = (firstColumn + 1);
            goto LABEL_88;
          }

          v71 = [rowBlocks3 cellWithRowNumber:jj columnNumber:firstColumn];
          if (typeForEDCell(v71) == 3)
          {
            resources = [stateCopy resources];
            v73 = stringValueForEDCell(v71, resources);

            string2 = [v73 string];
            if ([string2 length])
            {
              [dictionary setValue:string2 forKey:*MEMORY[0x277D43D20]];

              break;
            }
          }
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    marker = [v115 marker];
    if ([marker size] && objc_msgSend(marker, "style") >= 1)
    {
      v76 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(marker, "size")}];
      [dictionary setValue:v76 forKey:*MEMORY[0x277D43DB0]];

      v77 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [dictionary setValue:v77 forKey:*MEMORY[0x277D43DA8]];

      graphicProperties = [marker graphicProperties];
      fill = [graphicProperties fill];

      if (fill)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v80 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          cGColor = [v80 CGColor];
          v82 = cGColor;
          if (cGColor)
          {
            CGColorRetain(cGColor);
          }
        }

        else
        {
          v82 = [CMColorProperty copyCGColorFromOADFill:fill state:stateCopy];
        }

        [dictionary setValue:v82 forKey:*MEMORY[0x277D43DA0]];
        CGColorRelease(v82);
      }
    }
  }

  defaultDataLabel = [v115 defaultDataLabel];
  if ([defaultDataLabel isShowValue])
  {
    v89 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setValue:v89 forKey:*MEMORY[0x277D43DC0]];
  }

  errorBarYAxis = [v115 errorBarYAxis];
  if (errorBarYAxis)
  {
    v91 = objc_opt_new();
    v92 = MEMORY[0x277CCABB0];
    *&v93 = [errorBarYAxis valueType];
    v94 = [v92 numberWithFloat:v93];
    [v91 setValue:v94 forKey:*MEMORY[0x277D43D90]];

    v95 = MEMORY[0x277CCABB0];
    *&v96 = [errorBarYAxis type];
    v97 = [v95 numberWithFloat:v96];
    [v91 setValue:v97 forKey:*MEMORY[0x277D43D80]];

    v98 = MEMORY[0x277CCABB0];
    [errorBarYAxis value];
    *&v99 = v99;
    v100 = [v98 numberWithFloat:v99];
    [v91 setValue:v100 forKey:*MEMORY[0x277D43D88]];

    [dictionary setValue:v91 forKey:*MEMORY[0x277D43D78]];
  }

  graphicProperties2 = [v115 graphicProperties];
  [(EMChartMapper *)self _addGraphicProperties:graphicProperties2 toDescription:dictionary withState:stateCopy];
}

+ (CGColor)newColorWithCalibratedRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
  v11 = CGColorCreate(DeviceRGB, components);
  CFRelease(DeviceRGB);
  return v11;
}

@end