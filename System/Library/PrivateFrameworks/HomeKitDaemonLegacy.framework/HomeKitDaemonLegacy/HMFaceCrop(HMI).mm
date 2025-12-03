@interface HMFaceCrop(HMI)
- (id)createHMIFaceCrop;
- (uint64_t)initWithHMIFaceCrop:()HMI;
@end

@implementation HMFaceCrop(HMI)

- (id)createHMIFaceCrop
{
  v2 = objc_alloc(MEMORY[0x277D14D80]);
  uUID = [self UUID];
  dataRepresentation = [self dataRepresentation];
  dateCreated = [self dateCreated];
  [self faceBoundingBox];
  v6 = [v2 initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:?];

  return v6;
}

- (uint64_t)initWithHMIFaceCrop:()HMI
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

  v16 = [self initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:{v9, v11, v13, v15}];
  return v16;
}

@end