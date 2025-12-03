@interface HMDNetworkRouterFirewallRuleAccessoryIdentifier
+ (id)createWithProductData:(id)data firmwareVersion:(id)version;
+ (id)identifierFromRecordID:(id)d;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)initWithProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version;
- (id)attributeDescriptions;
- (id)cloudKitRecordID;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleAccessoryIdentifier

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  productGroup = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
  v5 = [v3 initWithName:@"ProductGroup" value:productGroup];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  productNumber = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
  v8 = [v6 initWithName:@"ProductNumber" value:productNumber];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
  v11 = [v9 initWithName:@"FirmwareVersion" value:firmwareVersion];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  productGroup = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
  v4 = [productGroup hash];

  productNumber = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
  v6 = [productNumber hash] ^ v4;

  firmwareVersion = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];

  if (firmwareVersion)
  {
    firmwareVersion2 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
    v6 ^= [firmwareVersion2 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_13;
    }

    productGroup = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
    productGroup2 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 productGroup];
    if ([productGroup isEqualToString:productGroup2])
    {
      productNumber = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
      productNumber2 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 productNumber];
      if ([productNumber isEqualToString:productNumber2])
      {
        firmwareVersion = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
        firmwareVersion2 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 firmwareVersion];
        v13 = HMFEqualObjects();

        if (v13)
        {
          v14 = 1;
LABEL_14:

          goto LABEL_15;
        }

LABEL_13:
        v14 = 0;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)initWithProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version
{
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterFirewallRuleAccessoryIdentifier;
  v11 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)&v18 init];
  if (v11)
  {
    lowercaseString = [groupCopy lowercaseString];
    productGroup = v11->_productGroup;
    v11->_productGroup = lowercaseString;

    lowercaseString2 = [numberCopy lowercaseString];
    productNumber = v11->_productNumber;
    v11->_productNumber = lowercaseString2;

    objc_storeStrong(&v11->_firmwareVersion, version);
    v16 = v11;
  }

  return v11;
}

+ (id)createWithProductData:(id)data firmwareVersion:(id)version
{
  versionCopy = version;
  v12 = 0;
  v13 = 0;
  v7 = [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:data productGroup:&v13 productNumber:&v12];
  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v7)
  {
    v10 = [[self alloc] initWithProductGroup:v8 productNumber:v9 firmwareVersion:versionCopy];
  }

  return v10;
}

- (id)cloudKitRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5F8]);
  cloudKitZoneName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self cloudKitZoneName];
  v5 = [v3 initWithZoneName:cloudKitZoneName ownerName:*MEMORY[0x277CBBF28]];

  v6 = objc_alloc(MEMORY[0x277CBC5D0]);
  cloudKitRecordName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self cloudKitRecordName];
  v8 = [v6 initWithRecordName:cloudKitRecordName zoneID:v5];

  return v8;
}

+ (id)identifierFromRecordID:(id)d
{
  dCopy = d;
  v5 = [self alloc];
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  recordName = [dCopy recordName];

  v9 = [v5 initWithProductGroup:zoneName productNumber:recordName firmwareVersion:0];

  return v9;
}

@end