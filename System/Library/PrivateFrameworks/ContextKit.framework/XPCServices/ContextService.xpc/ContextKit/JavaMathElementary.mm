@interface JavaMathElementary
+ (id)subtractWithIntArray:(id)a3 withInt:(int)a4 withIntArray:(id)a5 withInt:(int)a6;
@end

@implementation JavaMathElementary

+ (id)subtractWithIntArray:(id)a3 withInt:(int)a4 withIntArray:(id)a5 withInt:(int)a6
{
  v10 = [IOSIntArray arrayWithLength:a4];
  sub_100249814(v10, a3, a4, a5, a6);
  return v10;
}

@end