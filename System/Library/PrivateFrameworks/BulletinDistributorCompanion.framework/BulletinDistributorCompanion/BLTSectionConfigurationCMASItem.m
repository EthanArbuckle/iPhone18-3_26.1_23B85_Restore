@interface BLTSectionConfigurationCMASItem
- (unint64_t)coordinationType;
@end

@implementation BLTSectionConfigurationCMASItem

- (unint64_t)coordinationType
{
  v10.receiver = self;
  v10.super_class = BLTSectionConfigurationCMASItem;
  v2 = [(BLTSectionConfigurationItem *)&v10 coordinationType];
  if (v2 == 2)
  {
    v3 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
    v5 = [v3 supportsCapability:v4];

    if (v5)
    {
      v6 = +[BLTBulletinDistributor sharedDistributor];
      v7 = [v6 gizmoConnection];
      v8 = [v7 lastKnownConnectionStatus];

      if ((v8 - 1) < 2)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  return v2;
}

@end