@interface NSString(SFExtras)
- (uint64_t)sf_asButtonAlignment;
- (uint64_t)sf_asColumnAlignment;
- (uint64_t)sf_asImageAlignment;
- (uint64_t)sf_asResultPlacement;
- (uint64_t)sf_asTextAlignment;
@end

@implementation NSString(SFExtras)

- (uint64_t)sf_asColumnAlignment
{
  if ([a1 isEqualToString:@"left"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"right"])
  {
    return 2;
  }

  return 0;
}

- (uint64_t)sf_asImageAlignment
{
  if ([a1 isEqualToString:@"left"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"top"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"bottom"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"right"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"center"])
  {
    return 4;
  }

  return 0;
}

- (uint64_t)sf_asButtonAlignment
{
  if ([a1 isEqualToString:@"left"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"top"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"bottom"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"right"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"center"])
  {
    return 5;
  }

  return 0;
}

- (uint64_t)sf_asTextAlignment
{
  if ([a1 isEqualToString:@"left"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"center"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"right"])
  {
    return 2;
  }

  return 0;
}

- (uint64_t)sf_asResultPlacement
{
  if ([a1 isEqualToString:@"top"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"bottom"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"tophit"])
  {
    return 3;
  }

  return 0;
}

@end