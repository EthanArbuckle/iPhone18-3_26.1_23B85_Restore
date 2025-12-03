@interface _HKWalkingQuantityContextDelegate
- (_HKWalkingQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type;
- (id)_statItemForTimeScope:(int64_t)scope;
- (id)formatterForTimescope:(int64_t)timescope;
@end

@implementation _HKWalkingQuantityContextDelegate

- (_HKWalkingQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _HKWalkingQuantityContextDelegate;
  v9 = [(_HKWalkingQuantityContextDelegate *)&v12 init];
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
    v7 = [(_HKWalkingQuantityContextDelegate *)self _statItemForTimeScope:timescope];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 setOverrideStatFormatterItemOptions:v8];
  }

  return v5;
}

- (id)_statItemForTimeScope:(int64_t)scope
{
  if ((scope - 3) > 5)
  {
    return &unk_1F43828C0;
  }

  else
  {
    return qword_1E81B8328[scope - 3];
  }
}

@end