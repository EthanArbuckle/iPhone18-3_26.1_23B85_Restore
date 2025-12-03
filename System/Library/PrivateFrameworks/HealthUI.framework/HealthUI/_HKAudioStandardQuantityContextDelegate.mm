@interface _HKAudioStandardQuantityContextDelegate
- (_HKAudioStandardQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type;
- (id)_statItemForTimeScope:(int64_t)scope;
- (id)formatterForTimescope:(int64_t)timescope;
@end

@implementation _HKAudioStandardQuantityContextDelegate

- (_HKAudioStandardQuantityContextDelegate)initWithCustomDataSource:(id)source primaryDisplayType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = _HKAudioStandardQuantityContextDelegate;
  v9 = [(_HKAudioStandardQuantityContextDelegate *)&v12 init];
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
  v11[1] = *MEMORY[0x1E69E9840];
  primaryDisplayType = [(_HKAudioStandardQuantityContextDelegate *)self primaryDisplayType];
  v6 = [primaryDisplayType hk_interactiveChartsFormatterForTimeScope:timescope];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(_HKAudioStandardQuantityContextDelegate *)self _statItemForTimeScope:timescope];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 setOverrideStatFormatterItemOptions:v9];
  }

  return v6;
}

- (id)_statItemForTimeScope:(int64_t)scope
{
  if ((scope - 3) > 5)
  {
    return &unk_1F43825C0;
  }

  else
  {
    return qword_1E81B7680[scope - 3];
  }
}

@end