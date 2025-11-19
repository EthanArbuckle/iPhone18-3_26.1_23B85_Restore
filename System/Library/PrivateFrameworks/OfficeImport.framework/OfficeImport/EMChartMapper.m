@interface EMChartMapper
+ (CGColor)newColorWithCalibratedRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (EMChartMapper)initWithChart:(id)a3 parent:(id)a4;
- (id)copyPdfWithState:(id)a3 withSize:(CGSize)a4;
- (id)dateFromXlDateTimeNumber:(double)a3;
- (void)_addCategoryAxis:(id)a3 series:(id)a4 state:(id)a5 toDescription:(id)a6;
- (void)_addGraphicProperties:(id)a3 toDescription:(id)a4 withState:(id)a5;
- (void)_addStandardSeries:(id)a3 toDescription:(id)a4 withState:(id)a5;
- (void)_addUnitAxis:(id)a3 series:(id)a4 state:(id)a5 toDescription:(id)a6;
- (void)addBackgroundToDescription:(id)a3 withState:(id)a4;
- (void)addLegendToDescription:(id)a3 chartSize:(CGSize)a4 withState:(id)a5;
- (void)addTitleToDescription:(id)a3 withState:(id)a4;
@end

@implementation EMChartMapper

- (id)dateFromXlDateTimeNumber:(double)a3
{
  v4 = [(CHDChart *)self->mChart workbook];
  v5 = [ECUtils dateFromXlDateTimeNumber:v4 edWorkbook:a3];

  return v5;
}

- (EMChartMapper)initWithChart:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = [(CMMapper *)self initWithParent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mChart, a3);
  }

  return v9;
}

- (id)copyPdfWithState:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v39 = *MEMORY[0x277D85DE8];
  v32 = a3;
  objc_storeStrong(&self->mState, a3);
  v8 = [v32 resources];
  mResources = self->mResources;
  self->mResources = v8;

  v33 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(CHDChart *)self->mChart mainType];
  mMainType = self->mMainType;
  self->mMainType = v10;

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

  [(EMChartMapper *)self addTitleToDescription:v33 withState:v32];
  [(EMChartMapper *)self addBackgroundToDescription:v33 withState:v32];
  [(EMChartMapper *)self addLegendToDescription:v33 chartSize:v32 withState:width, height];
  v19 = [*(&self->super.super.isa + v31) seriesCollection];
  if ([v19 count])
  {
    v20 = [v19 objectAtIndex:0];
    mMainSeries = self->mMainSeries;
    self->mMainSeries = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(EMChartMapper *)self _addCategoryAxis:self->mBaseAxis series:self->mMainSeries state:v32 toDescription:v33];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(EMChartMapper *)self _addUnitAxis:self->mBaseAxis series:self->mMainSeries state:v32 toDescription:v33];
    }
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v33 setValue:v22 forKey:*MEMORY[0x277D43E10]];

  v23 = [v19 count];
  if (v23 >= 1)
  {
    for (j = 0; j != v23; ++j)
    {
      v25 = [v19 objectAtIndex:j];
      [(EMChartMapper *)self addSeries:v25 toDescription:v33 withState:v32];
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
    [(EMChartMapper *)self _addUnitAxis:mPrimaryAxis series:self->mMainSeries state:v32 toDescription:v33];
  }

LABEL_41:
  mSecondaryAxis = self->mSecondaryAxis;
  if (mSecondaryAxis)
  {
    [(EMChartMapper *)self _addUnitAxis:mSecondaryAxis series:self->mMainSeries state:v32 toDescription:v33];
  }

LABEL_43:
  PDFDataWithFormatterCallback = OIChartingCreatePDFDataWithFormatterCallback();

  return PDFDataWithFormatterCallback;
}

