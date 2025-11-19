@interface CLCircularRegion(HMFObject)
- (id)attributeDescriptions;
- (id)description;
@end

@implementation CLCircularRegion(HMFObject)

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [a1 center];
  v5 = [v4 numberWithDouble:?];
  v6 = [v3 initWithName:@"Lat" value:v5 options:0 formatter:v2];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  [a1 center];
  v10 = [v8 numberWithDouble:v9];
  v11 = [v7 initWithName:@"Long" value:v10 options:0 formatter:v2];
  v19[1] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = MEMORY[0x277CCABB0];
  [a1 radius];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 initWithName:@"R" value:v14 options:0 formatter:v2];
  v19[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)description
{
  v3.receiver = a1;
  v3.super_class = &off_283FDBA98;
  v1 = objc_msgSendSuper2(&v3, sel_description);

  return v1;
}

@end