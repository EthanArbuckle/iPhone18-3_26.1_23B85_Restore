@interface NSDateFormatter
@end

@implementation NSDateFormatter

void __76__NSDateFormatter_RemoteManagementModel__rmmodel_sharedRFC3339DateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = rmmodel_sharedRFC3339DateFormatter_rfcFormatter;
  rmmodel_sharedRFC3339DateFormatter_rfcFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [rmmodel_sharedRFC3339DateFormatter_rfcFormatter setLocale:v2];

  [rmmodel_sharedRFC3339DateFormatter_rfcFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [rmmodel_sharedRFC3339DateFormatter_rfcFormatter setTimeZone:v3];
}

@end