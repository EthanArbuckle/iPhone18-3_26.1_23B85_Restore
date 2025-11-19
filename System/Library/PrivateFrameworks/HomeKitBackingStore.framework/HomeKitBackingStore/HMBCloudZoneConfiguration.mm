@interface HMBCloudZoneConfiguration
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMBCloudZoneConfiguration

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[HMBMutableCloudZoneConfiguration allocWithZone:?]];
  [(HMBCloudZoneConfiguration *)v4 setShouldRebuildOnManateeKeyLoss:[(HMBCloudZoneConfiguration *)self shouldRebuildOnManateeKeyLoss]];
  [(HMBCloudZoneConfiguration *)v4 setShouldSkipCloudPulls:[(HMBCloudZoneConfiguration *)self shouldSkipCloudPulls]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6 && (v7 = -[HMBCloudZoneConfiguration shouldRebuildOnManateeKeyLoss](self, "shouldRebuildOnManateeKeyLoss"), v7 == [v6 shouldRebuildOnManateeKeyLoss]))
  {
    v9 = [(HMBCloudZoneConfiguration *)self shouldSkipCloudPulls];
    v8 = v9 ^ [v6 shouldSkipCloudPulls] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMBCloudZoneConfiguration *)self shouldRebuildOnManateeKeyLoss];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Rebuild On Manatee Key Loss" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMBCloudZoneConfiguration *)self shouldSkipCloudPulls];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Skip Cloud Pulls" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end