@interface CHDSeries
+ (id)seriesWithChart:(id)chart;
- (BOOL)hasTrendlines;
- (CHDSeries)initWithChart:(id)chart;
- (NSString)description;
- (id)chart;
- (id)chartType;
- (id)defaultSeriesNameForIndex:(unint64_t)index;
- (id)shallowCopy;
- (unint64_t)categoryCount;
- (void)clearBackPointers;
- (void)setCategoryData:(id)data;
- (void)setDataValuePropertiesCollection:(id)collection;
- (void)setDefaultDataLabel:(id)label;
- (void)setErrorBar:(id)bar;
- (void)setErrorBarXAxis:(id)axis;
- (void)setErrorBarYAxis:(id)axis;
- (void)setGraphicProperties:(id)properties;
- (void)setLastCachedName:(id)name;
- (void)setName:(id)name;
- (void)setTrendlineCollection:(id)collection;
- (void)setValueData:(id)data;
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

- (CHDSeries)initWithChart:(id)chart
{
  chartCopy = chart;
  v12.receiver = self;
  v12.super_class = CHDSeries;
  v5 = [(CHDSeries *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mChart, chartCopy);
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

+ (id)seriesWithChart:(id)chart
{
  chartCopy = chart;
  v4 = [objc_alloc(objc_opt_class()) initWithChart:chartCopy];

  return v4;
}

- (void)setLastCachedName:(id)name
{
  nameCopy = name;
  mLastCachedName = self->mLastCachedName;
  p_mLastCachedName = &self->mLastCachedName;
  if (mLastCachedName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mLastCachedName, name);
    nameCopy = v8;
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  p_mName = &self->mName;
  if (self->mName != nameCopy)
  {
    v9 = nameCopy;
    objc_storeStrong(p_mName, name);
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->mChart);
      processors = [WeakRetained processors];
      [processors markObject:v9 processor:objc_opt_class()];
    }
  }

  MEMORY[0x2821F9730](p_mName);
}

- (void)setValueData:(id)data
{
  dataCopy = data;
  if (self->mValueData != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(&self->mValueData, data);
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    processors = [WeakRetained processors];
    [processors markObject:v8 processor:objc_opt_class()];

    dataCopy = v8;
  }
}

- (void)setCategoryData:(id)data
{
  dataCopy = data;
  if (self->mCategoryData != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(&self->mCategoryData, data);
    WeakRetained = objc_loadWeakRetained(&self->mChart);
    processors = [WeakRetained processors];
    [processors markObject:v8 processor:objc_opt_class()];

    dataCopy = v8;
  }
}

- (void)setDataValuePropertiesCollection:(id)collection
{
  collectionCopy = collection;
  mDataValuePropertiesCollection = self->mDataValuePropertiesCollection;
  p_mDataValuePropertiesCollection = &self->mDataValuePropertiesCollection;
  if (mDataValuePropertiesCollection != collectionCopy)
  {
    v8 = collectionCopy;
    objc_storeStrong(p_mDataValuePropertiesCollection, collection);
    collectionCopy = v8;
  }
}

- (void)setTrendlineCollection:(id)collection
{
  collectionCopy = collection;
  mTrendlinesCollection = self->mTrendlinesCollection;
  p_mTrendlinesCollection = &self->mTrendlinesCollection;
  if (mTrendlinesCollection != collectionCopy)
  {
    v8 = collectionCopy;
    objc_storeStrong(p_mTrendlinesCollection, collection);
    collectionCopy = v8;
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

- (void)setErrorBar:(id)bar
{
  barCopy = bar;
  if (barCopy)
  {
    if ([barCopy direction] == 1)
    {
      [(CHDSeries *)self setErrorBarYAxis:barCopy];
    }

    else
    {
      [(CHDSeries *)self setErrorBarXAxis:barCopy];
    }

    minusValues = [barCopy minusValues];

    if (minusValues)
    {
      WeakRetained = objc_loadWeakRetained(&self->mChart);
      processors = [WeakRetained processors];
      minusValues2 = [barCopy minusValues];
      [processors markObject:minusValues2 processor:objc_opt_class()];
    }

    plusValues = [barCopy plusValues];

    if (plusValues)
    {
      v9 = objc_loadWeakRetained(&self->mChart);
      processors2 = [v9 processors];
      plusValues2 = [barCopy plusValues];
      [processors2 markObject:plusValues2 processor:objc_opt_class()];
    }
  }
}

- (void)setErrorBarXAxis:(id)axis
{
  axisCopy = axis;
  mErrorBarX = self->mErrorBarX;
  p_mErrorBarX = &self->mErrorBarX;
  if (mErrorBarX != axisCopy)
  {
    v8 = axisCopy;
    objc_storeStrong(p_mErrorBarX, axis);
    axisCopy = v8;
  }
}

- (void)setErrorBarYAxis:(id)axis
{
  axisCopy = axis;
  mErrorBarY = self->mErrorBarY;
  p_mErrorBarY = &self->mErrorBarY;
  if (mErrorBarY != axisCopy)
  {
    v8 = axisCopy;
    objc_storeStrong(p_mErrorBarY, axis);
    axisCopy = v8;
  }
}

- (void)setDefaultDataLabel:(id)label
{
  labelCopy = label;
  mDefaultDataLabel = self->mDefaultDataLabel;
  p_mDefaultDataLabel = &self->mDefaultDataLabel;
  if (mDefaultDataLabel != labelCopy)
  {
    v8 = labelCopy;
    objc_storeStrong(p_mDefaultDataLabel, label);
    labelCopy = v8;
  }
}

- (void)setGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (id)defaultSeriesNameForIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->mChart);
  isMSGraph = [WeakRetained isMSGraph];

  v7 = @"Series";
  if (isMSGraph)
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
        isColumn = [v12 isColumn];

        if (isColumn)
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
    is3D = [v21 is3D];

    if (is3D)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"3-D ", v7];
    }
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", v7, index + 1];

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