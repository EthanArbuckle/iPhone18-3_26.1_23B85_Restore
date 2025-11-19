@interface PlayerFSM
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)a3;
@end

@implementation PlayerFSM

- (NSDictionary)stateDictionary
{

  sub_1C5D94B14();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5D95C90();
}

@end