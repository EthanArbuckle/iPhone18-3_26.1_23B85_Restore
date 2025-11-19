@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1
- (BOOL)hasNext;
- (OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1)initWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields:(id)a3;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1

- (BOOL)hasNext
{
  fieldNumOffs = self->this$0_->fieldNumOffs_;
  if (!fieldNumOffs)
  {
    JreThrowNullPointerException();
  }

  return self->i_ < fieldNumOffs->super.size_;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1 *)self hasNext])
  {
    v13 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v13);
  }

  v3 = self->this$0_;
  fieldNums = v3->fieldNums_;
  if (!fieldNums)
  {
    goto LABEL_11;
  }

  fieldNumOffs = v3->fieldNumOffs_;
  if (!fieldNumOffs)
  {
    goto LABEL_11;
  }

  i = self->i_;
  self->i_ = i + 1;
  size = fieldNumOffs->super.size_;
  if (i < 0 || i >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, i);
  }

  v8 = *(&fieldNumOffs->super.size_ + i + 1);
  v9 = fieldNums->super.size_;
  if (v8 < 0 || v8 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v8);
  }

  fieldInfos = self->this$0_->this$0_->fieldInfos_;
  if (!fieldInfos || (v11 = [(OrgApacheLuceneIndexFieldInfos *)fieldInfos fieldInfoWithInt:*(&fieldNums->super.size_ + v8 + 1)]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  return *(v11 + 1);
}

- (OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1)initWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
  self->i_ = 0;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields__1;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields_$1 *)&v3 dealloc];
}

@end