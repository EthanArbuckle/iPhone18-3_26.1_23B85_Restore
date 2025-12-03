@interface OrgApacheLuceneUtilBitSet
- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
@end

@implementation OrgApacheLuceneUtilBitSet

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  sub_100070E20(iterator);
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  nextDoc = [iterator nextDoc];
  if (nextDoc != 0x7FFFFFFF)
  {
    nextDoc2 = nextDoc;
    do
    {
      [(OrgApacheLuceneUtilBitSet *)self setWithInt:nextDoc2];
      nextDoc2 = [iterator nextDoc];
    }

    while (nextDoc2 != 0x7FFFFFFF);
  }
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  sub_100070E20(iterator);
  v5 = [OrgApacheLuceneUtilBitSet__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v5->previous_ = -1;
  v6 = v5;

  sub_100070F04(self, iterator, v6);
}

- (void)andNotWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  sub_100070E20(iterator);
  v5 = [OrgApacheLuceneUtilBitSet__2 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v6 = v5;

  sub_100070F04(self, iterator, v6);
}

@end