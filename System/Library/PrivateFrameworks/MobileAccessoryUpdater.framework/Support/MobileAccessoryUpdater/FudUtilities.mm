@interface FudUtilities
+ (BOOL)isFirstLaunchSinceBoot;
+ (BOOL)logFudAggd:(id)aggd status:(id)status info:(id)info value:(int64_t)value;
+ (BOOL)postNotification:(id)notification;
+ (id)copyPluginAtURL:(id)l forFilter:(id)filter delegate:(id)delegate info:(id *)info options:(id)options bundleVersion:(id *)version;
+ (id)getLocalizedString:(id)string withBundle:(id)bundle defaultValue:(id)value;
+ (id)getStringFromBundleLocalizationTable:(id)table withBundle:(id)bundle inLocalization:(id)localization fromTable:(id)fromTable;
+ (id)getURLForServiceIdentifier:(id)identifier;
@end

@implementation FudUtilities

+ (BOOL)postNotification:(id)notification
{
  FudLog();
  v4 = notify_post([notification cStringUsingEncoding:{4, notification}]);
  if (v4)
  {
    FudLog();
  }

  return v4 == 0;
}

+ (BOOL)logFudAggd:(id)aggd status:(id)status info:(id)info value:(int64_t)value
{
  if (info)
  {
    v6 = CFStringCreateWithFormat(0, 0, @"com.apple.MobileAccessoryUpdater.%@.%@.%@", status, aggd, info);
  }

  else
  {
    v6 = CFStringCreateWithFormat(0, 0, @"com.apple.MobileAccessoryUpdater.%@.%@", status, aggd);
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

+ (id)getStringFromBundleLocalizationTable:(id)table withBundle:(id)bundle inLocalization:(id)localization fromTable:(id)fromTable
{
  result = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [bundle pathForResource:fromTable ofType:@"strings" inDirectory:0 forLocalization:localization]);
  if (result)
  {

    return [result objectForKey:table];
  }

  return result;
}

+ (id)getLocalizedString:(id)string withBundle:(id)bundle defaultValue:(id)value
{
  v5 = [bundle localizedStringForKey:string value:value table:@"Localizable"];
  [v5 UTF8String];
  FudLog();
  return v5;
}

+ (id)copyPluginAtURL:(id)l forFilter:(id)filter delegate:(id)delegate info:(id *)info options:(id)options bundleVersion:(id *)version
{
  if (l)
  {
    v13 = [NSBundle bundleWithURL:?];
    v14 = [options mutableCopy];
    bundleIdentifier = [(NSBundle *)v13 bundleIdentifier];
    FudLog();
    FudLog();
    [v14 setObject:bundleIdentifier forKey:{@"AUServiceName", filter, delegate, options}];
    FudLog();
    options = [[AUServiceShim alloc] initWithDeviceClass:filter delegate:delegate info:info options:v14, bundleIdentifier, filter, delegate, options];
    if (options)
    {
      v17 = options;
    }

    else
    {
      if (([0 conformsToProtocol:&OBJC_PROTOCOL___FudPlugin] & 1) == 0)
      {
        FudLog();
        v17 = 0;
        goto LABEL_8;
      }

      v17 = [[0 alloc] initWithDeviceClass:filter delegate:delegate info:info options:options];
      if (!v17)
      {
        FudLog();
        goto LABEL_8;
      }
    }

    if (version)
    {
      *version = [(NSDictionary *)[(NSBundle *)v13 infoDictionary] objectForKey:kCFBundleVersionKey];
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

+ (id)getURLForServiceIdentifier:(id)identifier
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
    if ([(NSString *)[[NSBundle bundleWithURL:?]] isEqualToString:identifier])
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