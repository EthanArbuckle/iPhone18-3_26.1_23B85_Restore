@interface _HKAudioVisibleRangeQuantityContextDelegate
- (_HKAudioVisibleRangeQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4;
- (id)valueContextString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5;
- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5;
- (void)_enumerateAudioExposureChartPoints:(id)a3 withBlock:(id)a4;
@end

@implementation _HKAudioVisibleRangeQuantityContextDelegate

- (_HKAudioVisibleRangeQuantityContextDelegate)initWithCustomDataSource:(id)a3 primaryDisplayType:(id)a4
{
  v8.receiver = self;
  v8.super_class = _HKAudioVisibleRangeQuantityContextDelegate;
  v4 = [(_HKAudioStandardQuantityContextDelegate *)&v8 initWithCustomDataSource:a3 primaryDisplayType:a4];
  if (v4)
  {
    v5 = objc_alloc_init(_HKAudioVisibleRangeOverlaySeries);
    audioOverlayLineSeries = v4->_audioOverlayLineSeries;
    v4->_audioOverlayLineSeries = &v5->super;
  }

  return v4;
}

- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102___HKAudioVisibleRangeQuantityContextDelegate_valueString_applicationItems_representativeDisplayType___block_invoke;
  v19[3] = &unk_1E81B7660;
  v19[4] = &v20;
  [(_HKAudioVisibleRangeQuantityContextDelegate *)self _enumerateAudioExposureChartPoints:v8 withBlock:v19];
  v11 = [MEMORY[0x1E696BF20] computeLEQFromAudioExposureValues:v21[5]];
  if (v11)
  {
    v12 = [v9 unitController];
    v13 = [v12 unitForDisplayType:v10];

    v14 = MEMORY[0x1E696AD98];
    [v11 doubleValueForUnit:v13];
    v15 = [v14 numberWithDouble:?];
    v16 = [v9 unitController];
    v17 = HKFormattedStringFromValue(v15, v10, v16, 0, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v13 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

- (id)valueContextString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __109___HKAudioVisibleRangeQuantityContextDelegate_valueContextString_applicationItems_representativeDisplayType___block_invoke;
  v14[3] = &unk_1E81B7660;
  v14[4] = &v15;
  [(_HKAudioVisibleRangeQuantityContextDelegate *)self _enumerateAudioExposureChartPoints:v8 withBlock:v14];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v16[3]];
  v12 = HKTimePeriodString(v11, 0);

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (void)_enumerateAudioExposureChartPoints:(id)a3 withBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 userInfo];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6[2](v6, v14);
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

@end