@interface OrgApacheLuceneCodecsCodecUtil
+ (int)headerLengthWithNSString:(id)string;
+ (int)indexHeaderLengthWithNSString:(id)string withNSString:(id)sString;
@end

@implementation OrgApacheLuceneCodecsCodecUtil

+ (int)headerLengthWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  return [string length] + 9;
}

+ (int)indexHeaderLengthWithNSString:(id)string withNSString:(id)sString
{
  if (!string || (v5 = [string length], !sString))
  {
    JreThrowNullPointerException();
  }

  return v5 + [sString length] + 26;
}

@end