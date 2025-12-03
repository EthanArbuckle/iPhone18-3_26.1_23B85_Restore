@interface IXSHealthKitDataUninstallAlert
+ (BOOL)healthKitDataSupportedOnDevice;
+ (Class)hkBehaviorClass;
+ (Class)hkHealthStoreClass;
+ (Class)hkSourceStoreClass;
+ (void)healthKitDataPresentForAppWithBundleID:(id)d completion:(id)completion;
+ (void)openHealthKitClasses;
+ (void)viewHealthKitDataForAppWithBundleID:(id)d;
- (IXSHealthKitDataUninstallAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier;
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

- (IXSHealthKitDataUninstallAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = IXSHealthKitDataUninstallAlert;
  v4 = [(IXSUninstallAlert *)&v7 initWithAppRecord:record bundleIdentifier:identifier removability:1 deletionIsRestricted:0];
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
    appRecord = [(IXSUninstallAlert *)self appRecord];
    localizedName = [appRecord localizedName];
    v3 = [NSString localizedStringWithFormat:v4, localizedName];
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

+ (void)healthKitDataPresentForAppWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if ([@"com.apple.Health" isEqualToString:dCopy])
  {
LABEL_11:
    completionCopy[2](completionCopy, 0);
    goto LABEL_12;
  }

  v8 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "+[IXSHealthKitDataUninstallAlert healthKitDataPresentForAppWithBundleID:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Checking if HealthKit data is available", buf, 0xCu);
  }

  v9 = [objc_msgSend(self "hkHealthStoreClass")];
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

  v12 = objc_alloc_init([self hkHealthStoreClass]);
  v13 = [objc_alloc(objc_msgSend(self "hkSourceStoreClass"))];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100070ACC;
  v14[3] = &unk_1001031F0;
  v15 = dCopy;
  v16 = completionCopy;
  [v13 fetchHasSampleWithBundleIdentifier:v15 completion:v14];

LABEL_12:
}

+ (void)viewHealthKitDataForAppWithBundleID:(id)d
{
  dCopy = d;
  v5 = [objc_msgSend(self "hkBehaviorClass")];
  healthAppHiddenOrNotInstalled = [v5 healthAppHiddenOrNotInstalled];

  if (healthAppHiddenOrNotInstalled)
  {
    v7 = [NSURL URLWithString:@"prefs:root=HEALTH"];
  }

  else
  {
    dCopy = [NSString stringWithFormat:@"x-apple-health://AuthorizationManagement/%@", dCopy];
    v7 = [NSURL URLWithString:dCopy];
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