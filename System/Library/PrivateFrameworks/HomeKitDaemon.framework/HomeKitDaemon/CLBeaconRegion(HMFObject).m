@interface CLBeaconRegion(HMFObject)
- (id)attributeDescriptions;
- (id)description;
@end

@implementation CLBeaconRegion(HMFObject)

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [a1 proximityUUID];
  v5 = [v3 initWithName:@"ProximityUUID" value:v4 options:0 formatter:v2];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [a1 major];
  v8 = [v6 initWithName:@"Major" value:v7 options:0 formatter:v2];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [a1 minor];
  v11 = [v9 initWithName:@"Minor" value:v10 options:0 formatter:v2];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3.receiver = a1;
  v3.super_class = &off_283FDBCF0;
  v1 = objc_msgSendSuper2(&v3, sel_description);

  return v1;
}

@end