- (void)addTitleToDescription:(id)a3 withState:(id)a4
{
  v25 = a3;
  v5 = [(CHDChart *)self->mChart title];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lastCachedName];
    v8 = [v7 string];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [v9 setValue:v8 forKey:*MEMORY[0x277D43D20]];
      v10 = [v6 lastCachedName];
      v11 = [v10 runs];

      if ([v11 count])
      {
        v12 = [v11 objectAtIndex:0];
        v13 = [v12 font];
        v14 = [v13 color];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 CGColor];
          [v9 setValue:v16 forKey:*MEMORY[0x277D43E00]];
        }
      }

      v17 = [v6 graphicProperties];
      if ([v17 hasFill] && (objc_msgSend(v17, "fill"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        v23 = [v17 fill];
        v24 = [CMColorProperty copyCGColorFromOADFill:v23 state:self->mState];
      }

      else
      {
        LODWORD(v18) = 1.0;
        LODWORD(v19) = 1.0;
        LODWORD(v20) = 1.0;
        LODWORD(v21) = 1.0;
        v24 = [EMChartMapper newColorWithCalibratedRed:v18 green:v19 blue:v20 alpha:v21];
      }

      [v9 setValue:v24 forKey:*MEMORY[0x277D43D10]];
      CGColorRelease(v24);
      [v25 setValue:v9 forKey:*MEMORY[0x277D43E08]];
    }
  }
}

- (void)addBackgroundToDescription:(id)a3 withState:(id)a4
{
  v35 = a3;
  v6 = a4;
  v7 = [(CHDChart *)self->mChart plotArea];
  v8 = [v7 graphicProperties];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    if ([v6 isOffice12])
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    if ([v8 hasFill] && (objc_msgSend(v8, "fill"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [v8 fill];
      v17 = [CMColorProperty copyCGColorFromOADFill:v16 state:self->mState];
    }

    else
    {
      LODWORD(v11) = 1.0;
      LODWORD(v12) = 1.0;
      LODWORD(v13) = 1.0;
      *&v14 = v10;
      v17 = [EMChartMapper newColorWithCalibratedRed:v11 green:v12 blue:v13 alpha:v14];
    }

    [v9 setValue:v17 forKey:*MEMORY[0x277D43D10]];
    CGColorRelease(v17);
    *&v18 = v10;
    v19 = [EMChartMapper newColorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:v18];
    [v9 setValue:v19 forKey:*MEMORY[0x277D43DF0]];
    CGColorRelease(v19);
    [v35 setValue:v9 forKey:*MEMORY[0x277D43D60]];
  }

  v20 = [(CHDChart *)self->mChart chartAreaGraphicProperties];
  if (v20)
  {
    v21 = [MEMORY[0x277CBEB38] dictionary];
    if ([v20 hasFill] && (objc_msgSend(v20, "fill"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      v23 = [v20 fill];
      v24 = [CMColorProperty copyCGColorFromOADFill:v23 state:self->mState];
    }

    else
    {
      v25 = [v6 isOffice12];
      LODWORD(v29) = 0.5;
      if (v25)
      {
        *&v29 = 1.0;
      }

      LODWORD(v28) = 1.0;
      LODWORD(v26) = LODWORD(v29);
      LODWORD(v27) = LODWORD(v29);
      v24 = [EMChartMapper newColorWithCalibratedRed:v29 green:v26 blue:v27 alpha:v28];
    }

    [v21 setValue:v24 forKey:*MEMORY[0x277D43D10]];
    CGColorRelease(v24);
    LODWORD(v30) = 1064514355;
    LODWORD(v31) = 1.0;
    LODWORD(v32) = 1064514355;
    LODWORD(v33) = 1064514355;
    v34 = [EMChartMapper newColorWithCalibratedRed:v30 green:v32 blue:v33 alpha:v31];
    [v21 setValue:v34 forKey:*MEMORY[0x277D43DF0]];
    CGColorRelease(v34);
    [v35 setValue:v21 forKey:*MEMORY[0x277D43CF8]];
  }
}

- (void)addLegendToDescription:(id)a3 chartSize:(CGSize)a4 withState:(id)a5
{
  v18 = a3;
  v6 = [(CHDChart *)self->mChart legend];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 legendPosition] - 1;
    if (v8 >= 4)
    {
      v9 = 3;
    }

    else
    {
      v9 = dword_25D710C00[v8];
    }

    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v10 setValue:v11 forKey:*MEMORY[0x277D43D30]];

    v12 = [v7 font];
    v13 = [v12 color];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 CGColor];
      [v10 setValue:v15 forKey:*MEMORY[0x277D43E00]];
    }

    else
    {
      v16 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
      v17 = [v16 CGColor];
      [v10 setValue:v17 forKey:*MEMORY[0x277D43E00]];
    }

    [v18 setValue:v10 forKey:*MEMORY[0x277D43D28]];
  }
}

