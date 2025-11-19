@interface NSNumber(KGPropertyTypeProtocol)
- (uint64_t)kgPropertyType;
@end

@implementation NSNumber(KGPropertyTypeProtocol)

- (uint64_t)kgPropertyType
{
  v1 = a1;
  if (CFNumberIsFloatType(v1))
  {
    v2 = 2;
  }

  else if ([v1 compare:&unk_2867B4E28] == 1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end