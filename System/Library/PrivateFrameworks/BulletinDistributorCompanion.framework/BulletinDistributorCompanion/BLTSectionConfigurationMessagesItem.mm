@interface BLTSectionConfigurationMessagesItem
- (unint64_t)coordinationTypeWithSubtype:(int64_t)subtype;
@end

@implementation BLTSectionConfigurationMessagesItem

- (unint64_t)coordinationTypeWithSubtype:(int64_t)subtype
{
  v7.receiver = self;
  v7.super_class = BLTSectionConfigurationMessagesItem;
  result = [(BLTSectionConfigurationItem *)&v7 coordinationTypeWithSubtype:?];
  if (!result)
  {
    if (subtype == 5)
    {
      blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
      v6 = [blt_boundedWaitForActivePairedDevice bltVersion] < 6;

      return 2 * v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end