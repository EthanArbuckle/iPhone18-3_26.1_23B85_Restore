@interface OrgApacheLuceneDocumentField_IndexEnum
+ (id)toIndexWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4 withBoolean:(BOOL)a5;
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentField_IndexEnum

+ (id)toIndexWithBoolean:(BOOL)a3 withBoolean:(BOOL)a4 withBoolean:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v8 = OrgApacheLuceneDocumentField_IndexEnum_values_;
  v9 = 3;
  if (v6)
  {
    v9 = 4;
  }

  v10 = &OrgApacheLuceneDocumentField_IndexEnum_values_[v9];
  v11 = 2;
  if (v6)
  {
    v11 = 1;
  }

  v12 = &OrgApacheLuceneDocumentField_IndexEnum_values_[v11];
  if (!a5)
  {
    v10 = v12;
  }

  if (v7)
  {
    v8 = v10;
  }

  return *v8;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneDocumentField_Index__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NO", 0);
    OrgApacheLuceneDocumentField_IndexEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneDocumentField_Index__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"ANALYZED", 1);
    qword_1005577A0 = v3;
    v4 = [OrgApacheLuceneDocumentField_Index__3Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"NOT_ANALYZED", 2);
    qword_1005577A8 = v4;
    v5 = [OrgApacheLuceneDocumentField_Index__4Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"NOT_ANALYZED_NO_NORMS", 3);
    qword_1005577B0 = v5;
    v6 = [OrgApacheLuceneDocumentField_Index__5Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"ANALYZED_NO_NORMS", 4);
    qword_1005577B8 = v6;
    atomic_store(1u, &OrgApacheLuceneDocumentField_IndexEnum__initialized);
  }
}

@end