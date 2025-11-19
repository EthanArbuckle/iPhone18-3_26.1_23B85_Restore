@interface MIUIDisplayConfiguration
+ (id)lockScreenConfiguration;
+ (id)standardConfiguration;
- (MIUIDisplayConfiguration)init;
@end

@implementation MIUIDisplayConfiguration

+ (id)lockScreenConfiguration
{
  v2 = objc_alloc_init(MIUIDisplayConfiguration);
  [(MIUIDisplayConfiguration *)v2 setIsLockScreen:1];
  [(MIUIDisplayConfiguration *)v2 setIsEditingAvailable:0];
  [(MIUIDisplayConfiguration *)v2 setIsShowWhenLockedVisible:0];
  [(MIUIDisplayConfiguration *)v2 setIsShareDuringEmergencyCallVisible:0];
  [(MIUIDisplayConfiguration *)v2 setAccessPoint:0];

  return v2;
}

+ (id)standardConfiguration
{
  v2 = objc_alloc_init(MIUIDisplayConfiguration);

  return v2;
}

- (MIUIDisplayConfiguration)init
{
  v5.receiver = self;
  v5.super_class = MIUIDisplayConfiguration;
  v2 = [(MIUIDisplayConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIUIDisplayConfiguration *)v2 setEntryPoint:0];
    [(MIUIDisplayConfiguration *)v3 setIsEditingAvailable:1];
    [(MIUIDisplayConfiguration *)v3 setIsDeletionAvailable:0];
    [(MIUIDisplayConfiguration *)v3 setShouldShowDonateLifeRegistrationIfAvailable:0];
    [(MIUIDisplayConfiguration *)v3 setIsShowWhenLockedVisible:1];
    [(MIUIDisplayConfiguration *)v3 setIsShareDuringEmergencyCallVisible:1];
    [(MIUIDisplayConfiguration *)v3 setAccessPoint:0];
    [(MIUIDisplayConfiguration *)v3 setIsHomeIndicatorHidden:0];
    [(MIUIDisplayConfiguration *)v3 setSuggestHealthData:0];
    [(MIUIDisplayConfiguration *)v3 setShouldSaveDataToHealthDetails:0];
    [(MIUIDisplayConfiguration *)v3 setIsLockScreen:0];
    [(MIUIDisplayConfiguration *)v3 setIsHostingView:0];
    [(MIUIDisplayConfiguration *)v3 setShouldShowDoneButton:0];
  }

  return v3;
}

@end