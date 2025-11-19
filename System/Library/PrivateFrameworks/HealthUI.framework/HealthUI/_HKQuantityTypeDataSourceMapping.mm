@interface _HKQuantityTypeDataSourceMapping
- (HKQuantityTypeDataSource)weakQuantityTypeDataSource;
- (_HKQuantityTypeDataSourceMapping)initWithQuantityTypeDataSource:(id)a3;
- (id)map:(id)a3;
@end

@implementation _HKQuantityTypeDataSourceMapping

- (_HKQuantityTypeDataSourceMapping)initWithQuantityTypeDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _HKQuantityTypeDataSourceMapping;
  v5 = [(_HKQuantityTypeDataSourceMapping *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakQuantityTypeDataSource, v4);
  }

  return v6;
}

- (id)map:(id)a3
{
  v5 = a3;
  v6 = [(_HKQuantityTypeDataSourceMapping *)self weakQuantityTypeDataSource];
  if (v6 && ([v5 chartPoints], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 displayType];
    v9 = [v6 unitController];
    v10 = [v9 unitForChartingDisplayType:v8];

    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [v5 chartPoints];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __40___HKQuantityTypeDataSourceMapping_map___block_invoke;
    v21 = &unk_1E81B93F8;
    v27 = a2;
    v22 = self;
    v23 = v6;
    v24 = v10;
    v25 = v8;
    v26 = v11;
    v13 = v11;
    v14 = v8;
    v15 = v10;
    [v12 enumerateObjectsUsingBlock:&v18];

    v16 = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)v16 setChartPoints:v13, v18, v19, v20, v21, v22];
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