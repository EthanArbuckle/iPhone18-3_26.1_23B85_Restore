@interface OrgLukhnosPortmobileCharsetStandardCharsets
+ (void)initialize;
@end

@implementation OrgLukhnosPortmobileCharsetStandardCharsets

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = JavaNioCharsetCharset_forNameWithNSString_(@"ISO-8859-1");
    JreStrongAssign(&OrgLukhnosPortmobileCharsetStandardCharsets_ISO_8859_1_, v2);
    v3 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8");
    JreStrongAssign(&OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_, v3);
    atomic_store(1u, OrgLukhnosPortmobileCharsetStandardCharsets__initialized);
  }
}

@end