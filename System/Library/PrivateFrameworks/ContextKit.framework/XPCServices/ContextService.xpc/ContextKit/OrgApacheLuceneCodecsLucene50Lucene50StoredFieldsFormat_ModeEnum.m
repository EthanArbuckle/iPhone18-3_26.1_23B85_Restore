@interface OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"BEST_SPEED", 0);
    OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"BEST_COMPRESSION", 1);
    qword_100557710 = v3;
    atomic_store(1u, OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized);
  }
}

@end