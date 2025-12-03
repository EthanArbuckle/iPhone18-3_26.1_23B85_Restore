@interface NTKAlarmRichComplicationCircularView
- (NTKAlarmRichComplicationCircularView)init;
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation NTKAlarmRichComplicationCircularView

- (NTKAlarmRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKAlarmRichComplicationCircularView;
  return [(NTKAlarmRichComplicationBaseCircularView *)&v3 initWithFamily:10];
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