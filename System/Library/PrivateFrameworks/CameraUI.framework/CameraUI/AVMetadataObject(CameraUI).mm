@interface AVMetadataObject(CameraUI)
- (uint64_t)isCat;
- (uint64_t)isDog;
- (uint64_t)isHuman;
- (uint64_t)isHumanBody;
- (uint64_t)isHumanFace;
- (uint64_t)isHumanHead;
- (uint64_t)isPetBody;
- (uint64_t)isPetHead;
- (uint64_t)isSalientObject;
@end

@implementation AVMetadataObject(CameraUI)

- (uint64_t)isHumanFace
{
  type = [self type];
  v2 = [type isEqualToString:*MEMORY[0x1E6986FE8]];

  return v2;
}

- (uint64_t)isHumanBody
{
  type = [self type];
  v2 = [type isEqualToString:*MEMORY[0x1E6986FF0]];

  return v2;
}

- (uint64_t)isHumanHead
{
  type = [self type];
  v2 = [type isEqualToString:*MEMORY[0x1E6986FF8]];

  return v2;
}

- (uint64_t)isPetHead
{
  type = [self type];
  if ([type isEqualToString:*MEMORY[0x1E6986FC8]])
  {
    v3 = 1;
  }

  else
  {
    type2 = [self type];
    v3 = [type2 isEqualToString:*MEMORY[0x1E6986FD8]];
  }

  return v3;
}

- (uint64_t)isPetBody
{
  type = [self type];
  if ([type isEqualToString:*MEMORY[0x1E6986FC0]])
  {
    v3 = 1;
  }

  else
  {
    type2 = [self type];
    v3 = [type2 isEqualToString:*MEMORY[0x1E6986FD0]];
  }

  return v3;
}

- (uint64_t)isSalientObject
{
  type = [self type];
  v2 = [type isEqualToString:*MEMORY[0x1E6987008]];

  return v2;
}

- (uint64_t)isCat
{
  type = [self type];
  if ([type isEqualToString:*MEMORY[0x1E6986FC8]])
  {
    v3 = 1;
  }

  else
  {
    type2 = [self type];
    v3 = [type2 isEqualToString:*MEMORY[0x1E6986FC0]];
  }

  return v3;
}

- (uint64_t)isDog
{
  type = [self type];
  if ([type isEqualToString:*MEMORY[0x1E6986FD8]])
  {
    v3 = 1;
  }

  else
  {
    type2 = [self type];
    v3 = [type2 isEqualToString:*MEMORY[0x1E6986FD0]];
  }

  return v3;
}

- (uint64_t)isHuman
{
  if ([self isHumanBody] & 1) != 0 || (objc_msgSend(self, "isHumanFace"))
  {
    return 1;
  }

  return [self isHumanHead];
}

@end