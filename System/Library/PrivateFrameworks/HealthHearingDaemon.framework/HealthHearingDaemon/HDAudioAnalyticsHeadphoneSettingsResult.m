@interface HDAudioAnalyticsHeadphoneSettingsResult
- (HDAudioAnalyticsHeadphoneSettingsResult)initWithLocalDevice:(id)a3 activePairedWatch:(id)a4;
@end

@implementation HDAudioAnalyticsHeadphoneSettingsResult

- (HDAudioAnalyticsHeadphoneSettingsResult)initWithLocalDevice:(id)a3 activePairedWatch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HDAudioAnalyticsHeadphoneSettingsResult;
  v8 = [(HDAudioAnalyticsHeadphoneSettingsResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HDAudioAnalyticsHeadphoneSettingsResult *)v8 setLocalDevice:v6];
    [(HDAudioAnalyticsHeadphoneSettingsResult *)v9 setActivePairedWatch:v7];
    v10 = v9;
  }

  return v9;
}

@end