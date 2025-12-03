@interface NSNumber(KGPropertyTypeProtocol)
- (uint64_t)kgPropertyType;
@end

@implementation NSNumber(KGPropertyTypeProtocol)

- (uint64_t)kgPropertyType
{
  selfCopy = self;
  if (CFNumberIsFloatType(selfCopy))
  {
    v2 = 2;
  }

  else if ([selfCopy compare:&unk_2867B4E28] == 1)
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