@interface HMDMetricsUtilities
+ (BOOL)shouldRedactBundleID:(id)a3;
+ (BOOL)shouldRedactBundleID:(id)a3 isInternalBuild:(BOOL)a4;
+ (id)primaryServiceTypeForHAPAccessory:(id)a3;
+ (id)redactedThirdPartyBundleID:(id)a3;
@end

@implementation HMDMetricsUtilities

+ (BOOL)shouldRedactBundleID:(id)a3 isInternalBuild:(BOOL)a4
{
  result = 0;
  if (a3)
  {
    if (!a4)
    {
      return HMDIsFirstPartyClientIdentifier(a3) ^ 1;
    }
  }

  return result;
}

+ (BOOL)shouldRedactBundleID:(id)a3
{
  v4 = a3;
  LOBYTE(a1) = [a1 shouldRedactBundleID:v4 isInternalBuild:isInternalBuild()];

  return a1;
}

+ (id)redactedThirdPartyBundleID:(id)a3
{
  v4 = a3;
  v5 = [a1 redactedThirdPartyBundleID:v4 isInternalBuild:isInternalBuild()];

  return v5;
}

+ (id)primaryServiceTypeForHAPAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 primaryService];

  if (v4)
  {
    v5 = [v3 primaryService];
    v6 = v5;
LABEL_15:
    v13 = [v5 type];
  }

  else
  {
    v7 = [v3 bridge];
    if (v7)
    {
    }

    else
    {
      v16 = [v3 identifiersForBridgedAccessories];
      v17 = [v16 count];

      if (v17)
      {
        v13 = @"Bridge";
        goto LABEL_16;
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v3 services];
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 isPrimary])
          {
            v5 = v12;
            goto LABEL_15;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end