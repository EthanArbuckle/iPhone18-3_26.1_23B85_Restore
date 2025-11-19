@interface HKInteractiveChartAudioData
- (NSString)description;
- (id)_durationString:(double)a3;
@end

@implementation HKInteractiveChartAudioData

- (NSString)description
{
  [(HKInteractiveChartAudioData *)self duration];
  v3 = [(HKInteractiveChartAudioData *)self _durationString:?];
  v4 = [(HKInteractiveChartAudioData *)self overviewData];
  if (v4)
  {
    v5 = [(HKInteractiveChartAudioData *)self overviewData];
    v6 = [v5 description];
  }

  else
  {
    v6 = @"nil";
  }

  v7 = MEMORY[0x1E696AEC0];
  [(HKInteractiveChartAudioData *)self averageLEQ];
  v9 = [v7 stringWithFormat:@"HKInteractiveChartAudioData(%p, average %.2f, duration %@, overview %@)", self, v8, v3, v6];

  return v9;
}

- (id)_durationString:(double)a3
{
  v3 = floor(a3 / 3600.0);
  v4 = a3 - v3 * 3600.0;
  v5 = floor(v4 / 60.0);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%02.0f:%02.0f:%02.2f", *&v3, *&v5, v4 - v5 * 60.0];
}

@end