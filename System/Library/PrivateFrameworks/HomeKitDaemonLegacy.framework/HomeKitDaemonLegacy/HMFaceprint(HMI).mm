@interface HMFaceprint(HMI)
- (id)createHMIFaceprint;
- (uint64_t)initWithHMIFaceprint:()HMI;
@end

@implementation HMFaceprint(HMI)

- (id)createHMIFaceprint
{
  v2 = objc_alloc(MEMORY[0x277D14D88]);
  uUID = [self UUID];
  data = [self data];
  modelUUID = [self modelUUID];
  faceCropUUID = [self faceCropUUID];
  v7 = [v2 initWithUUID:uUID data:data modelUUID:modelUUID faceCropUUID:faceCropUUID];

  return v7;
}

- (uint64_t)initWithHMIFaceprint:()HMI
{
  v4 = a3;
  uUID = [v4 UUID];
  data = [v4 data];
  modelUUID = [v4 modelUUID];
  faceCropUUID = [v4 faceCropUUID];

  v9 = [self initWithUUID:uUID data:data modelUUID:modelUUID faceCropUUID:faceCropUUID];
  return v9;
}

@end