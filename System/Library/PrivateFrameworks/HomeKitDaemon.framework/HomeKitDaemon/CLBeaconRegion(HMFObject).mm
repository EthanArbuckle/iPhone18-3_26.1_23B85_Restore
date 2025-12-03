@interface CLBeaconRegion(HMFObject)
- (id)attributeDescriptions;
- (id)description;
@end

@implementation CLBeaconRegion(HMFObject)

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  proximityUUID = [self proximityUUID];
  v5 = [v3 initWithName:@"ProximityUUID" value:proximityUUID options:0 formatter:defaultFormatter];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  major = [self major];
  v8 = [v6 initWithName:@"Major" value:major options:0 formatter:defaultFormatter];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  minor = [self minor];
  v11 = [v9 initWithName:@"Minor" value:minor options:0 formatter:defaultFormatter];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = &off_283FDBCF0;
  v1 = objc_msgSendSuper2(&v3, sel_description);

  return v1;
}

@end