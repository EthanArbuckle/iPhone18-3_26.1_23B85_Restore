@interface HMPersonFaceCrop(HMI)
- (id)createHMIPersonFaceCrop;
- (uint64_t)initWithHMIPersonFaceCrop:()HMI;
@end

@implementation HMPersonFaceCrop(HMI)

- (id)createHMIPersonFaceCrop
{
  v2 = objc_alloc(MEMORY[0x277D14DB8]);
  v3 = [a1 UUID];
  v4 = [a1 dataRepresentation];
  v5 = [a1 dateCreated];
  [a1 faceBoundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [a1 personUUID];
  v15 = [v2 initWithUUID:v3 dataRepresentation:v4 dateCreated:v5 faceBoundingBox:v14 personUUID:{v7, v9, v11, v13}];

  return v15;
}

- (uint64_t)initWithHMIPersonFaceCrop:()HMI
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [v4 dataRepresentation];
  v7 = [v4 dateCreated];
  [v4 faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v4 personUUID];

  v17 = [a1 initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:v16 personUUID:{v9, v11, v13, v15}];
  return v17;
}

@end