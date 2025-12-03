@interface OrgApacheLuceneUtilBitSetIterator
+ (id)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
+ (id)getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (int)advanceWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBitSetIterator

+ (id)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  v4 = OrgApacheLuceneUtilFixedBitSet_class_();

  return sub_100021FDC(iterator, v4);
}

+ (id)getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  v4 = OrgApacheLuceneUtilSparseFixedBitSet_class_();

  return sub_100021FDC(iterator, v4);
}

- (int)advanceWithInt:(int)int
{
  if (self->length_ <= int)
  {
    result = 0x7FFFFFFF;
  }

  else
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    result = [(OrgApacheLuceneUtilBitSet *)bits nextSetBitWithInt:?];
  }

  self->doc_ = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBitSetIterator;
  [(OrgApacheLuceneUtilBitSetIterator *)&v3 dealloc];
}

@end