@interface JavaMathElementary
+ (id)subtractWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt;
@end

@implementation JavaMathElementary

+ (id)subtractWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt
{
  v10 = [IOSIntArray arrayWithLength:int];
  sub_100249814(v10, array, int, intArray, withInt);
  return v10;
}

@end