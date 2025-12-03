@interface _HKQuantityTypeDataSourceMapping
- (HKQuantityTypeDataSource)weakQuantityTypeDataSource;
- (_HKQuantityTypeDataSourceMapping)initWithQuantityTypeDataSource:(id)source;
- (id)map:(id)map;
@end

@implementation _HKQuantityTypeDataSourceMapping

- (_HKQuantityTypeDataSourceMapping)initWithQuantityTypeDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = _HKQuantityTypeDataSourceMapping;
  v5 = [(_HKQuantityTypeDataSourceMapping *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakQuantityTypeDataSource, sourceCopy);
  }

  return v6;
}

- (id)map:(id)map
{
  mapCopy = map;
  weakQuantityTypeDataSource = [(_HKQuantityTypeDataSourceMapping *)self weakQuantityTypeDataSource];
  if (weakQuantityTypeDataSource && ([mapCopy chartPoints], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    displayType = [weakQuantityTypeDataSource displayType];
    unitController = [weakQuantityTypeDataSource unitController];
    v10 = [unitController unitForChartingDisplayType:displayType];

    array = [MEMORY[0x1E695DF70] array];
    chartPoints = [mapCopy chartPoints];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __40___HKQuantityTypeDataSourceMapping_map___block_invoke;
    v21 = &unk_1E81B93F8;
    v27 = a2;
    selfCopy = self;
    v23 = weakQuantityTypeDataSource;
    v24 = v10;
    v25 = displayType;
    v26 = array;
    v13 = array;
    v14 = displayType;
    v15 = v10;
    [chartPoints enumerateObjectsUsingBlock:&v18];

    v16 = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)v16 setChartPoints:v13, v18, v19, v20, v21, selfCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (HKQuantityTypeDataSource)weakQuantityTypeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakQuantityTypeDataSource);

  return WeakRetained;
}

@end