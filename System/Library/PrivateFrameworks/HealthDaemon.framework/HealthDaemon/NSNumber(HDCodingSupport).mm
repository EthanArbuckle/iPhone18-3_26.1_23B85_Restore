@interface NSNumber(HDCodingSupport)
- (_BYTE)hk_hasFloatingPointValue;
@end

@implementation NSNumber(HDCodingSupport)

- (_BYTE)hk_hasFloatingPointValue
{
  result = [a1 objCType];
  if (result)
  {
    return ((*result & 0xFD) == 100);
  }

  return result;
}

@end