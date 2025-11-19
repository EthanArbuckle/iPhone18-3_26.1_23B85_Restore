@interface OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery
- (BOOL)isEqual:(id)a3;
- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4;
- (id)toStringWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery

- (BOOL)isEqual:(id)a3
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  v5 = [(OrgApacheLuceneSearchQuery *)&v10 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (!a3)
    {
      v8 = *(&self->super.boost_ + 1);
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v6 = *(&self->super.boost_ + 1);
    if (!v6)
    {
      goto LABEL_9;
    }

    v5 = [v6 isEqual:*(a3 + 12)];
    if (v5)
    {
      v7 = *(&self->filter_ + 4);
      if (v7)
      {
        LOBYTE(v5) = [v7 isEqual:*(a3 + 20)];
        return v5;
      }

LABEL_9:
      JreThrowNullPointerException();
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  v3 = [(OrgApacheLuceneSearchQuery *)&v7 hash];
  v4 = *(&self->filter_ + 4);
  v8[0] = *(&self->super.boost_ + 1);
  v8[1] = v4;
  v5 = [IOSObjectArray arrayWithObjects:v8 count:2 type:NSObject_class_()];
  return (OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_(v5) - v3 + 32 * v3);
}

- (id)toStringWithNSString:(id)a3
{
  v4 = *(&self->super.boost_ + 1);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 toStringWithNSString:a3];
}

- (id)createWeightWithOrgApacheLuceneSearchIndexSearcher:(id)a3 withBoolean:(BOOL)a4
{
  v5 = [OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(v5, self);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery;
  [(OrgApacheLuceneSearchFilteredQuery_RandomAccessFilterWrapperQuery *)&v3 dealloc];
}

@end