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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

@end