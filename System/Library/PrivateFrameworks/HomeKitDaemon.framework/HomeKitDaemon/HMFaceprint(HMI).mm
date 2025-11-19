@interface HMFaceprint(HMI)
- (id)createHMIFaceprint;
- (uint64_t)initWithHMIFaceprint:()HMI;
@end

@implementation HMFaceprint(HMI)

- (id)createHMIFaceprint
{
  v2 = objc_alloc(MEMORY[0x277D14D88]);
  v3 = [a1 UUID];
  v4 = [a1 data];
  v5 = [a1 modelUUID];
  v6 = [a1 faceCropUUID];
  v7 = [v2 initWithUUID:v3 data:v4 modelUUID:v5 faceCropUUID:v6];

  return v7;
}

- (uint64_t)initWithHMIFaceprint:()HMI
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [v4 data];
  v7 = [v4 modelUUID];
  v8 = [v4 faceCropUUID];

  v9 = [a1 initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];
  return v9;
}

@end