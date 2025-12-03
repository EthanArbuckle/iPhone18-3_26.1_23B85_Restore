@interface HKHeartbeatSeriesSample(HKDataMetadataSampleExtensions)
- (HKHeartbeatSequenceChartData)sequenceChartData;
@end

@implementation HKHeartbeatSeriesSample(HKDataMetadataSampleExtensions)

- (HKHeartbeatSequenceChartData)sequenceChartData
{
  v2 = objc_alloc_init(HKHeartbeatSequenceChartData);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __76__HKHeartbeatSeriesSample_HKDataMetadataSampleExtensions__sequenceChartData__block_invoke;
  v11 = &unk_1E81B6DD0;
  v13 = v17;
  v14 = &v19;
  v3 = v2;
  v12 = v3;
  v15 = v16;
  [self _enumerateHeartbeatDataWithBlock:&v8];
  if (v20[3] == 0.0)
  {
    v4 = 0;
  }

  else
  {
    metadata = [self metadata];
    v6 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696C738]];

    if (v6)
    {
      [v6 doubleValue];
      [(HKHeartbeatSequenceChartData *)v3 setInitialXAxisOffset:?];
    }

    v4 = v3;
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);

  return v4;
}

@end