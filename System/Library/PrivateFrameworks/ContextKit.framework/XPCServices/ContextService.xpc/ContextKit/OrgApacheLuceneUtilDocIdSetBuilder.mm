@interface OrgApacheLuceneUtilDocIdSetBuilder
- (id)buildWithLong:(int64_t)long;
- (void)addWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilDocIdSetBuilder

- (void)addWithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  if (!iterator)
  {
    goto LABEL_22;
  }

  -[OrgApacheLuceneUtilDocIdSetBuilder growWithInt:](self, "growWithInt:", JavaLangMath_minWithLong_withLong_(0x7FFFFFFFLL, [iterator cost]));
  bitSet = self->bitSet_;
  if (bitSet)
  {

    [(OrgApacheLuceneUtilBitSet *)bitSet or__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
  }

  else
  {
    while (1)
    {
      size = self->buffer_->super.size_;
      bufferSize = self->bufferSize_;
      if (bufferSize < size)
      {
        while (1)
        {
          nextDoc = [iterator nextDoc];
          if (nextDoc == 0x7FFFFFFF)
          {
            break;
          }

          v15 = nextDoc;
          buffer = self->buffer_;
          v17 = self->bufferSize_;
          self->bufferSize_ = v17 + 1;
          v18 = buffer->super.size_;
          if (v17 < 0 || v17 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v17);
          }

          *(&buffer->super.size_ + v17 + 1) = v15;
          if (size == ++bufferSize)
          {
            goto LABEL_13;
          }
        }

        self->bufferSize_ = bufferSize;
        return;
      }

LABEL_13:
      self->bufferSize_ = size;
      if (size + 1 >= self->threshold_)
      {
        break;
      }

      sub_1000DFB40(self, size + 1, v5, v6, v7, v8, v9, v10);
    }

    sub_1000DFA70(self);
    nextDoc2 = [iterator nextDoc];
    if (nextDoc2 != 0x7FFFFFFF)
    {
      nextDoc3 = nextDoc2;
      while (1)
      {
        v21 = self->bitSet_;
        if (!v21)
        {
          break;
        }

        [(OrgApacheLuceneUtilBitSet *)v21 setWithInt:nextDoc3];
        nextDoc3 = [iterator nextDoc];
        if (nextDoc3 == 0x7FFFFFFF)
        {
          return;
        }
      }

LABEL_22:
      JreThrowNullPointerException();
    }
  }
}

- (id)buildWithLong:(int64_t)long
{
  p_bitSet = &self->bitSet_;
  bitSet = self->bitSet_;
  if (bitSet)
  {
    if (long == -1)
    {
      v6 = new_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(bitSet);
    }

    else
    {
      v6 = new_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_withLong_(bitSet, long);
    }

    v25 = v6;
    goto LABEL_26;
  }

  p_buffer = &self->buffer_;
  [new_OrgApacheLuceneUtilLSBRadixSorter_init() sortWithIntArray:self->buffer_ withInt:0 withInt:self->bufferSize_];
  bufferSize = self->bufferSize_;
  v31 = p_bitSet;
  if (bufferSize)
  {
    buffer = self->buffer_;
    if (!buffer)
    {
      goto LABEL_27;
    }

    size = buffer->super.size_;
    if (size < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    if (bufferSize <= 1)
    {
      v21 = 1;
    }

    else
    {
      v17 = *(&buffer->super.size_ + 1);
      v18 = bufferSize - 1;
      v19 = &buffer->super.super.isa + 4;
      v20 = 1;
      v21 = 1;
      do
      {
        v22 = buffer->super.size_;
        if (v20 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v20);
        }

        v23 = *(v19 + 3);
        if (v23 != v17)
        {
          v24 = buffer->super.size_;
          if ((v21 & 0x80000000) != 0 || v21 >= v24)
          {
            IOSArray_throwOutOfBoundsWithMsg(v24, v21);
          }

          *(&buffer->super.size_ + v21 + 1) = v23;
          v21 = (v21 + 1);
          v17 = v23;
        }

        ++v20;
        v19 += 4;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v21 = 0;
  }

  p_bitSet = v31;
  v26 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(*p_buffer, v21 + 1, v8, v9, v10, v11, v12, v13);
  JreStrongAssign(&self->buffer_, v26);
  v27 = *p_buffer;
  if (!*p_buffer)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v28 = v27[2];
  if ((v21 & 0x80000000) != 0 || v21 >= v28)
  {
    IOSArray_throwOutOfBoundsWithMsg(v28, v21);
  }

  v27[v21 + 3] = 0x7FFFFFFF;
  v25 = new_OrgApacheLuceneUtilIntArrayDocIdSet_initWithIntArray_withInt_(*p_buffer, v21);
LABEL_26:
  v29 = v25;
  JreStrongAssign(&self->buffer_, 0);
  self->bufferSize_ = 0;
  JreStrongAssign(p_bitSet, 0);
  return v29;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilDocIdSetBuilder;
  [(OrgApacheLuceneUtilDocIdSetBuilder *)&v3 dealloc];
}

@end