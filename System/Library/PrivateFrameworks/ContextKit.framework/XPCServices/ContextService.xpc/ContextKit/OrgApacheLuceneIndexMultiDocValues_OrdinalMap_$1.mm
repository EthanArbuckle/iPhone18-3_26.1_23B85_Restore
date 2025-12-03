@interface OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1
- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1)initWithOrgApacheLuceneUtilPackedPackedInts_Mutable:(id)mutable;
- (int64_t)getWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1

- (int64_t)getWithLong:(int64_t)long
{
  v3 = self->val$newDeltas_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)v3 getWithInt:?]+ long;
}

- (OrgApacheLuceneIndexMultiDocValues_OrdinalMap_$1)initWithOrgApacheLuceneUtilPackedPackedInts_Mutable:(id)mutable
{
  JreStrongAssign(&self->val$newDeltas_, mutable);
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