@interface OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator
- (OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator)initWithIntArray:(id)array withInt:(int)int;
- (int)advanceWithInt:(int)int;
- (int)nextDoc;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator

- (OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator)initWithIntArray:(id)array withInt:(int)int
{
  OrgApacheLuceneSearchDocIdSetIterator_init(self, a2);
  self->i_ = -1;
  self->doc_ = -1;
  JreStrongAssign(&self->docs_, array);
  self->length_ = int;
  return self;
}

- (int)nextDoc
{
  docs = self->docs_;
  if (!docs)
  {
    JreThrowNullPointerException();
  }

  i = self->i_;
  v5 = i + 1;
  self->i_ = i + 1;
  size = docs->super.size_;
  if (i + 1 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (i + 1));
  }

  result = *(&docs->super.size_ + v5 + 1);
  self->doc_ = result;
  return result;
}

- (int)advanceWithInt:(int)int
{
  v4 = JavaUtilArrays_binarySearchWithIntArray_withInt_withInt_withInt_(self->docs_, (self->i_ + 1), self->length_, int);
  v5 = v4 ^ (v4 >> 31);
  self->i_ = v5;
  docs = self->docs_;
  if (!docs)
  {
    JreThrowNullPointerException();
  }

  size = docs->super.size_;
  if ((v5 & 0x80000000) != 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  result = *(&docs->super.size_ + v5 + 1);
  self->doc_ = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator;
  [(OrgApacheLuceneUtilIntArrayDocIdSet_IntArrayDocIdSetIterator *)&v3 dealloc];
}

@end