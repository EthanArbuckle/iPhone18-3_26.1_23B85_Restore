@interface HKAudiogramChartPoint
+ (id)_chartPointFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear;
+ (id)chartPointsFromSensitivityPoints:(id)points isLeftEar:(BOOL)ear;
- (HKAudiogramChartPoint)initWithChartData:(id)data;
- (id)allYValues;
@end

@implementation HKAudiogramChartPoint

- (HKAudiogramChartPoint)initWithChartData:(id)data
{
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = HKAudiogramChartPoint;
  v6 = [(HKAudiogramChartPoint *)&v22 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    [dataCopy frequencyHertz];
    [HKAudiogramChartPoint axisValueFromFrequency:?];
    v8 = [v7 numberWithDouble:?];
    xValue = v6->_xValue;
    v6->_xValue = v8;

    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    features = [mEMORY[0x1E696C608] features];
    if ([features yodel])
    {
      clampedSensitivityDBHL = [dataCopy clampedSensitivityDBHL];

      if (clampedSensitivityDBHL)
      {
        v13 = MEMORY[0x1E696AD98];
        clampedSensitivityDBHL2 = [dataCopy clampedSensitivityDBHL];
        [clampedSensitivityDBHL2 doubleValue];
        v16 = [v13 numberWithDouble:-v15];
        yValue = v6->_yValue;
        v6->_yValue = v16;

LABEL_7:
        objc_storeStrong(&v6->_chartData, data);
        goto LABEL_8;
      }
    }

    else
    {
    }

    v18 = MEMORY[0x1E696AD98];
    [dataCopy sensitivityDBHL];
    v20 = [v18 numberWithDouble:-v19];
    clampedSensitivityDBHL2 = v6->_yValue;
    v6->_yValue = v20;
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

+ (id)chartPointsFromSensitivityPoints:(id)points isLeftEar:(BOOL)ear
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__HKAudiogramChartPoint_chartPointsFromSensitivityPoints_isLeftEar___block_invoke;
  v6[3] = &__block_descriptor_41_e37__16__0__HKAudiogramSensitivityPoint_8l;
  v6[4] = self;
  earCopy = ear;
  v4 = [points hk_map:v6];

  return v4;
}

- (id)allYValues
{
  v5[1] = *MEMORY[0x1E69E9840];
  yValue = [(HKAudiogramChartPoint *)self yValue];
  v5[0] = yValue;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_chartPointFromSensitivityPoint:(id)point isLeftEar:(BOOL)ear
{
  earCopy = ear;
  pointCopy = point;
  frequency = [pointCopy frequency];
  hertzUnit = [MEMORY[0x1E696C510] hertzUnit];
  [frequency doubleValueForUnit:hertzUnit];
  v9 = v8;

  tests = [pointCopy tests];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__HKAudiogramChartPoint__chartPointFromSensitivityPoint_isLeftEar___block_invoke;
  v16[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v16[4] = !earCopy;
  v11 = [tests hk_filter:v16];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v13 = [[HKAudiogramChartData alloc] initWithFrequency:firstObject test:v9];
    v14 = [[HKAudiogramChartPoint alloc] initWithChartData:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end