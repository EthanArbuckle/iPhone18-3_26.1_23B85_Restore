@interface JavaNetDefaultFileNameMap
- (id)getContentTypeForWithNSString:(id)a3;
@end

@implementation JavaNetDefaultFileNameMap

- (id)getContentTypeForWithNSString:(id)a3
{
  if (!a3)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  if ([a3 hasSuffix:@"/"])
  {
    v4 = @"html";
    goto LABEL_13;
  }

  v5 = [a3 lastIndexOf:35];
  if ((v5 & 0x80000000) != 0)
  {
    v5 = [a3 length];
  }

  v6 = [a3 lastIndexOf:46] + 1;
  if (v6 <= [a3 lastIndexOf:47])
  {
    v7 = &stru_100484358;
  }

  else
  {
    v7 = [a3 substring:v6 endIndex:v5];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v4 = [(__CFString *)v7 lowercaseStringWithJRELocale:JavaUtilLocale_US_];
LABEL_13:

  return LibcoreNetMimeUtils_guessMimeTypeFromExtensionWithNSString_(v4);
}

@end