- (void)_addCategoryAxis:(id)a3 series:(id)a4 state:(id)a5 toDescription:(id)a6
{
  v49 = a3;
  v46 = a4;
  v9 = a5;
  v48 = a6;
  v50 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  self->mHasDateCategory = objc_opt_isKindOfClass() & 1;
  v44 = [v49 contentFormat];
  v10 = [v44 formatString];
  v11 = [v10 string];

  v47 = v11;
  if (!v11 || (v12 = [(__CFString *)v11 isEqualToString:@"General"], v13 = v11, (v12 & 1) != 0))
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
  [v50 setValue:v14 forKey:*MEMORY[0x277D43CD0]];

  if (v51)
  {
    [v50 setValue:? forKey:?];
    goto LABEL_9;
  }

LABEL_8:
  v51 = 0;
LABEL_9:
  v45 = [v46 categoryData];
  v55 = [v45 dataValues];
  v15 = objc_opt_new();
  if ([v55 count])
  {
    v16 = [v55 count];
    if (v16 >= 1)
    {
      for (i = 0; v16 != i; ++i)
      {
        v18 = [v55 dataValueAtIndex:i];
        EDValue::EDValue(&v58, [v18 value]);

        SInt32 = CsLeReadSInt32(&v58);
        if (self->mHasDateCategory)
        {
          v20 = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v58)];
          v21 = MEMORY[0x277CCABB0];
          [v20 timeIntervalSinceReferenceDate];
          v22 = [v21 numberWithDouble:?];
          [v15 addObject:v22];
        }

        else
        {
          if (SInt32 == 3)
          {
            v20 = EDValue::nsStringValue(&v58);
            if (v20)
            {
              [v15 addObject:v20];
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
            v20 = [(CHDChart *)self->mChart workbook];
            [v51 formatValue:v20 inWorkbook:v23];
          }

          else
          {
            v20 = [MEMORY[0x277CCABB0] numberWithDouble:EDValue::numberValue(&v58)];
            [v20 description];
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
    v43 = [v45 formula];
    v24 = [v43 references];
    v53 = [v24 count];
    if (v53 >= 1)
    {
      v25 = 0;
      v52 = v24;
      do
      {
        v26 = [v24 objectAtIndex:v25];
        v56 = [v9 document];
        v54 = [v56 sheetAtIndex:{objc_msgSend(v26, "sheetIndex")}];
        v27 = [v54 rowBlocks];
        for (j = [v26 firstColumn]; j <= objc_msgSend(v26, "lastColumn"); j = (j + 1))
        {
          for (k = [v26 firstRow]; k <= objc_msgSend(v26, "lastRow"); k = (k + 1))
          {
            v30 = [v27 cellWithRowNumber:k columnNumber:j];
            v31 = [v9 resources];
            v32 = stringValueForEDCell(v30, v31);

            v33 = [v32 string];
            v34 = v33;
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              v35 = &stru_286EE1130;
            }

            [v15 addObject:v35];
          }
        }

        ++v25;
        v24 = v52;
      }

      while (v25 != v53);
    }
  }

  [v50 setValue:v15 forKey:*MEMORY[0x277D43CB8]];
  v36 = [v49 font];
  v37 = [v36 color];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 CGColor];
    [v50 setValue:v39 forKey:*MEMORY[0x277D43E00]];
  }

  v40 = *MEMORY[0x277D43CB0];
  v41 = [v48 objectForKey:*MEMORY[0x277D43CB0]];
  if (!v41)
  {
    v41 = [MEMORY[0x277CBEB38] dictionary];
    [v48 setValue:v41 forKey:v40];
  }

  if (self->mIsHorizontal)
  {
    v42 = MEMORY[0x277D43CE0];
  }

  else
  {
    v42 = MEMORY[0x277D43CD8];
  }

  [v41 setValue:v50 forKey:*v42];
}

- (void)_addUnitAxis:(id)a3 series:(id)a4 state:(id)a5 toDescription:(id)a6
{
  v30 = a3;
  v8 = a6;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277D43CB0];
  v11 = [v8 objectForKey:*MEMORY[0x277D43CB0]];
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setValue:v11 forKey:v10];
  }

  if (self->mIsPercentStacked)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v9 setValue:v12 forKey:*MEMORY[0x277D43CD0]];
  }

  else
  {
    if (!self->mHasPrimaryDateAxis)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v9 setValue:v12 forKey:*MEMORY[0x277D43CD0]];
  }

