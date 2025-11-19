@interface JavaNioCharsetCharsets
+ (void)initialize;
@end

@implementation JavaNioCharsetCharsets

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = JavaNioCharsetCharset_forNameWithNSString_(@"ISO-8859-1");
    JreStrongAssign(&JavaNioCharsetCharsets_ISO_8859_1_, v2);
    v3 = JavaNioCharsetCharset_forNameWithNSString_(@"US-ASCII");
    JreStrongAssign(&JavaNioCharsetCharsets_US_ASCII_, v3);
    v4 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8");
    JreStrongAssign(&JavaNioCharsetCharsets_UTF_8_, v4);
    atomic_store(1u, JavaNioCharsetCharsets__initialized);
  }
}

@end