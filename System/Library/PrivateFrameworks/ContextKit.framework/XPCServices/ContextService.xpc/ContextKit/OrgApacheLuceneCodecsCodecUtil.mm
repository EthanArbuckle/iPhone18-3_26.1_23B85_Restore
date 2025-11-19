@interface OrgApacheLuceneCodecsCodecUtil
+ (int)headerLengthWithNSString:(id)a3;
+ (int)indexHeaderLengthWithNSString:(id)a3 withNSString:(id)a4;
@end

@implementation OrgApacheLuceneCodecsCodecUtil

+ (int)headerLengthWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 length] + 9;
}

+ (int)indexHeaderLengthWithNSString:(id)a3 withNSString:(id)a4
{
  if (!a3 || (v5 = [a3 length], !a4))
  {
    JreThrowNullPointerException();
  }

  return v5 + [a4 length] + 26;
}

@end