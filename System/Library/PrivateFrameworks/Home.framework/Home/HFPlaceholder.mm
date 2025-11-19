@interface HFPlaceholder
- (HFPlaceholder)init;
@end

@implementation HFPlaceholder

- (HFPlaceholder)init
{
  v6.receiver = self;
  v6.super_class = HFPlaceholder;
  v2 = [(HFPlaceholder *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = v3;
  }

  return v2;
}

@end