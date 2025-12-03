@interface PlayerFSM
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)reason;
@end

@implementation PlayerFSM

- (NSDictionary)stateDictionary
{

  sub_1C5D94B14();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5D95C90();
}

@end