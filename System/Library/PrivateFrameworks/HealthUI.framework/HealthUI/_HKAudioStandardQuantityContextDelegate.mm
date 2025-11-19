@interface _HKAudioStandardQuantityContextDelegate
- (_HKAudioStandardQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4;
- (id)_statItemForTimeScope:(int64_t)a3;
- (id)formatterForTimescope:(int64_t)a3;
@end

@implementation _HKAudioStandardQuantityContextDelegate

- (_HKAudioStandardQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKAudioStandardQuantityContextDelegate;
  v9 = [(_HKAudioStandardQuantityContextDelegate *)&v12 init];
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
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(_HKAudioStandardQuantityContextDelegate *)self primaryDisplayType];
  v6 = [v5 hk_interactiveChartsFormatterForTimeScope:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(_HKAudioStandardQuantityContextDelegate *)self _statItemForTimeScope:a3];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 setOverrideStatFormatterItemOptions:v9];
  }

  return v6;
}

- (id)_statItemForTimeScope:(int64_t)a3
{
  if ((a3 - 3) > 5)
  {
    return &unk_1F43825C0;
  }

  else
  {
    return qword_1E81B7680[a3 - 3];
  }
}

@end