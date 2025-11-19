@interface FeatureFlagsManager
+ (BOOL)isExtensionAttestationEnabled;
+ (BOOL)isMacEnabled;
+ (BOOL)isModernizationEnabled;
@end

@implementation FeatureFlagsManager

+ (BOOL)isModernizationEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057D4;
  block[3] = &unk_10000C730;
  v5 = v2;
  if (qword_100010D30 != -1)
  {
    dispatch_once(&qword_100010D30, block);
  }

  return v2;
}

+ (BOOL)isMacEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000595C;
  block[3] = &unk_10000C730;
  v5 = v2;
  if (qword_100010D38 != -1)
  {
    dispatch_once(&qword_100010D38, block);
  }

  return v2;
}

+ (BOOL)isExtensionAttestationEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005AE4;
  block[3] = &unk_10000C730;
  v5 = v2;
  if (qword_100010D40 != -1)
  {
    dispatch_once(&qword_100010D40, block);
  }

  return v2;
}

@end