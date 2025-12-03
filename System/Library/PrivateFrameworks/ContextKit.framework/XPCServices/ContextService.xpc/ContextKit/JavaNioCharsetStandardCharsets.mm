@interface JavaNioCharsetStandardCharsets
+ (void)initialize;
@end

@implementation JavaNioCharsetStandardCharsets

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaNioCharsetCharset_forNameWithNSString_(@"ISO-8859-1");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_ISO_8859_1_, v2);
    v3 = JavaNioCharsetCharset_forNameWithNSString_(@"US-ASCII");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_US_ASCII_, v3);
    v4 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-16");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_UTF_16_, v4);
    v5 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-16BE");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_UTF_16BE_, v5);
    v6 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-16LE");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_UTF_16LE_, v6);
    v7 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8");
    JreStrongAssign(&JavaNioCharsetStandardCharsets_UTF_8_, v7);
    atomic_store(1u, JavaNioCharsetStandardCharsets__initialized);
  }
}

@end