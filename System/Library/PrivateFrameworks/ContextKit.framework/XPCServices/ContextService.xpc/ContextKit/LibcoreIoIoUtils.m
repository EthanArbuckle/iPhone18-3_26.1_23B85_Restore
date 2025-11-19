@interface LibcoreIoIoUtils
+ (id)readFileAsByteArrayWithNSString:(id)a3;
+ (id)readFileAsStringWithNSString:(id)a3;
@end

@implementation LibcoreIoIoUtils

+ (id)readFileAsByteArrayWithNSString:(id)a3
{
  v3 = sub_1001D55E8(a3);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoByteArrayOutputStream *)v3 toByteArray];
}

+ (id)readFileAsStringWithNSString:(id)a3
{
  v3 = sub_1001D55E8(a3);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoByteArrayOutputStream *)v3 description];
}

@end