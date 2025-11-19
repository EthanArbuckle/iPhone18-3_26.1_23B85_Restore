@interface OrgApacheLuceneSearchSortField_TypeEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneSearchSortField_TypeEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"SCORE", 0);
    OrgApacheLuceneSearchSortField_TypeEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"DOC", 1);
    qword_100557688 = v3;
    v4 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"STRING", 2);
    qword_100557690 = v4;
    v5 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"INT", 3);
    qword_100557698 = v5;
    v6 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"FLOAT", 4);
    qword_1005576A0 = v6;
    v7 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"LONG", 5);
    qword_1005576A8 = v7;
    v8 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v8, @"DOUBLE", 6);
    qword_1005576B0 = v8;
    v9 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v9, @"CUSTOM", 7);
    qword_1005576B8 = v9;
    v10 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v10, @"STRING_VAL", 8);
    qword_1005576C0 = v10;
    v11 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v11, @"BYTES", 9);
    qword_1005576C8 = v11;
    v12 = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v12, @"REWRITEABLE", 10);
    qword_1005576D0 = v12;
    atomic_store(1u, OrgApacheLuceneSearchSortField_TypeEnum__initialized);
  }
}

@end