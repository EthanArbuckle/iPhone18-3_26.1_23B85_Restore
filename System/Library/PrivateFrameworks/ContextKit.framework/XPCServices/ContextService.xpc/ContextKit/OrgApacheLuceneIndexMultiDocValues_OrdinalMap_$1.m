@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1
- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1)initWithOrgApacheLuceneUtilPackedPackedInts_Mutable:(id)a3;
- (int64_t)getWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1

- (int64_t)getWithLong:(int64_t)a3
{
  v3 = self->val$newDeltas_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)v3 getWithInt:?]+ a3;
}

- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1)initWithOrgApacheLuceneUtilPackedPackedInts_Mutable:(id)a3
{
  JreStrongAssign(&self->val$newDeltas_, a3);
  OrgApacheLuceneUtilLongValues_init(self);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues_OrdinalMap__1;
  [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1 *)&v3 dealloc];
}

@end