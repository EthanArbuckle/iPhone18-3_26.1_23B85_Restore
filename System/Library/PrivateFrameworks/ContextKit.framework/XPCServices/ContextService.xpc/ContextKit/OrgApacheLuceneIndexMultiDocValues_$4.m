@interface OrgApacheLuceneIndexMultiDocValues_$4
- (int)count;
- (void)dealloc;
- (void)setDocumentWithInt:(int)a3;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_$4

- (void)setDocumentWithInt:(int)a3
{
  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(a3, self->val$starts_);
  v6 = self->val$values_;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v5;
  size = v6->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  JreStrongAssign(&self->current_, (&v6->elementType_)[v7]);
  current = self->current_;
  if (!current || (v10 = self->val$starts_) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v11 = v10->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v7);
  }

  v12 = (a3 - *(&v10->super.size_ + v7 + 1));

  [(OrgApacheLuceneIndexSortedNumericDocValues *)current setDocumentWithInt:v12];
}

- (int)count
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSortedNumericDocValues *)current count];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues__4;
  [(OrgApacheLuceneIndexMultiDocValues_$4 *)&v3 dealloc];
}

@end