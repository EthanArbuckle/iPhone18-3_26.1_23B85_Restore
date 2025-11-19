@interface BPSExpressSetupDetailItem
- (BPSExpressSetupDetailItem)init;
@end

@implementation BPSExpressSetupDetailItem

- (BPSExpressSetupDetailItem)init
{
  v7.receiver = self;
  v7.super_class = BPSExpressSetupDetailItem;
  v2 = [(BPSExpressSetupDetailItem *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

@end