LABEL_8:
  v13 = [v30 majorGridLinesGraphicProperties];
  v14 = [v13 stroke];
  v15 = [v14 fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v9 setValue:v17 forKey:*MEMORY[0x277D43CA8]];
  }

  if (([v30 isAutoMinimumValue] & 1) == 0)
  {
    v18 = MEMORY[0x277CCABB0];
    [v30 scalingMinimum];
    *&v19 = v19;
    v20 = [v18 numberWithFloat:v19];
    [v9 setValue:v20 forKey:*MEMORY[0x277D43CC8]];
  }

  if (([v30 isAutoMaximumValue] & 1) == 0)
  {
    v21 = MEMORY[0x277CCABB0];
    [v30 scalingMaximum];
    *&v22 = v22;
    v23 = [v21 numberWithFloat:v22];
    [v9 setValue:v23 forKey:*MEMORY[0x277D43CC0]];
  }

  v24 = [v30 font];
  v25 = [v24 color];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 CGColor];
    [v9 setValue:v27 forKey:*MEMORY[0x277D43E00]];
  }

  v28 = [v30 axisPosition];
  if (v28 >= 4)
  {
    v29 = MEMORY[0x277D43CE0];
  }

  else
  {
    v29 = qword_2799CE108[v28];
  }

  [v11 setValue:v9 forKey:*v29];
}

- (void)_addGraphicProperties:(id)a3 toDescription:(id)a4 withState:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([v23 hasStroke])
  {
    v10 = [v23 stroke];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 fill];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v23 fill];

        v12 = v13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        v15 = [v14 CGColor];
        v16 = v15;
        if (v15)
        {
          CGColorRetain(v15);
        }
      }

      else
      {
        v16 = [CMColorProperty copyCGColorFromOADFill:v12 state:v9];
      }

      [v8 setValue:v16 forKey:*MEMORY[0x277D43DF0]];
      CGColorRelease(v16);
      v17 = MEMORY[0x277CCABB0];
      [v11 width];
      v18 = [v17 numberWithFloat:?];
      [v8 setValue:v18 forKey:*MEMORY[0x277D43DF8]];
    }
  }

  if ([v23 hasFill])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = [v23 fill];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [(CMMapper *)self parent];
          v21 = [CMShapeRenderer copyImageFromOADImageFill:v19 withMapper:v20];

          if (v21)
          {
            [v8 setValue:v21 forKey:*MEMORY[0x277D43D18]];
            CGImageRelease(v21);
          }
        }

        else if (v19)
        {
          v22 = [CMColorProperty copyCGColorFromOADFill:v19 state:v9];
          [v8 setValue:v22 forKey:*MEMORY[0x277D43D10]];
          CGColorRelease(v22);
        }
      }
    }
  }
}

- (void)_addStandardSeries:(id)a3 toDescription:(id)a4 withState:(id)a5
{
  v7 = a3;
  v8 = a4;
  v124 = a5;
  v115 = v7;
  v9 = [v7 isDateTimeFormattingFlag];
  v114 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277D43D98];
  v106 = v8;
  v109 = [v8 valueForKey:*MEMORY[0x277D43D98]];
  if (!v109)
  {
    v109 = [MEMORY[0x277CBEB18] array];
    [v8 setValue:v109 forKey:v10];
  }

  [v109 addObject:v114];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D43D68];
LABEL_5:
    [v114 setValue:*v11 forKey:*MEMORY[0x277D43DC8]];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v114 setValue:*MEMORY[0x277D43CF0] forKey:*MEMORY[0x277D43DC8]];
    v12 = 0;
    v13 = 1;
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v7 chartType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = MEMORY[0x277D43C88];
    }

    else
    {
      v83 = [v115 chartType];
      v84 = [v83 isDoughnutType];

      v22 = MEMORY[0x277D43D58];
      if (v84)
      {
        v22 = MEMORY[0x277D43D08];
      }
    }

    [v114 setValue:*v22 forKey:*MEMORY[0x277D43DC8]];
    v85 = [v115 dataValuePropertiesCollection];
    if ([v85 count])
    {
      v86 = [v85 objectAtIndex:0];
      if (objc_opt_respondsToSelector())
      {
        v87 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v86, "explosion") / 2)}];
        [v114 setValue:v87 forKey:*MEMORY[0x277D43DB8]];
      }
    }

