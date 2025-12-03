@interface CTDataUsagePolicies(DigitalSeparation)
+ (id)ds_DataUsagePolicyWithPolicy:()DigitalSeparation sourceName:;
@end

@implementation CTDataUsagePolicies(DigitalSeparation)

+ (id)ds_DataUsagePolicyWithPolicy:()DigitalSeparation sourceName:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = [DSSourceDescriptor sourceDescriptorForSource:v6];
  dataUsageBundleIdentifier = [v7 dataUsageBundleIdentifier];
  if (dataUsageBundleIdentifier)
  {
    v9 = ([v7 requiresWifi] & 1) != 0 || objc_msgSend(v5, "wifi") != 0;
    v13 = ([v7 requiresCellular] & 1) != 0 || objc_msgSend(v5, "cellular") != 0;
    bundleId = [v5 bundleId];
    if ([bundleId isEqualToString:dataUsageBundleIdentifier] && objc_msgSend(v5, "wifi") == v9)
    {
      cellular = [v5 cellular];

      if (cellular == v13)
      {
        v11 = DSLogCTDataUsagePolicies();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v18 = 138543362;
        v19 = dataUsageBundleIdentifier;
        v12 = "Data usage policy for %{public}@ is already configured";
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = [objc_alloc(MEMORY[0x277CC3658]) init:dataUsageBundleIdentifier withCellularPolicy:v13 wifiPolicy:v9 isManaged:objc_msgSend(v5 andIsRestricted:{"isManaged"), objc_msgSend(v5, "isRestricted")}];
    goto LABEL_21;
  }

  v11 = DSLogCTDataUsagePolicies();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 138543362;
    v19 = v6;
    v12 = "No data usage policy found for %{public}@";
LABEL_8:
    _os_log_impl(&dword_248C40000, v11, OS_LOG_TYPE_INFO, v12, &v18, 0xCu);
  }

LABEL_9:

  v10 = 0;
LABEL_21:

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

@end