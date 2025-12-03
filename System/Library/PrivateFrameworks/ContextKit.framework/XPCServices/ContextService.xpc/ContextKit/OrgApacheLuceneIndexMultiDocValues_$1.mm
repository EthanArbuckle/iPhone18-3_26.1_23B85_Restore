@interface OrgApacheLuceneIndexMultiDocValues_$1
- (int64_t)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiDocValues_$1

- (int64_t)getWithInt:(int)int
{
  v5 = OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(int, self->val$starts_);
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

  v9 = (&v6->elementType_)[v7];
  if (!v9 || (v10 = self->val$starts_) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v11 = v10->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v7);
  }

  v12 = (int - *(&v10->super.size_ + v7 + 1));

  return [(IOSClass *)v9 getWithInt:v12];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiDocValues__1;
  [(OrgApacheLuceneIndexMultiDocValues_$1 *)&v3 dealloc];
}

@end