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
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

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
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

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