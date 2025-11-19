@interface OrgApacheLuceneUtilBitSetIterator
+ (id)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
+ (id)getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3;
- (int)advanceWithInt:(int)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBitSetIterator

+ (id)getFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  v4 = OrgApacheLuceneUtilFixedBitSet_class_();

  return sub_100021FDC(a3, v4);
}

+ (id)getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator:(id)a3
{
  v4 = OrgApacheLuceneUtilSparseFixedBitSet_class_();

  return sub_100021FDC(a3, v4);
}

- (int)advanceWithInt:(int)a3
{
  if (self->length_ <= a3)
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