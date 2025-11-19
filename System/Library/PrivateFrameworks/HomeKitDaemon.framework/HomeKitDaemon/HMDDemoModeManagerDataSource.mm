@interface HMDDemoModeManagerDataSource
+ (HMDDemoModeManagerDataSource)defaultDataSource;
+ (void)setDefaultDataSourceOverride:(id)a3;
- (BOOL)isAppleMediaAccessory;
- (BOOL)isDemoModeMadeForDemoBundle;
- (BOOL)isDemoModeV2Enabled;
- (BOOL)isDemoModeV2EnabledAndActive;
- (BOOL)isDemoModeV2WithoutCKEnabled;
- (HMDDemoModeManagerDataSource)init;
- (HMDHH2FrameworkSwitchDataSource)frameworkSwitchDataSource;
- (HMFProductInfo)productInfo;
- (void)setFrameworkSwitchDataSource:(id)a3;
@end

@implementation HMDDemoModeManagerDataSource

- (BOOL)isDemoModeV2Enabled
{
  v2 = [objc_opt_self() defaultDataSource];
  v3 = [v2 isDemoModeV2Enabled];

  return v3;
}

- (BOOL)isDemoModeV2EnabledAndActive
{
  v2 = [objc_opt_self() defaultDataSource];
  v3 = [v2 isDemoModeV2Enabled];

  if (!v3)
  {
    return 0;
  }

  return isDemoModeV2Active();
}

- (BOOL)isDemoModeV2WithoutCKEnabled
{
  v2 = [objc_opt_self() defaultDataSource];
  v3 = [v2 isDemoModeV2Enabled];

  if (v3)
  {
    v4 = isDemoModeV2Active();
    if (v4)
    {
      LOBYTE(v4) = isCloudKitRequiredForDemoModeV2() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isDemoModeMadeForDemoBundle
{
  v2 = [objc_opt_self() defaultDataSource];
  v3 = [v2 isDemoModeV2Enabled];

  if (!v3 || !isDemoModeV2Active())
  {
    return 0;
  }

  return isDemoModeV2MadeForDemoBundle();
}

- (BOOL)isAppleMediaAccessory
{
  v2 = objc_opt_self();

  return [v2 isAppleMediaAccessory];
}

- (HMFProductInfo)productInfo
{
  v2 = [objc_opt_self() productInfo];

  return v2;
}

- (HMDHH2FrameworkSwitchDataSource)frameworkSwitchDataSource
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMDDemoModeManagerDataSource_frameworkSwitchDataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setFrameworkSwitchDataSource:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___HMDDemoModeManagerDataSource_frameworkSwitchDataSource);
  *(&self->super.isa + OBJC_IVAR___HMDDemoModeManagerDataSource_frameworkSwitchDataSource) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

+ (HMDDemoModeManagerDataSource)defaultDataSource
{
  if (qword_27D87F8F8)
  {
    v2 = qword_27D87F8F8;
  }

  else
  {
    if (qword_281402220 != -1)
    {
      swift_once();
    }

    v2 = qword_281402230;
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();

  return v2;
}

+ (void)setDefaultDataSourceOverride:(id)a3
{
  qword_27D87F8F8 = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (HMDDemoModeManagerDataSource)init
{
  *(&self->super.isa + OBJC_IVAR___HMDDemoModeManagerDataSource_frameworkSwitchDataSource) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DemoModeManagerDataSource();
  return [(HMDDemoModeManagerDataSource *)&v3 init];
}

@end