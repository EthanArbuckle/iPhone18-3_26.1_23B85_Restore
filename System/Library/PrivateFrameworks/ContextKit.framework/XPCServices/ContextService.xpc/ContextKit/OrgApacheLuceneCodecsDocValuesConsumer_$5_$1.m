@interface OrgApacheLuceneCodecsDocValuesConsumer_$5_$1
- (BOOL)hasNext;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer_$5_$1

- (BOOL)hasNext
{
  if (!self->this$0_->val$map_)
  {
    JreThrowNullPointerException();
  }

  currentOrd = self->currentOrd_;
  return [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)self->this$0_->val$map_ getValueCount]> currentOrd;
}

- (id)next
{
  if (![(OrgApacheLuceneCodecsDocValuesConsumer_$5_$1 *)self hasNext])
  {
    v11 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v11);
  }

  v3 = self->this$0_->val$map_;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)v3 getFirstSegmentNumberWithLong:self->currentOrd_];
  v5 = [(OrgApacheLuceneIndexMultiDocValues_OrdinalMap *)self->this$0_->val$map_ getFirstSegmentOrdWithLong:self->currentOrd_];
  v6 = self->this$0_->val$dvs_;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v5;
  size = v6->super.size_;
  if ((v4 & 0x80000000) != 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v9 = (&v6->elementType_)[v4];
  if (!v9)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  result = [(IOSClass *)v9 lookupOrdWithInt:v7];
  ++self->currentOrd_;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsDocValuesConsumer__5__1;
  [(OrgApacheLuceneCodecsDocValuesConsumer_$5_$1 *)&v3 dealloc];
}

@end