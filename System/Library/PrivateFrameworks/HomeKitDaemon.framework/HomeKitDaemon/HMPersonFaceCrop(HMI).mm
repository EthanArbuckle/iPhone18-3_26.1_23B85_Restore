@interface HMPersonFaceCrop(HMI)
- (id)createHMIPersonFaceCrop;
- (uint64_t)initWithHMIPersonFaceCrop:()HMI;
@end

@implementation HMPersonFaceCrop(HMI)

- (id)createHMIPersonFaceCrop
{
  v2 = objc_alloc(MEMORY[0x277D14DB8]);
  uUID = [self UUID];
  dataRepresentation = [self dataRepresentation];
  dateCreated = [self dateCreated];
  [self faceBoundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  personUUID = [self personUUID];
  v15 = [v2 initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:personUUID personUUID:{v7, v9, v11, v13}];

  return v15;
}

- (uint64_t)initWithHMIPersonFaceCrop:()HMI
{
  v4 = a3;
  uUID = [v4 UUID];
  dataRepresentation = [v4 dataRepresentation];
  dateCreated = [v4 dateCreated];
  [v4 faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  personUUID = [v4 personUUID];

  v17 = [self initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:personUUID personUUID:{v9, v11, v13, v15}];
  return v17;
}

@end