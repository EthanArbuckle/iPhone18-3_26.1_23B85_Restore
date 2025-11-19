@interface _HKWalkingQuantityContextDelegate
- (_HKWalkingQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4;
- (id)_statItemForTimeScope:(int64_t)a3;
- (id)formatterForTimescope:(int64_t)a3;
@end

@implementation _HKWalkingQuantityContextDelegate

- (_HKWalkingQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKWalkingQuantityContextDelegate;
  v9 = [(_HKWalkingQuantityContextDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheDataSource, a3);
    objc_storeStrong(&v10->_primaryDisplayType, a4);
  }

  return v10;
}

- (id)formatterForTimescope:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [(HKDisplayType *)self->_primaryDisplayType hk_interactiveChartsFormatterForTimeScope:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(_HKWalkingQuantityContextDelegate *)self _statItemForTimeScope:a3];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 setOverrideStatFormatterItemOptions:v8];
  }

  return v5;
}

- (id)_statItemForTimeScope:(int64_t)a3
{
  if ((a3 - 3) > 5)
  {
    return &unk_1F43828C0;
  }

  else
  {
    return qword_1E81B8328[a3 - 3];
  }
}

@end