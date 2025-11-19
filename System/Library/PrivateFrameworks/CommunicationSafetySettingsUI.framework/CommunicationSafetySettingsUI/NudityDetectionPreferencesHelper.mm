@interface NudityDetectionPreferencesHelper
+ (BOOL)nudityDetectionAvailableForBundleID:(id)a3;
+ (BOOL)nudityDetectionFeatureEnabled;
+ (id)classForNudityDetectionSettings;
+ (id)nudityDetectionOnOffLabelForBundleID:(id)a3;
+ (id)nudityDetectionRowIconID;
+ (id)nudityDetectionRowLabel;
+ (void)initializeNudityDetection;
- (NudityDetectionPreferencesHelper)init;
@end

@implementation NudityDetectionPreferencesHelper

+ (id)classForNudityDetectionSettings
{
  v0 = sub_21CDDBAFC();

  return v0;
}

+ (void)initializeNudityDetection
{
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

+ (id)nudityDetectionRowIconID
{
  v2 = sub_21CDDBAFC();

  return v2;
}

+ (id)nudityDetectionRowLabel
{
  if (qword_28120E970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28120E978;
  v3 = sub_21CDDBAFC();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    sub_21CDDBB2C();
    v4 = sub_21CDDBAFC();
  }

  return v4;
}

+ (BOOL)nudityDetectionAvailableForBundleID:(id)a3
{
  v3 = sub_21CDDBB2C();
  v5 = v4;
  if (qword_28120ED98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v6 = sub_21CDD7078(v3, v5);

  return v6 & 1;
}

+ (id)nudityDetectionOnOffLabelForBundleID:(id)a3
{
  v3 = sub_21CDDBB2C();
  sub_21CDCBC60(v3, v4);

  v5 = sub_21CDDBAFC();

  return v5;
}

+ (BOOL)nudityDetectionFeatureEnabled
{
  v4[3] = &_s5FlagsON;
  v4[4] = sub_21CDCB504();
  v2 = sub_21CDDB69C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

- (NudityDetectionPreferencesHelper)init
{
  v3.receiver = self;
  v3.super_class = NudityDetectionPreferencesHelper;
  return [(NudityDetectionPreferencesHelper *)&v3 init];
}

@end