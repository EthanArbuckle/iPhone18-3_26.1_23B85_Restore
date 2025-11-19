@interface OrgApacheLuceneIndexTermsEnum
+ (void)initialize;
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)attributes;
- (id)termState;
- (void)dealloc;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4;
@end

@implementation OrgApacheLuceneIndexTermsEnum

- (id)attributes
{
  p_atts = &self->atts_;
  result = self->atts_;
  if (!result)
  {
    v4 = new_OrgApacheLuceneUtilAttributeSource_init();
    JreStrongAssignAndConsume(p_atts, v4);
    return *p_atts;
  }

  return result;
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  v3 = [(OrgApacheLuceneIndexTermsEnum *)self seekCeilWithOrgApacheLuceneUtilBytesRef:a3];
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  return v3 == qword_100557A48;
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneIndexTermState:(id)a4
{
  if (![(OrgApacheLuceneIndexTermsEnum *)self seekExactWithOrgApacheLuceneUtilBytesRef:a3, a4])
  {
    v11 = JreStrcat("$@$", v4, v5, v6, v7, v8, v9, v10, @"term=");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }
}

- (id)termState
{
  v2 = [OrgApacheLuceneIndexTermsEnum__2 alloc];
  OrgApacheLuceneIndexTermState_init(v2, v3);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneIndexTermsEnum__1 alloc];
    JreStrongAssign(&v2->super.atts_, 0);
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexTermsEnum_EMPTY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexTermsEnum__initialized);
  }
}

@end