@interface OrgApacheLuceneUtilIOUtils
+ (BOOL)spinsLinuxWithOrgLukhnosPortmobileFilePath:(id)path;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilIOUtils

+ (BOOL)spinsLinuxWithOrgLukhnosPortmobileFilePath:(id)path
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  return 0;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10003A2FC();
    }

    JreStrongAssign(&OrgApacheLuceneUtilIOUtils_CHARSET_UTF_8_, OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_);
    if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10003A2FC();
    }

    if (!OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&OrgApacheLuceneUtilIOUtils_UTF_8_, [OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_ name]);
    atomic_store(1u, OrgApacheLuceneUtilIOUtils__initialized);
  }
}

@end