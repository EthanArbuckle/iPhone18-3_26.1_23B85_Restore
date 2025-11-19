@interface AssetSlidingQueueController
- (NSDictionary)stateDictionary;
- (void)resetWithReason:(id)a3;
@end

@implementation AssetSlidingQueueController

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5D4CB44();
}

- (NSDictionary)stateDictionary
{

  sub_1C5D591DC();

  v2 = sub_1C6016840();

  return v2;
}

@end