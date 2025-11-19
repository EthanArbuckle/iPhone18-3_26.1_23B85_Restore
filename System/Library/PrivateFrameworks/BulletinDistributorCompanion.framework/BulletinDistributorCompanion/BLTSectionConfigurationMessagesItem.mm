@interface BLTSectionConfigurationMessagesItem
- (unint64_t)coordinationTypeWithSubtype:(int64_t)a3;
@end

@implementation BLTSectionConfigurationMessagesItem

- (unint64_t)coordinationTypeWithSubtype:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = BLTSectionConfigurationMessagesItem;
  result = [(BLTSectionConfigurationItem *)&v7 coordinationTypeWithSubtype:?];
  if (!result)
  {
    if (a3 == 5)
    {
      v5 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
      v6 = [v5 bltVersion] < 6;

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