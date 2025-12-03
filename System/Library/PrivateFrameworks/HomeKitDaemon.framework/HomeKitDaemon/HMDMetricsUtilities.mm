@interface HMDMetricsUtilities
+ (BOOL)shouldRedactBundleID:(id)d;
+ (BOOL)shouldRedactBundleID:(id)d isInternalBuild:(BOOL)build;
+ (id)primaryServiceTypeForHAPAccessory:(id)accessory;
+ (id)redactedThirdPartyBundleID:(id)d;
@end

@implementation HMDMetricsUtilities

+ (BOOL)shouldRedactBundleID:(id)d isInternalBuild:(BOOL)build
{
  result = 0;
  if (d)
  {
    if (!build)
    {
      return HMDIsFirstPartyClientIdentifier(d) ^ 1;
    }
  }

  return result;
}

+ (BOOL)shouldRedactBundleID:(id)d
{
  dCopy = d;
  LOBYTE(self) = [self shouldRedactBundleID:dCopy isInternalBuild:isInternalBuild()];

  return self;
}

+ (id)redactedThirdPartyBundleID:(id)d
{
  dCopy = d;
  v5 = [self redactedThirdPartyBundleID:dCopy isInternalBuild:isInternalBuild()];

  return v5;
}

+ (id)primaryServiceTypeForHAPAccessory:(id)accessory
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  primaryService = [accessoryCopy primaryService];

  if (primaryService)
  {
    primaryService2 = [accessoryCopy primaryService];
    services = primaryService2;
LABEL_15:
    type = [primaryService2 type];
  }

  else
  {
    bridge = [accessoryCopy bridge];
    if (bridge)
    {
    }

    else
    {
      identifiersForBridgedAccessories = [accessoryCopy identifiersForBridgedAccessories];
      v17 = [identifiersForBridgedAccessories count];

      if (v17)
      {
        type = @"Bridge";
        goto LABEL_16;
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    services = [accessoryCopy services];
    v8 = [services countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(services);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 isPrimary])
          {
            primaryService2 = v12;
            goto LABEL_15;
          }
        }

        v9 = [services countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    type = 0;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return type;
}

@end