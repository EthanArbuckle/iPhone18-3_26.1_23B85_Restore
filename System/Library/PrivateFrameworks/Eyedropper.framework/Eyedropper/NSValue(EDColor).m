@interface NSValue(EDColor)
+ (id)valueWithColor:()EDColor;
- (double)colorValue;
@end

@implementation NSValue(EDColor)

+ (id)valueWithColor:()EDColor
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  v3 = [MEMORY[0x277CCAE60] value:v5 withObjCType:"{EDColor=ddd}"];

  return v3;
}

- (double)colorValue
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

@end