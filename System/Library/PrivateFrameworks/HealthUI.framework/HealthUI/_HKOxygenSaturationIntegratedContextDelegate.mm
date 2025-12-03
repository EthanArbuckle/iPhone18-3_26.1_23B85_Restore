@interface _HKOxygenSaturationIntegratedContextDelegate
- (_HKOxygenSaturationIntegratedContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type context:(unint64_t)context;
- (id)_statItemForTimeScope:(int64_t)scope;
- (id)formatterForTimescope:(int64_t)timescope;
@end

@implementation _HKOxygenSaturationIntegratedContextDelegate

- (_HKOxygenSaturationIntegratedContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type context:(unint64_t)context
{
  sourceCopy = source;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = _HKOxygenSaturationIntegratedContextDelegate;
  v11 = [(_HKOxygenSaturationIntegratedContextDelegate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cacheDataSource, source);
    objc_storeStrong(&v12->_primaryDisplayType, type);
    v12->_context = context;
  }

  return v12;
}

- (id)formatterForTimescope:(int64_t)timescope
{
  v11[1] = *MEMORY[0x1E69E9840];
  context = [(_HKOxygenSaturationIntegratedContextDelegate *)self context];
  if (context == 1)
  {
    v3 = [[HKInteractiveChartOxygenSaturationFormatter alloc] initWithStatisticsType:21];
  }

  else if (!context)
  {
    primaryDisplayType = [(_HKOxygenSaturationIntegratedContextDelegate *)self primaryDisplayType];
    v3 = [primaryDisplayType hk_interactiveChartsFormatterForTimeScope:timescope];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v3;
      v8 = [(_HKOxygenSaturationIntegratedContextDelegate *)self _statItemForTimeScope:timescope];
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(HKInteractiveChartGenericStatFormatter *)v3 setOverrideStatFormatterItemOptions:v9];
    }
  }

  return v3;
}

- (id)_statItemForTimeScope:(int64_t)scope
{
  if ((scope - 3) > 5)
  {
    return &unk_1F4382500;
  }

  else
  {
    return qword_1E81B7008[scope - 3];
  }
}

@end