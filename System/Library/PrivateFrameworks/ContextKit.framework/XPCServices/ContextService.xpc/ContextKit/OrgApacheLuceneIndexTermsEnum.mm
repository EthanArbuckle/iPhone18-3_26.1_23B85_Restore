@interface OrgApacheLuceneIndexTermsEnum
+ (void)initialize;
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)attributes;
- (id)termState;
- (void)dealloc;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state;
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

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  v3 = [(OrgApacheLuceneIndexTermsEnum *)self seekCeilWithOrgApacheLuceneUtilBytesRef:ref];
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  return v3 == qword_100557A48;
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state
{
  if (![(OrgApacheLuceneIndexTermsEnum *)self seekExactWithOrgApacheLuceneUtilBytesRef:ref, state])
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
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneIndexTermsEnum__1 alloc];
    JreStrongAssign(&v2->super.atts_, 0);
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexTermsEnum_EMPTY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexTermsEnum__initialized);
  }
}

@end