@interface NSString
@end

@implementation NSString

uint64_t __62__NSString_Notification__mtStringByAppendingNotificationDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = mtStringByAppendingNotificationDate____dateFormatter;
  mtStringByAppendingNotificationDate____dateFormatter = v0;

  v2 = mtStringByAppendingNotificationDate____dateFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = mtStringByAppendingNotificationDate____dateFormatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  v6 = mtStringByAppendingNotificationDate____dateFormatter;

  return [v6 setDateFormat:@"yyyy-MM-dd-HH-mm"];
}

@end