@interface HKInteractiveChartBloodPressureOverlayData
- (id)description;
@end

@implementation HKInteractiveChartBloodPressureOverlayData

- (id)description
{
  overlayMode = [(HKInteractiveChartBloodPressureOverlayData *)self overlayMode];
  v4 = @"unknown";
  if (overlayMode == 2)
  {
    v4 = @"diastolic";
  }

  if (overlayMode == 1)
  {
    v5 = @"systolic";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = HKInteractiveChartBloodPressureOverlayData;
  v7 = [(HKInteractiveChartSinglePointData *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ - overlay mode: %@", v7, v5];

  return v8;
}

@end