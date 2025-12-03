@interface UNUserNotificationCenter(NewsUIBridge)
- (void)ts_replaceContentForRequestWithIdentifier:()NewsUIBridge replacementContent:completionHandler:;
@end

@implementation UNUserNotificationCenter(NewsUIBridge)

- (void)ts_replaceContentForRequestWithIdentifier:()NewsUIBridge replacementContent:completionHandler:
{
  v7 = MEMORY[0x277CE2028];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  currentNotificationCenter = [v7 currentNotificationCenter];
  [currentNotificationCenter replaceContentForRequestWithIdentifier:v10 replacementContent:v9 completionHandler:v8];
}

@end