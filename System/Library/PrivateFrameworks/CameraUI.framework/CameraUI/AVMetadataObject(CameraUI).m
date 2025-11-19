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
  v1 = [a1 type];
  v2 = [v1 isEqualToString:*MEMORY[0x1E6986FE8]];

  return v2;
}

- (uint64_t)isHumanBody
{
  v1 = [a1 type];
  v2 = [v1 isEqualToString:*MEMORY[0x1E6986FF0]];

  return v2;
}

- (uint64_t)isHumanHead
{
  v1 = [a1 type];
  v2 = [v1 isEqualToString:*MEMORY[0x1E6986FF8]];

  return v2;
}

- (uint64_t)isPetHead
{
  v2 = [a1 type];
  if ([v2 isEqualToString:*MEMORY[0x1E6986FC8]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 type];
    v3 = [v4 isEqualToString:*MEMORY[0x1E6986FD8]];
  }

  return v3;
}

- (uint64_t)isPetBody
{
  v2 = [a1 type];
  if ([v2 isEqualToString:*MEMORY[0x1E6986FC0]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 type];
    v3 = [v4 isEqualToString:*MEMORY[0x1E6986FD0]];
  }

  return v3;
}

- (uint64_t)isSalientObject
{
  v1 = [a1 type];
  v2 = [v1 isEqualToString:*MEMORY[0x1E6987008]];

  return v2;
}

- (uint64_t)isCat
{
  v2 = [a1 type];
  if ([v2 isEqualToString:*MEMORY[0x1E6986FC8]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 type];
    v3 = [v4 isEqualToString:*MEMORY[0x1E6986FC0]];
  }

  return v3;
}

- (uint64_t)isDog
{
  v2 = [a1 type];
  if ([v2 isEqualToString:*MEMORY[0x1E6986FD8]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 type];
    v3 = [v4 isEqualToString:*MEMORY[0x1E6986FD0]];
  }

  return v3;
}

- (uint64_t)isHuman
{
  if ([a1 isHumanBody] & 1) != 0 || (objc_msgSend(a1, "isHumanFace"))
  {
    return 1;
  }

  return [a1 isHumanHead];
}

@end