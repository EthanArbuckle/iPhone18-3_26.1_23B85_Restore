@interface OrgApacheLuceneUtilBitSet
- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
@end

@implementation OrgApacheLuceneUtilBitSet

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  sub_100070E20(a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 nextDoc];
  if (v5 != 0x7FFFFFFF)
  {
    v6 = v5;
    do
    {
      [(OrgApacheLuceneUtilBitSet *)self setWithInt:v6];
      v6 = [a3 nextDoc];
    }

    while (v6 != 0x7FFFFFFF);
  }
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  sub_100070E20(a3);
  v5 = [OrgApacheLuceneUtilBitSet__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v5->previous_ = -1;
  v6 = v5;

  sub_100070F04(self, a3, v6);
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  sub_100070E20(a3);
  v5 = [OrgApacheLuceneUtilBitSet__2 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v6 = v5;

  sub_100070F04(self, a3, v6);
}

@end