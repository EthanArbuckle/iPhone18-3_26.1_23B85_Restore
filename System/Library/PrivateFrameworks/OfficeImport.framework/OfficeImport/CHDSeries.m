@interface CHDSeries
+ (id)seriesWithChart:(id)a3;
- (BOOL)hasTrendlines;
- (CHDSeries)initWithChart:(id)a3;
- (NSString)description;
- (id)chart;
- (id)chartType;
- (id)defaultSeriesNameForIndex:(unint64_t)a3;
- (id)shallowCopy;
- (unint64_t)categoryCount;
- (void)clearBackPointers;
- (void)setCategoryData:(id)a3;
- (void)setDataValuePropertiesCollection:(id)a3;
- (void)setDefaultDataLabel:(id)a3;
- (void)setErrorBar:(id)a3;
- (void)setErrorBarXAxis:(id)a3;
- (void)setErrorBarYAxis:(id)a3;
- (void)setGraphicProperties:(id)a3;
- (void)setLastCachedName:(id)a3;
- (void)setName:(id)a3;
- (void)setTrendlineCollection:(id)a3;
- (void)setValueData:(id)a3;
@end

@implementation CHDSeries

- (id)chart
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);

  return WeakRetained;
}

- (id)chartType
{
  WeakRetained = objc_loadWeakRetained(&self->mChartType);

  return WeakRetained;
}

- (id)shallowCopy
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v5 = [v3 seriesWithChart:WeakRetained];

  if (v5)
  {
    [v5 setStyleIndex:self->mStyleIndex];
    [v5 setOrder:self->mOrder];
    [v5 setDefaultDataLabel:self->mDefaultDataLabel];
    [v5 setDateTimeFormattingFlag:self->mDateTimeFormattingFlag];
    v6 = objc_loadWeakRetained(&self->mChartType);
    [v5 setChartType:v6];

    v7 = v5;
  }

  return v5;
}

- (void)clearBackPointers
{
  objc_storeWeak(&self->mChart, 0);

  objc_storeWeak(&self->mChartType, 0);
}

- (unint64_t)categoryCount
{
  result = self->mValueData;
  if (result)
  {
    return [result countOfCellsBeingReferenced];
  }

  return result;
}

- (CHDSeries)initWithChart:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CHDSeries;
  v5 = [(CHDSeries *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, v4);
    v7 = objc_alloc_init(EDKeyedCollection);
    mDataValuePropertiesCollection = v6->mDataValuePropertiesCollection;
    v6->mDataValuePropertiesCollection = v7;

    v9 = objc_alloc_init(EDCollection);
    mTrendlinesCollection = v6->mTrendlinesCollection;
    v6->mTrendlinesCollection = v9;

    *&v6->mOrder = xmmword_25D6FAA10;
    *&v6->mDateTimeFormattingFlag = 0;
  }

  return v6;
}

+ (id)seriesWithChart:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:v3];

  return v4;
}

- (void)setLastCachedName:(id)a3
{
  v5 = a3;
  mLastCachedName = self->mLastCachedName;
  p_mLastCachedName = &self->mLastCachedName;
  if (mLastCachedName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mLastCachedName, a3);
    v5 = v8;
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  p_mName = &self->mName;
  if (self->mName != v5)
  {
    v9 = v5;
    objc_storeStrong(p_mName, a3);
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->mChart);
      v8 = [WeakRetained processors];
      [v8 markObject:v9 processor:objc_opt_class()];
    }
  }

  MEMORY[0x2821F9730](p_mName);
}

- (void)setValueData:(id)a3
{
  v5 = a3;
  if (self->mValueData != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->mValueData, a3);
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    v7 = [WeakRetained processors];
    [v7 markObject:v8 processor:objc_opt_class()];

    v5 = v8;
  }
}

- (void)setCategoryData:(id)a3
{
  v5 = a3;
  if (self->mCategoryData != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->mCategoryData, a3);
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    v7 = [WeakRetained processors];
    [v7 markObject:v8 processor:objc_opt_class()];

    v5 = v8;
  }
}

