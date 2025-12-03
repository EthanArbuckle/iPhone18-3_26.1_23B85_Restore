@interface ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator
- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator)initWithLongArray:(id)array withInt:(int)int;
- (int)advanceWithInt:(int)int;
- (int)nextDoc;
- (void)dealloc;
@end

@implementation ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator

- (ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator)initWithLongArray:(id)array withInt:(int)int
{
  OrgApacheLuceneSearchDocIdSetIterator_init(self, a2);
  self->i_ = -1;
  self->curDocId_ = -1;
  JreStrongAssign(&self->arr_, array);
  self->words_ = int;
  return self;
}

- (int)nextDoc
{
  indexArray = self->indexArray_;
  if (indexArray)
  {
    goto LABEL_12;
  }

  word = self->word_;
  if (word)
  {
    self->word_ = word >> 8;
    self->wordShift_ += 8;
    if (word > 0xFF)
    {
LABEL_11:
      sub_10000C85C(self);
      indexArray = self->indexArray_;
LABEL_12:
      v9 = self->wordShift_ + (indexArray & 0xF);
      self->indexArray_ = indexArray >> 4;
      result = v9 + (self->i_ << 6);
      goto LABEL_13;
    }
  }

  while (1)
  {
    v5 = (self->i_ + 1);
    self->i_ = v5;
    if (v5 >= self->words_)
    {
      break;
    }

    arr = self->arr_;
    if (!arr)
    {
      JreThrowNullPointerException();
    }

    size = arr->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = arr->buffer_[v5];
    self->word_ = v8;
    self->wordShift_ = -1;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  result = 0x7FFFFFFF;
LABEL_13:
  self->curDocId_ = result;
  return result;
}

- (int)advanceWithInt:(int)int
{
  self->indexArray_ = 0;
  self->i_ = int >> 6;
  if (int >> 6 >= self->words_)
  {
    self->word_ = 0;
LABEL_15:
    result = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v4 = int & 0x3F;
  self->wordShift_ = v4;
  arr = self->arr_;
  if (!arr)
  {
    JreThrowNullPointerException();
  }

  i = self->i_;
  size = arr->super.size_;
  if (i < 0 || i >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, i);
  }

  v8 = arr->buffer_[i] >> v4;
  self->word_ = v8;
  if (!v8)
  {
    while (1)
    {
      v13 = (self->i_ + 1);
      self->i_ = v13;
      if (v13 >= self->words_)
      {
        goto LABEL_15;
      }

      v10 = self->arr_;
      v11 = v10->super.size_;
      if ((v13 & 0x80000000) != 0 || v13 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v13);
      }

      v12 = v10->buffer_[v13];
      self->word_ = v12;
      if (v12)
      {
        v9 = -1;
        goto LABEL_16;
      }
    }
  }

  v9 = v4 - 1;
LABEL_16:
  self->wordShift_ = v9;
  sub_10000C85C(self);
  v15 = (self->indexArray_ & 0xF) + self->wordShift_;
  self->indexArray_ = self->indexArray_ >> 4;
  result = v15 + (self->i_ << 6);
LABEL_17:
  self->curDocId_ = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator;
  [(ComAppleProactiveOrgApacheLuceneUtilOpenBitSetIterator *)&v3 dealloc];
}

@end