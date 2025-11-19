@interface IXSHealthKitDataUninstallAlert
+ (BOOL)healthKitDataSupportedOnDevice;
+ (Class)hkBehaviorClass;
+ (Class)hkHealthStoreClass;
+ (Class)hkSourceStoreClass;
+ (void)healthKitDataPresentForAppWithBundleID:(id)a3 completion:(id)a4;
+ (void)openHealthKitClasses;
+ (void)viewHealthKitDataForAppWithBundleID:(id)a3;
- (IXSHealthKitDataUninstallAlert)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4;
- (id)cancelButtonLabel;
- (id)message;
- (id)title;
- (unint64_t)notificationFlags;
@end

@implementation IXSHealthKitDataUninstallAlert

+ (void)openHealthKitClasses
{
  if (qword_100121E08 != -1)
  {
    sub_1000A3604();
  }
}

+ (Class)hkHealthStoreClass
{
  +[IXSHealthKitDataUninstallAlert openHealthKitClasses];
  v2 = qword_100121E20;

  return v2;
}

+ (Class)hkSourceStoreClass
{
  +[IXSHealthKitDataUninstallAlert openHealthKitClasses];
  v2 = qword_100121E28;

  return v2;
}

+ (Class)hkBehaviorClass
{
  +[IXSHealthKitDataUninstallAlert openHealthKitClasses];
  v2 = qword_100121E30;

  return v2;
}

+ (BOOL)healthKitDataSupportedOnDevice
{
  if (qword_100121E18 != -1)
  {
    sub_1000A3754();
  }

  return byte_100121E10;
}

- (IXSHealthKitDataUninstallAlert)initWithAppRecord:(id)a3 bundleIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = IXSHealthKitDataUninstallAlert;
  v4 = [(IXSUninstallAlert *)&v7 initWithAppRecord:a3 bundleIdentifier:a4 removability:1 deletionIsRestricted:0];
  v5 = v4;
  if (v4)
  {
    [(IXSUninstallAlert *)v4 setTypeDescription:@"HealthKit data"];
    [(IXSUninstallAlert *)v5 setDefaultButtonAppearsDestructive:0];
  }

  return v5;
}

- (id)title
{
  v3 = @"HEALTHKIT_SHOW_DATA_TITLE";
  v4 = [(IXSUninstallAlert *)self localizedStringForKey:@"HEALTHKIT_SHOW_DATA_TITLE" withFormatHint:@"There is data from “%@” saved in Health"];
  if (v4 != @"There is data from “%@” saved in Health")
  {
    v5 = [(IXSUninstallAlert *)self appRecord];
    v6 = [v5 localizedName];
    v3 = [NSString localizedStringWithFormat:v4, v6];
  }

  return v3;
}

- (id)message
{
  v2 = @"HEALTHKIT_SHOW_DATA_BODY";
  v3 = [(IXSUninstallAlert *)self localizedStringForKey:@"HEALTHKIT_SHOW_DATA_BODY" withFormatHint:@"This data will remain in Health unless you choose to delete it."];
  if (v3 != @"This data will remain in Health unless you choose to delete it.")
  {
    v2 = [NSString localizedStringWithFormat:v3];
  }

  return v2;
}

- (id)cancelButtonLabel
{
  if ([objc_opt_class() healthKitDataSupportedOnDevice])
  {
    v3 = [(IXSUninstallAlert *)self localizedStringForKey:@"HEALTHKIT_SHOW_DATA_VIEW" withFormatHint:@"View"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)notificationFlags
{
  if ([objc_opt_class() healthKitDataSupportedOnDevice])
  {
    return 3;
  }

  else
  {
    return 35;
  }
}

+ (void)healthKitDataPresentForAppWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([@"com.apple.Health" isEqualToString:v6])
  {
LABEL_11:
    v7[2](v7, 0);
    goto LABEL_12;
  }

  v8 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "+[IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Checking if HealthKit data is available", buf, 0xCu);
  }

  v9 = [objc_msgSend(a1 "hkHealthStoreClass")];
  v10 = sub_1000031B0(off_100121958);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136315138;
      v18 = "+[IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: No HealthKit data available on the device", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (v11)
  {
    *buf = 136315138;
    v18 = "+[IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Checking if this app has HealthKit data", buf, 0xCu);
  }

  v12 = objc_alloc_init([a1 hkHealthStoreClass]);
  v13 = [objc_alloc(objc_msgSend(a1 "hkSourceStoreClass"))];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100070ACC;
  v14[3] = &unk_1001031F0;
  v15 = v6;
  v16 = v7;
  [v13 fetchHasSampleWithBundleIdentifier:v15 completion:v14];

LABEL_12:
}

+ (void)viewHealthKitDataForAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "hkBehaviorClass")];
  v6 = [v5 healthAppHiddenOrNotInstalled];

  if (v6)
  {
    v7 = [NSURL URLWithString:@"prefs:root=HEALTH"];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"x-apple-health://AuthorizationManagement/%@", v4];
    v7 = [NSURL URLWithString:v8];
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  v13 = 0;
  v10 = [v9 openSensitiveURL:v7 withOptions:0 error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "+[IXSHealthKitDataUninstallAlert viewHealthKitDataForAppWithBundleID:]";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to open url at %@: %@", buf, 0x20u);
    }
  }
}

@end