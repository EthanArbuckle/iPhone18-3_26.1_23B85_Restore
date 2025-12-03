@interface NTKAlarmRichComplicationExtraLargeCircularView
- (NTKAlarmRichComplicationExtraLargeCircularView)init;
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation NTKAlarmRichComplicationExtraLargeCircularView

- (NTKAlarmRichComplicationExtraLargeCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKAlarmRichComplicationExtraLargeCircularView;
  return [(NTKAlarmRichComplicationBaseCircularView *)&v3 initWithFamily:12];
}

- (int64_t)_backgroundFilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(device);

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_foregroundFilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(device);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end