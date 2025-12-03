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
  if ([self isEqualToString:@"left"])
  {
    return 0;
  }

  if ([self isEqualToString:@"right"])
  {
    return 2;
  }

  return 0;
}

- (uint64_t)sf_asImageAlignment
{
  if ([self isEqualToString:@"left"])
  {
    return 0;
  }

  if ([self isEqualToString:@"top"])
  {
    return 1;
  }

  if ([self isEqualToString:@"bottom"])
  {
    return 2;
  }

  if ([self isEqualToString:@"right"])
  {
    return 3;
  }

  if ([self isEqualToString:@"center"])
  {
    return 4;
  }

  return 0;
}

- (uint64_t)sf_asButtonAlignment
{
  if ([self isEqualToString:@"left"])
  {
    return 1;
  }

  if ([self isEqualToString:@"top"])
  {
    return 2;
  }

  if ([self isEqualToString:@"bottom"])
  {
    return 3;
  }

  if ([self isEqualToString:@"right"])
  {
    return 4;
  }

  if ([self isEqualToString:@"center"])
  {
    return 5;
  }

  return 0;
}

- (uint64_t)sf_asTextAlignment
{
  if ([self isEqualToString:@"left"])
  {
    return 0;
  }

  if ([self isEqualToString:@"center"])
  {
    return 1;
  }

  if ([self isEqualToString:@"right"])
  {
    return 2;
  }

  return 0;
}

- (uint64_t)sf_asResultPlacement
{
  if ([self isEqualToString:@"top"])
  {
    return 1;
  }

  if ([self isEqualToString:@"bottom"])
  {
    return 2;
  }

  if ([self isEqualToString:@"tophit"])
  {
    return 3;
  }

  return 0;
}

@end