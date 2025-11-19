@interface HMDNetworkRouterFirewallRuleAccessoryIdentifier
+ (id)createWithProductData:(id)a3 firmwareVersion:(id)a4;
+ (id)identifierFromRecordID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)initWithProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5;
- (id)attributeDescriptions;
- (id)cloudKitRecordID;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleAccessoryIdentifier

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
  v5 = [v3 initWithName:@"ProductGroup" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
  v8 = [v6 initWithName:@"ProductNumber" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
  v11 = [v9 initWithName:@"FirmwareVersion" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
  v4 = [v3 hash];

  v5 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];

  if (v7)
  {
    v8 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
    v6 ^= [v8 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

    v7 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productGroup];
    v8 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 productGroup];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self productNumber];
      v10 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 productNumber];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self firmwareVersion];
        v12 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v6 firmwareVersion];
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

- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)initWithProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterFirewallRuleAccessoryIdentifier;
  v11 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)&v18 init];
  if (v11)
  {
    v12 = [v8 lowercaseString];
    productGroup = v11->_productGroup;
    v11->_productGroup = v12;

    v14 = [v9 lowercaseString];
    productNumber = v11->_productNumber;
    v11->_productNumber = v14;

    objc_storeStrong(&v11->_firmwareVersion, a5);
    v16 = v11;
  }

  return v11;
}

+ (id)createWithProductData:(id)a3 firmwareVersion:(id)a4
{
  v6 = a4;
  v12 = 0;
  v13 = 0;
  v7 = [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:a3 productGroup:&v13 productNumber:&v12];
  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v7)
  {
    v10 = [[a1 alloc] initWithProductGroup:v8 productNumber:v9 firmwareVersion:v6];
  }

  return v10;
}

- (id)cloudKitRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5F8]);
  v4 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self cloudKitZoneName];
  v5 = [v3 initWithZoneName:v4 ownerName:*MEMORY[0x277CBBF28]];

  v6 = objc_alloc(MEMORY[0x277CBC5D0]);
  v7 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)self cloudKitRecordName];
  v8 = [v6 initWithRecordName:v7 zoneID:v5];

  return v8;
}

+ (id)identifierFromRecordID:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 zoneID];
  v7 = [v6 zoneName];
  v8 = [v4 recordName];

  v9 = [v5 initWithProductGroup:v7 productNumber:v8 firmwareVersion:0];

  return v9;
}

@end