- (void)setDataValuePropertiesCollection:(id)a3
{
  v5 = a3;
  mDataValuePropertiesCollection = self->mDataValuePropertiesCollection;
  p_mDataValuePropertiesCollection = &self->mDataValuePropertiesCollection;
  if (mDataValuePropertiesCollection != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDataValuePropertiesCollection, a3);
    v5 = v8;
  }
}

- (void)setTrendlineCollection:(id)a3
{
  v5 = a3;
  mTrendlinesCollection = self->mTrendlinesCollection;
  p_mTrendlinesCollection = &self->mTrendlinesCollection;
  if (mTrendlinesCollection != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mTrendlinesCollection, a3);
    v5 = v8;
  }
}

- (BOOL)hasTrendlines
{
  mTrendlinesCollection = self->mTrendlinesCollection;
  if (mTrendlinesCollection)
  {
    LOBYTE(mTrendlinesCollection) = [(EDCollection *)mTrendlinesCollection count]!= 0;
  }

  return mTrendlinesCollection;
}

- (void)setErrorBar:(id)a3
{
  v12 = a3;
  if (v12)
  {
    if ([v12 direction] == 1)
    {
      [(CHDSeries *)self setErrorBarYAxis:v12];
    }

    else
    {
      [(CHDSeries *)self setErrorBarXAxis:v12];
    }

    v4 = [v12 minusValues];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->mChart);
      v6 = [WeakRetained processors];
      v7 = [v12 minusValues];
      [v6 markObject:v7 processor:objc_opt_class()];
    }

    v8 = [v12 plusValues];

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->mChart);
      v10 = [v9 processors];
      v11 = [v12 plusValues];
      [v10 markObject:v11 processor:objc_opt_class()];
    }
  }
}

- (void)setErrorBarXAxis:(id)a3
{
  v5 = a3;
  mErrorBarX = self->mErrorBarX;
  p_mErrorBarX = &self->mErrorBarX;
  if (mErrorBarX != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mErrorBarX, a3);
    v5 = v8;
  }
}

- (void)setErrorBarYAxis:(id)a3
{
  v5 = a3;
  mErrorBarY = self->mErrorBarY;
  p_mErrorBarY = &self->mErrorBarY;
  if (mErrorBarY != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mErrorBarY, a3);
    v5 = v8;
  }
}

- (void)setDefaultDataLabel:(id)a3
{
  v5 = a3;
  mDefaultDataLabel = self->mDefaultDataLabel;
  p_mDefaultDataLabel = &self->mDefaultDataLabel;
  if (mDefaultDataLabel != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDefaultDataLabel, a3);
    v5 = v8;
  }
}

- (void)setGraphicProperties:(id)a3
{
  v5 = a3;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mGraphicProperties, a3);
    v5 = v8;
  }
}

- (id)defaultSeriesNameForIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  v6 = [WeakRetained isMSGraph];

  v7 = @"Series";
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->mChartType);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = @"Slice ";
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->mChartType);
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      v12 = objc_loadWeakRetained(&self->mChartType);
      v13 = v12;
      if (v11)
      {
        v14 = [v12 isColumn];

        if (v14)
        {
          v7 = @"Column ";
        }

        else
        {
          v7 = @"Bar ";
        }
      }

      else
      {
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v7 = @"Area ";
        }

        else
        {
          v16 = objc_loadWeakRetained(&self->mChartType);
          objc_opt_class();
          v17 = objc_opt_isKindOfClass();

          if (v17)
          {
            v7 = @"Line ";
          }

          else
          {
            v18 = objc_loadWeakRetained(&self->mChartType);
            v19 = objc_opt_class();
            v20 = objc_opt_class();

            if (v19 == v20)
            {
              v7 = @"XY (Scatter) ";
            }
          }
        }
      }
    }

    v21 = objc_loadWeakRetained(&self->mChart);
    v22 = [v21 is3D];

    if (v22)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"3-D ", v7];
    }
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", v7, a3 + 1];

  return v23;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDSeries;
  v2 = [(CHDSeries *)&v4 description];

  return v2;
}

@end