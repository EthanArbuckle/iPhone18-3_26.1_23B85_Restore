@interface OrgApacheLuceneDocumentFieldType_NumericTypeEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentFieldType_NumericTypeEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneDocumentFieldType_NumericTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"INT", 0);
    OrgApacheLuceneDocumentFieldType_NumericTypeEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneDocumentFieldType_NumericTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"LONG", 1);
    qword_100557B48 = v3;
    v4 = [OrgApacheLuceneDocumentFieldType_NumericTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"FLOAT", 2);
    qword_100557B50 = v4;
    v5 = [OrgApacheLuceneDocumentFieldType_NumericTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"DOUBLE", 3);
    qword_100557B58 = v5;
    atomic_store(1u, OrgApacheLuceneDocumentFieldType_NumericTypeEnum__initialized);
  }
}

@end