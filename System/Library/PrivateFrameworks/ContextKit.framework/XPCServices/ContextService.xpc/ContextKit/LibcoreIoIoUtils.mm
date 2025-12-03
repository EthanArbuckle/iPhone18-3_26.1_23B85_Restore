@interface LibcoreIoIoUtils
+ (id)readFileAsByteArrayWithNSString:(id)string;
+ (id)readFileAsStringWithNSString:(id)string;
@end

@implementation LibcoreIoIoUtils

+ (id)readFileAsByteArrayWithNSString:(id)string
{
  v3 = sub_1001D55E8(string);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoByteArrayOutputStream *)v3 toByteArray];
}

+ (id)readFileAsStringWithNSString:(id)string
{
  v3 = sub_1001D55E8(string);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoByteArrayOutputStream *)v3 description];
}

@end