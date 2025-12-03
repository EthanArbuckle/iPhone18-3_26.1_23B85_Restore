@interface BackgroundTaskController
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)reason;
@end

@implementation BackgroundTaskController

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5DB9530();
}

- (NSDictionary)stateDictionary
{

  sub_1C5DB9AAC();

  v2 = sub_1C6016840();

  return v2;
}

@end