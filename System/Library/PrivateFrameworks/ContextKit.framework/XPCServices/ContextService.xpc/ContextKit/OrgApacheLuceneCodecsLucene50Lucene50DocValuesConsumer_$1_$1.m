@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1_$1
- (BOOL)hasNext;
- (id)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1_$1

- (BOOL)hasNext
{
  v3 = self->val$valueCountIterator_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)v3 hasNext];
}

- (id)next
{
  v3 = self->val$valueCountIterator_;
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = [(JavaUtilIterator *)v3 next];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = [v4 intValue];
  v6 = self->val$docValues_;
  if (!v6)
  {
    goto LABEL_17;
  }

  v6->length_ = v5;
  if (self->val$docValues_->length_ >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = self->val$valueIterator_;
      if (!v8)
      {
        break;
      }

      v9 = [(JavaUtilIterator *)v8 next];
      if (!v9)
      {
        break;
      }

      v10 = [v9 longLongValue];
      longs = self->val$docValues_->longs_;
      if (!longs)
      {
        break;
      }

      v12 = v10;
      size = longs->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      longs->buffer_[v7++] = v12;
      if (v7 >= self->val$docValues_->length_)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

LABEL_13:
  v14 = self->this$0_->val$setIds_;
  if (!v14)
  {
    goto LABEL_17;
  }

  return [(JavaUtilMap *)v14 getWithId:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer__1__1;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1_$1 *)&v3 dealloc];
}

@end