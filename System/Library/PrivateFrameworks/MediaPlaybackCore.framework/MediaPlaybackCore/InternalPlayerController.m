@interface InternalPlayerController
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)a3;
@end

@implementation InternalPlayerController

- (NSDictionary)stateDictionary
{

  sub_1C5DBDE9C();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5DC72C8();
}

@end