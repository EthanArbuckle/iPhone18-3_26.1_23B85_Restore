@interface _HKOxygenSaturationIntegratedContextDelegate
- (_HKOxygenSaturationIntegratedContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4 context:(unint64_t)a5;
- (id)_statItemForTimeScope:(int64_t)a3;
- (id)formatterForTimescope:(int64_t)a3;
@end

@implementation _HKOxygenSaturationIntegratedContextDelegate

- (_HKOxygenSaturationIntegratedContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4 context:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _HKOxygenSaturationIntegratedContextDelegate;
  v11 = [(_HKOxygenSaturationIntegratedContextDelegate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cacheDataSource, a3);
    objc_storeStrong(&v12->_primaryDisplayType, a4);
    v12->_context = a5;
  }

  return v12;
}

- (id)formatterForTimescope:(int64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = [(_HKOxygenSaturationIntegratedContextDelegate *)self context];
  if (v6 == 1)
  {
    v3 = [[HKInteractiveChartOxygenSaturationFormatter alloc] initWithStatisticsType:21];
  }

  else if (!v6)
  {
    v7 = [(_HKOxygenSaturationIntegratedContextDelegate *)self primaryDisplayType];
    v3 = [v7 hk_interactiveChartsFormatterForTimeScope:a3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v3;
      v8 = [(_HKOxygenSaturationIntegratedContextDelegate *)self _statItemForTimeScope:a3];
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(HKInteractiveChartGenericStatFormatter *)v3 setOverrideStatFormatterItemOptions:v9];
    }
  }

  return v3;
}

- (id)_statItemForTimeScope:(int64_t)a3
{
  if ((a3 - 3) > 5)
  {
    return &unk_1F4382500;
  }

  else
  {
    return qword_1E81B7008[a3 - 3];
  }
}

@end