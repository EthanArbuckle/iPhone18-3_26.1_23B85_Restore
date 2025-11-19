@interface FudUtilities
+ (BOOL)isFirstLaunchSinceBoot;
+ (BOOL)logFudAggd:(id)a3 status:(id)a4 info:(id)a5 value:(int64_t)a6;
+ (BOOL)postNotification:(id)a3;
+ (id)copyPluginAtURL:(id)a3 forFilter:(id)a4 delegate:(id)a5 info:(id *)a6 options:(id)a7 bundleVersion:(id *)a8;
+ (id)getLocalizedString:(id)a3 withBundle:(id)a4 defaultValue:(id)a5;
+ (id)getStringFromBundleLocalizationTable:(id)a3 withBundle:(id)a4 inLocalization:(id)a5 fromTable:(id)a6;
+ (id)getURLForServiceIdentifier:(id)a3;
@end

@implementation FudUtilities

+ (BOOL)postNotification:(id)a3
{
  FudLog();
  v4 = notify_post([a3 cStringUsingEncoding:{4, a3}]);
  if (v4)
  {
    FudLog();
  }

  return v4 == 0;
}

+ (BOOL)logFudAggd:(id)a3 status:(id)a4 info:(id)a5 value:(int64_t)a6
{
  if (a5)
  {
    v6 = CFStringCreateWithFormat(0, 0, @"com.apple.MobileAccessoryUpdater.%@.%@.%@", a4, a3, a5);
  }

  else
  {
    v6 = CFStringCreateWithFormat(0, 0, @"com.apple.MobileAccessoryUpdater.%@.%@", a4, a3);
  }

  v7 = v6;
  if (v6)
  {
    ADClientAddValueForScalarKey();
    CFRelease(v7);
  }

  return 1;
}

+ (BOOL)isFirstLaunchSinceBoot
{
  if (qword_100099808 != -1)
  {
    sub_10004CEC8();
  }

  return byte_100099800;
}

+ (id)getStringFromBundleLocalizationTable:(id)a3 withBundle:(id)a4 inLocalization:(id)a5 fromTable:(id)a6
{
  result = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [a4 pathForResource:a6 ofType:@"strings" inDirectory:0 forLocalization:a5]);
  if (result)
  {

    return [result objectForKey:a3];
  }

  return result;
}

+ (id)getLocalizedString:(id)a3 withBundle:(id)a4 defaultValue:(id)a5
{
  v5 = [a4 localizedStringForKey:a3 value:a5 table:@"Localizable"];
  [v5 UTF8String];
  FudLog();
  return v5;
}

+ (id)copyPluginAtURL:(id)a3 forFilter:(id)a4 delegate:(id)a5 info:(id *)a6 options:(id)a7 bundleVersion:(id *)a8
{
  if (a3)
  {
    v13 = [NSBundle bundleWithURL:?];
    v14 = [a7 mutableCopy];
    v15 = [(NSBundle *)v13 bundleIdentifier];
    FudLog();
    FudLog();
    [v14 setObject:v15 forKey:{@"AUServiceName", a4, a5, a7}];
    FudLog();
    v16 = [[AUServiceShim alloc] initWithDeviceClass:a4 delegate:a5 info:a6 options:v14, v15, a4, a5, a7];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      if (([0 conformsToProtocol:&OBJC_PROTOCOL___FudPlugin] & 1) == 0)
      {
        FudLog();
        v17 = 0;
        goto LABEL_8;
      }

      v17 = [[0 alloc] initWithDeviceClass:a4 delegate:a5 info:a6 options:a7];
      if (!v17)
      {
        FudLog();
        goto LABEL_8;
      }
    }

    if (a8)
    {
      *a8 = [(NSDictionary *)[(NSBundle *)v13 infoDictionary] objectForKey:kCFBundleVersionKey];
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
  }

LABEL_8:

  return v17;
}

+ (id)getURLForServiceIdentifier:(id)a3
{
  v4 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/"];
  if (!v4)
  {
    return 0;
  }

  v5 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v4 options:0 errorHandler:1, 0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSDirectoryEnumerator *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
LABEL_10:
    FudLog();
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([(NSString *)[[NSBundle bundleWithURL:?]] isEqualToString:a3])
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSDirectoryEnumerator *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  return v10;
}

@end