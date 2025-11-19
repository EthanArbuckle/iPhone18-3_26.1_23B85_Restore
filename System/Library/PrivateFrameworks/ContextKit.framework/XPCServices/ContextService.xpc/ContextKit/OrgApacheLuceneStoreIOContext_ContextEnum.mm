@interface OrgApacheLuceneStoreIOContext_ContextEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneStoreIOContext_ContextEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneStoreIOContext_ContextEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"MERGE", 0);
    OrgApacheLuceneStoreIOContext_ContextEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneStoreIOContext_ContextEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"READ", 1);
    qword_1005579E0 = v3;
    v4 = [OrgApacheLuceneStoreIOContext_ContextEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"FLUSH", 2);
    qword_1005579E8 = v4;
    v5 = [OrgApacheLuceneStoreIOContext_ContextEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"DEFAULT", 3);
    qword_1005579F0 = v5;
    atomic_store(1u, OrgApacheLuceneStoreIOContext_ContextEnum__initialized);
  }
}

@end