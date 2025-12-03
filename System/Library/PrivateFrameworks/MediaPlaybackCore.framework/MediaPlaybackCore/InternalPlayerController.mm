@interface InternalPlayerController
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)reason;
@end

@implementation InternalPlayerController

- (NSDictionary)stateDictionary
{

  sub_1C5DBDE9C();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5DC72C8();
}

@end