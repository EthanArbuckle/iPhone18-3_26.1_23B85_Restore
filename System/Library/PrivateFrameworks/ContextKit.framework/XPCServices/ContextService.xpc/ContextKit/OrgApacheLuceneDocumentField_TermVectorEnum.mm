@interface OrgApacheLuceneDocumentField_TermVectorEnum
+ (id)toTermVectorWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a5;
+ (void)initialize;
@end

@implementation OrgApacheLuceneDocumentField_TermVectorEnum

+ (id)toTermVectorWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a5
{
  v5 = a5;
  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v8 = OrgApacheLuceneDocumentField_TermVectorEnum_values_;
  v9 = 1;
  if (v5)
  {
    v9 = 2;
  }

  v10 = &OrgApacheLuceneDocumentField_TermVectorEnum_values_[v9];
  v11 = 3;
  if (v5)
  {
    v11 = 4;
  }

  v12 = &OrgApacheLuceneDocumentField_TermVectorEnum_values_[v11];
  if (withBooleanCopy)
  {
    v10 = v12;
  }

  if (booleanCopy)
  {
    v8 = v10;
  }

  return *v8;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneDocumentField_TermVector__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NO", 0);
    OrgApacheLuceneDocumentField_TermVectorEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneDocumentField_TermVector__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"YES", 1);
    qword_1005577C8 = v3;
    v4 = [OrgApacheLuceneDocumentField_TermVector__3Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"WITH_POSITIONS", 2);
    qword_1005577D0 = v4;
    v5 = [OrgApacheLuceneDocumentField_TermVector__4Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"WITH_OFFSETS", 3);
    qword_1005577D8 = v5;
    v6 = [OrgApacheLuceneDocumentField_TermVector__5Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"WITH_POSITIONS_OFFSETS", 4);
    qword_1005577E0 = v6;
    atomic_store(1u, OrgApacheLuceneDocumentField_TermVectorEnum__initialized);
  }
}

@end