@interface _HKBloodGlucoseQuantityContextDelegate
- (_HKBloodGlucoseQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type;
- (id)_statItemForTimeScope:(int64_t)scope;
- (id)formatterForTimescope:(int64_t)timescope;
@end

@implementation _HKBloodGlucoseQuantityContextDelegate

- (_HKBloodGlucoseQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _HKBloodGlucoseQuantityContextDelegate;
  v9 = [(_HKBloodGlucoseQuantityContextDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheDataSource, source);
    objc_storeStrong(&v10->_primaryDisplayType, type);
  }

  return v10;
}

- (id)formatterForTimescope:(int64_t)timescope
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(HKDisplayType *)self->_primaryDisplayType hk_interactiveChartsFormatterForTimeScope:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKBloodGlucoseQuantityContextDelegate *)self _statItemForTimeScope:timescope];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 setOverrideStatFormatterItemOptions:v8];
  }

  return v5;
}

- (id)_statItemForTimeScope:(int64_t)scope
{
  if (scope > 8)
  {
    return &unk_1F4382338;
  }

  else
  {
    return qword_1E81B62F8[scope];
  }
}

@end