@interface BLTSectionConfigurationCMASItem
- (unint64_t)coordinationType;
@end

@implementation BLTSectionConfigurationCMASItem

- (unint64_t)coordinationType
{
  v10.receiver = self;
  v10.super_class = BLTSectionConfigurationCMASItem;
  coordinationType = [(BLTSectionConfigurationItem *)&v10 coordinationType];
  if (coordinationType == 2)
  {
    blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
    v5 = [blt_boundedWaitForActivePairedDevice supportsCapability:v4];

    if (v5)
    {
      v6 = +[BLTBulletinDistributor sharedDistributor];
      gizmoConnection = [v6 gizmoConnection];
      lastKnownConnectionStatus = [gizmoConnection lastKnownConnectionStatus];

      if ((lastKnownConnectionStatus - 1) < 2)
      {
        coordinationType = 1;
      }

      else
      {
        coordinationType = 2;
      }
    }

    else
    {
      coordinationType = 2;
    }
  }

  return coordinationType;
}

@end