@interface HKAudiogramChartData
+ (id)_clampedSensitivityDBHLForSensitivityTest:(id)test;
+ (id)_lowerClampedSensitivityDBHLForSensitivityTest:(id)test;
+ (id)_upperClampedSensitivityDBHLForSensitivityTest:(id)test;
- (HKAudiogramChartData)initWithFrequency:(double)frequency sensitivity:(double)sensitivity isLeftEar:(BOOL)ear;
- (HKAudiogramChartData)initWithFrequency:(double)frequency test:(id)test;
@end

@implementation HKAudiogramChartData

- (HKAudiogramChartData)initWithFrequency:(double)frequency sensitivity:(double)sensitivity isLeftEar:(BOOL)ear
{
  v9.receiver = self;
  v9.super_class = HKAudiogramChartData;
  result = [(HKAudiogramChartData *)&v9 init];
  if (result)
  {
    result->_frequencyHertz = frequency;
    result->_sensitivityDBHL = sensitivity;
    result->_isLeftEar = ear;
  }

  return result;
}

- (HKAudiogramChartData)initWithFrequency:(double)frequency test:(id)test
{
  testCopy = test;
  v19.receiver = self;
  v19.super_class = HKAudiogramChartData;
  v7 = [(HKAudiogramChartData *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_frequencyHertz = frequency;
    sensitivity = [testCopy sensitivity];
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [sensitivity doubleValueForUnit:decibelHearingLevelUnit];
    v8->_sensitivityDBHL = v11;

    v12 = [HKAudiogramChartData _clampedSensitivityDBHLForSensitivityTest:testCopy];
    clampedSensitivityDBHL = v8->_clampedSensitivityDBHL;
    v8->_clampedSensitivityDBHL = v12;

    v14 = [HKAudiogramChartData _upperClampedSensitivityDBHLForSensitivityTest:testCopy];
    upperClampedSensitivityDBHL = v8->_upperClampedSensitivityDBHL;
    v8->_upperClampedSensitivityDBHL = v14;

    v16 = [HKAudiogramChartData _lowerClampedSensitivityDBHLForSensitivityTest:testCopy];
    lowerClampedSensitivityDBHL = v8->_lowerClampedSensitivityDBHL;
    v8->_lowerClampedSensitivityDBHL = v16;

    v8->_isMasked = [testCopy masked];
    v8->_isLeftEar = [testCopy side] == 0;
  }

  return v8;
}

+ (id)_clampedSensitivityDBHLForSensitivityTest:(id)test
{
  clampedSensitivity = [test clampedSensitivity];
  if (clampedSensitivity)
  {
    v4 = MEMORY[0x1E696AD98];
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [clampedSensitivity doubleValueForUnit:decibelHearingLevelUnit];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_upperClampedSensitivityDBHLForSensitivityTest:(id)test
{
  clampingRange = [test clampingRange];
  upperBound = [clampingRange upperBound];

  if (upperBound)
  {
    v5 = MEMORY[0x1E696AD98];
    upperBound2 = [clampingRange upperBound];
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [upperBound2 doubleValueForUnit:decibelHearingLevelUnit];
    upperBound = [v5 numberWithDouble:?];
  }

  return upperBound;
}

+ (id)_lowerClampedSensitivityDBHLForSensitivityTest:(id)test
{
  clampingRange = [test clampingRange];
  lowerBound = [clampingRange lowerBound];

  if (lowerBound)
  {
    v5 = MEMORY[0x1E696AD98];
    lowerBound2 = [clampingRange lowerBound];
    decibelHearingLevelUnit = [MEMORY[0x1E696C510] decibelHearingLevelUnit];
    [lowerBound2 doubleValueForUnit:decibelHearingLevelUnit];
    lowerBound = [v5 numberWithDouble:?];
  }

  return lowerBound;
}

@end