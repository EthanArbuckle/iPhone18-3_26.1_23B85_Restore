@interface HKAudiogramChartData
+ (id)_clampedSensitivityDBHLForSensitivityTest:(id)a3;
+ (id)_lowerClampedSensitivityDBHLForSensitivityTest:(id)a3;
+ (id)_upperClampedSensitivityDBHLForSensitivityTest:(id)a3;
- (HKAudiogramChartData)initWithFrequency:(double)a3 sensitivity:(double)a4 isLeftEar:(BOOL)a5;
- (HKAudiogramChartData)initWithFrequency:(double)a3 test:(id)a4;
@end

@implementation HKAudiogramChartData

- (HKAudiogramChartData)initWithFrequency:(double)a3 sensitivity:(double)a4 isLeftEar:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HKAudiogramChartData;
  result = [(HKAudiogramChartData *)&v9 init];
  if (result)
  {
    result->_frequencyHertz = a3;
    result->_sensitivityDBHL = a4;
    result->_isLeftEar = a5;
  }

  return result;
}

- (HKAudiogramChartData)initWithFrequency:(double)a3 test:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = HKAudiogramChartData;
  v7 = [(HKAudiogramChartData *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_frequencyHertz = a3;
    v9 = [v6 sensitivity];
    v10 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [v9 doubleValueForUnit:v10];
    v8->_sensitivityDBHL = v11;

    v12 = [HKAudiogramChartData _clampedSensitivityDBHLForSensitivityTest:v6];
    clampedSensitivityDBHL = v8->_clampedSensitivityDBHL;
    v8->_clampedSensitivityDBHL = v12;

    v14 = [HKAudiogramChartData _upperClampedSensitivityDBHLForSensitivityTest:v6];
    upperClampedSensitivityDBHL = v8->_upperClampedSensitivityDBHL;
    v8->_upperClampedSensitivityDBHL = v14;

    v16 = [HKAudiogramChartData _lowerClampedSensitivityDBHLForSensitivityTest:v6];
    lowerClampedSensitivityDBHL = v8->_lowerClampedSensitivityDBHL;
    v8->_lowerClampedSensitivityDBHL = v16;

    v8->_isMasked = [v6 masked];
    v8->_isLeftEar = [v6 side] == 0;
  }

  return v8;
}

+ (id)_clampedSensitivityDBHLForSensitivityTest:(id)a3
{
  v3 = [a3 clampedSensitivity];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [v3 doubleValueForUnit:v5];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_upperClampedSensitivityDBHLForSensitivityTest:(id)a3
{
  v3 = [a3 clampingRange];
  v4 = [v3 upperBound];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [v3 upperBound];
    v7 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [v6 doubleValueForUnit:v7];
    v4 = [v5 numberWithDouble:?];
  }

  return v4;
}

+ (id)_lowerClampedSensitivityDBHLForSensitivityTest:(id)a3
{
  v3 = [a3 clampingRange];
  v4 = [v3 lowerBound];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [v3 lowerBound];
    v7 = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [v6 doubleValueForUnit:v7];
    v4 = [v5 numberWithDouble:?];
  }

  return v4;
}

@end