@interface HDAudioAnalyticsHeadphoneSettingsResult
- (HDAudioAnalyticsHeadphoneSettingsResult)initWithLocalDevice:(id)device activePairedWatch:(id)watch;
@end

@implementation HDAudioAnalyticsHeadphoneSettingsResult

- (HDAudioAnalyticsHeadphoneSettingsResult)initWithLocalDevice:(id)device activePairedWatch:(id)watch
{
  deviceCopy = device;
  watchCopy = watch;
  v12.receiver = self;
  v12.super_class = HDAudioAnalyticsHeadphoneSettingsResult;
  v8 = [(HDAudioAnalyticsHeadphoneSettingsResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HDAudioAnalyticsHeadphoneSettingsResult *)v8 setLocalDevice:deviceCopy];
    [(HDAudioAnalyticsHeadphoneSettingsResult *)v9 setActivePairedWatch:watchCopy];
    v10 = v9;
  }

  return v9;
}

@end