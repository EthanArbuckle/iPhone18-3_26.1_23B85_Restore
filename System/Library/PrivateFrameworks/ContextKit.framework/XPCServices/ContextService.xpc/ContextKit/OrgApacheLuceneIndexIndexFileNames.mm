@interface OrgApacheLuceneIndexIndexFileNames
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexIndexFileNames

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaUtilRegexPattern_compileWithNSString_(@"_[a-z0-9]+(_.*)?\\..*");
    JreStrongAssign(&OrgApacheLuceneIndexIndexFileNames_CODEC_FILE_PATTERN_, v2);
    atomic_store(1u, OrgApacheLuceneIndexIndexFileNames__initialized);
  }
}

@end