LABEL_6:
    v12 = 0;
    v13 = 0;
    if (!v9)
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

  [v114 setValue:*MEMORY[0x277D43E18] forKey:*MEMORY[0x277D43DC8]];
  v13 = 0;
  v12 = 1;
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_10:
  self->mHasPrimaryDateAxis = 1;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:2];
  [v114 setValue:v14 forKey:*MEMORY[0x277D43CD0]];

  v15 = [v115 valueData];
  v16 = [v15 contentFormat];

  v17 = [v16 formatString];
  v18 = [v17 string];

  if (v18 && ([v18 isEqualToString:@"General"] & 1) == 0)
  {
    v19 = [EMNumberFormatter formatterForFormat:v18];
    [v114 setValue:v19 forKey:*MEMORY[0x277D43CA0]];
  }

  else
  {
    v19 = [EMNumberFormatter formatterForFormat:@"GenericDate"];
    [v114 setValue:v19 forKey:*MEMORY[0x277D43CA0]];
  }

LABEL_18:
  v107 = [v115 categoryData];
  v108 = [v115 valueData];
  if (((v12 | v13) & 1) != 0 || self->mHasDateCategory)
  {
    v125 = [v107 dataValues];
    v128 = [MEMORY[0x277CBEB18] array];
    if ([v125 count])
    {
      v23 = [v125 count];
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          v25 = [v125 dataValueAtIndex:i];
          EDValue::EDValue(&v131, [v25 value]);

          if (self->mHasDateCategory)
          {
            v26 = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v131)];
            v27 = MEMORY[0x277CCABB0];
            [v26 timeIntervalSinceReferenceDate];
            v28 = [v27 numberWithDouble:?];
            [v128 addObject:v28];
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
            [v128 addObject:v26];
          }

          EDValue::~EDValue(&v131);
        }
      }

      v30 = v128;
    }

    else
    {
      v30 = [MEMORY[0x277CBEB18] array];

      v110 = [v107 formula];
      v31 = [v110 references];
      v116 = [v31 count];
      if (v116)
      {
        v32 = 0;
        v112 = v31;
        do
        {
          v118 = v32;
          v33 = [v31 objectAtIndex:?];
          v129 = [v124 document];
          v121 = [v129 sheetAtIndex:{objc_msgSend(v33, "sheetIndex")}];
          v34 = [v121 rowBlocks];
          for (j = [v33 firstColumn]; j <= objc_msgSend(v33, "lastColumn"); j = (j + 1))
          {
            for (k = [v33 firstRow]; k <= objc_msgSend(v33, "lastRow"); k = (k + 1))
            {
              v37 = [v34 cellWithRowNumber:k columnNumber:j];
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
                [v30 addObject:v40];
              }
            }
          }

          v32 = v118 + 1;
          v31 = v112;
        }

        while (v118 + 1 != v116);
      }
    }

    [v114 setValue:v30 forKey:*MEMORY[0x277D43D70]];
  }

  else
  {
    v30 = 0;
    v125 = 0;
  }

  v41 = v125;
  v126 = [v108 dataValues];

  v130 = [MEMORY[0x277CBEB18] array];

  if (![v126 count])
  {
    v105 = [v108 formula];
    v49 = [v105 references];
    v113 = [v49 count];
    if (!v113)
    {
      goto LABEL_82;
    }

    v50 = 0;
    v111 = v49;
    while (1)
    {
      v117 = v50;
      v51 = [v49 objectAtIndex:?];
      v122 = [v124 document];
      v119 = [v122 sheetAtIndex:{objc_msgSend(v51, "sheetIndex")}];
      v52 = [v119 rowBlocks];
      for (m = [v51 firstColumn]; m <= objc_msgSend(v51, "lastColumn"); m = (m + 1))
      {
        for (n = [v51 firstRow]; n <= objc_msgSend(v51, "lastRow"); n = (n + 1))
        {
          v55 = [v52 cellWithRowNumber:n columnNumber:m];
          v56 = v55;
          if (v9)
          {
            v57 = [(EMChartMapper *)self dateFromXlDateTimeNumber:numberValueForEDCell(v55)];
            v58 = MEMORY[0x277CCABB0];
            [v57 timeIntervalSinceReferenceDate];
            v59 = [v58 numberWithDouble:?];
            [v130 addObject:v59];

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
            [v130 addObject:v57];
            goto LABEL_77;
          }

          [v130 addObject:&unk_286F6DD88];
        }
      }

      v50 = v117 + 1;
      v49 = v111;
      if (v117 + 1 == v113)
      {
LABEL_82:

        goto LABEL_83;
      }
    }
  }

  v42 = [v126 count];
  if (v42)
  {
    for (ii = 0; ii != v42; ++ii)
    {
      v44 = [v126 dataValueAtIndex:ii];
      EDValue::EDValue(&v131, [v44 value]);

      if (v9)
      {
        v45 = [(EMChartMapper *)self dateFromXlDateTimeNumber:EDValue::numberValue(&v131)];
        v46 = MEMORY[0x277CCABB0];
        [v45 timeIntervalSinceReferenceDate];
        v47 = [v46 numberWithDouble:?];
        [v130 addObject:v47];
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
        [v130 addObject:v45];
      }

      EDValue::~EDValue(&v131);
    }
  }

