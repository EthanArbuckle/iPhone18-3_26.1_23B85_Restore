@interface HKAudiogramChartPoint
+ (id)_chartPointFromSensitivityPoint:(id)a3 isLeftEar:(BOOL)a4;
+ (id)chartPointsFromSensitivityPoints:(id)a3 isLeftEar:(BOOL)a4;
- (HKAudiogramChartPoint)initWithChartData:(id)a3;
- (id)allYValues;
@end

@implementation HKAudiogramChartPoint

- (HKAudiogramChartPoint)initWithChartData:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = HKAudiogramChartPoint;
  v6 = [(HKAudiogramChartPoint *)&v22 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    [v5 frequencyHertz];
    [HKAudiogramChartPoint axisValueFromFrequency:?];
    v8 = [v7 numberWithDouble:?];
    xValue = v6->_xValue;
    v6->_xValue = v8;

    v10 = [MEMORY[0x1E696C608] sharedBehavior];
    v11 = [v10 features];
    if ([v11 yodel])
    {
      v12 = [v5 clampedSensitivityDBHL];

      if (v12)
      {
        v13 = MEMORY[0x1E696AD98];
        v14 = [v5 clampedSensitivityDBHL];
        [v14 doubleValue];
        v16 = [v13 numberWithDouble:-v15];
        yValue = v6->_yValue;
        v6->_yValue = v16;

LABEL_7:
        objc_storeStrong(&v6->_chartData, a3);
        goto LABEL_8;
      }
    }

    else
    {
    }

    v18 = MEMORY[0x1E696AD98];
    [v5 sensitivityDBHL];
    v20 = [v18 numberWithDouble:-v19];
    v14 = v6->_yValue;
    v6->_yValue = v20;
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

+ (id)chartPointsFromSensitivityPoints:(id)a3 isLeftEar:(BOOL)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__HKAudiogramChartPoint_chartPointsFromSensitivityPoints_isLeftEar___block_invoke;
  v6[3] = &__block_descriptor_41_e37__16__0__HKAudiogramSensitivityPoint_8l;
  v6[4] = a1;
  v7 = a4;
  v4 = [a3 hk_map:v6];

  return v4;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKAudiogramChartPoint *)self yValue];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_chartPointFromSensitivityPoint:(id)a3 isLeftEar:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 frequency];
  v7 = [MEMORY[0x1E696C510] hertzUnit];
  [v6 doubleValueForUnit:v7];
  v9 = v8;

  v10 = [v5 tests];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HKAudiogramChartPoint__chartPointFromSensitivityPoint_isLeftEar___block_invoke;
  v16[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v16[4] = !v4;
  v11 = [v10 hk_filter:v16];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = [[HKAudiogramChartData alloc] initWithFrequency:v12 test:v9];
    v14 = [[HKAudiogramChartPoint alloc] initWithChartData:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end