@interface HMFaceCrop(HMI)
- (id)createHMIFaceCrop;
- (uint64_t)initWithHMIFaceCrop:()HMI;
@end

@implementation HMFaceCrop(HMI)

- (id)createHMIFaceCrop
{
  v2 = objc_alloc(MEMORY[0x277D14D80]);
  v3 = [a1 UUID];
  v4 = [a1 dataRepresentation];
  v5 = [a1 dateCreated];
  [a1 faceBoundingBox];
  v6 = [v2 initWithUUID:v3 dataRepresentation:v4 dateCreated:v5 faceBoundingBox:?];

  return v6;
}

- (uint64_t)initWithHMIFaceCrop:()HMI
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

  v16 = [a1 initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:{v9, v11, v13, v15}];
  return v16;
}

@end