LABEL_83:
  [v114 setValue:v130 forKey:*MEMORY[0x277D43DD0]];
  v61 = [v115 lastCachedName];
  v62 = v61;
  if (v61 && CsLeReadSInt32([v61 value]) == 3)
  {
    v63 = EDValue::EDValue(&v131, [v62 value]);
    v64 = EDValue::nsStringValue(v63);
    [v114 setValue:v64 forKey:*MEMORY[0x277D43D20]];

    EDValue::~EDValue(&v131);
  }

  else
  {
    v65 = [v115 name];
    v66 = [v65 references];
    if ([v66 count])
    {
      v67 = [v66 objectAtIndex:0];
      v123 = [v124 document];
      v120 = [v123 sheetAtIndex:{objc_msgSend(v67, "sheetIndex")}];
      v68 = [v120 rowBlocks];
      v69 = [v67 firstColumn];
LABEL_88:
      if (v69 <= [v67 lastColumn])
      {
        for (jj = [v67 firstRow]; ; jj = (jj + 1))
        {
          if (jj > [v67 lastRow])
          {
            v69 = (v69 + 1);
            goto LABEL_88;
          }

          v71 = [v68 cellWithRowNumber:jj columnNumber:v69];
          if (typeForEDCell(v71) == 3)
          {
            v72 = [v124 resources];
            v73 = stringValueForEDCell(v71, v72);

            v74 = [v73 string];
            if ([v74 length])
            {
              [v114 setValue:v74 forKey:*MEMORY[0x277D43D20]];

              break;
            }
          }
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v75 = [v115 marker];
    if ([v75 size] && objc_msgSend(v75, "style") >= 1)
    {
      v76 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v75, "size")}];
      [v114 setValue:v76 forKey:*MEMORY[0x277D43DB0]];

      v77 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [v114 setValue:v77 forKey:*MEMORY[0x277D43DA8]];

      v78 = [v75 graphicProperties];
      v79 = [v78 fill];

      if (v79)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v80 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          v81 = [v80 CGColor];
          v82 = v81;
          if (v81)
          {
            CGColorRetain(v81);
          }
        }

        else
        {
          v82 = [CMColorProperty copyCGColorFromOADFill:v79 state:v124];
        }

        [v114 setValue:v82 forKey:*MEMORY[0x277D43DA0]];
        CGColorRelease(v82);
      }
    }
  }

  v88 = [v115 defaultDataLabel];
  if ([v88 isShowValue])
  {
    v89 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v114 setValue:v89 forKey:*MEMORY[0x277D43DC0]];
  }

  v90 = [v115 errorBarYAxis];
  if (v90)
  {
    v91 = objc_opt_new();
    v92 = MEMORY[0x277CCABB0];
    *&v93 = [v90 valueType];
    v94 = [v92 numberWithFloat:v93];
    [v91 setValue:v94 forKey:*MEMORY[0x277D43D90]];

    v95 = MEMORY[0x277CCABB0];
    *&v96 = [v90 type];
    v97 = [v95 numberWithFloat:v96];
    [v91 setValue:v97 forKey:*MEMORY[0x277D43D80]];

    v98 = MEMORY[0x277CCABB0];
    [v90 value];
    *&v99 = v99;
    v100 = [v98 numberWithFloat:v99];
    [v91 setValue:v100 forKey:*MEMORY[0x277D43D88]];

    [v114 setValue:v91 forKey:*MEMORY[0x277D43D78]];
  }

  v101 = [v115 graphicProperties];
  [(EMChartMapper *)self _addGraphicProperties:v101 toDescription:v114 withState:v124];
}

+ (CGColor)newColorWithCalibratedRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v11 = CGColorCreate(DeviceRGB, components);
  CFRelease(DeviceRGB);
  return v11;
}

@end