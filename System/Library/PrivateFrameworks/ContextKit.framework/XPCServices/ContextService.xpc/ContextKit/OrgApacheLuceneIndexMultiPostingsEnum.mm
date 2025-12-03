@interface OrgApacheLuceneIndexMultiPostingsEnum
- (id)getPayload;
- (id)resetWithOrgApacheLuceneIndexMultiPostingsEnum_EnumWithSliceArray:(id)array withInt:(int)int;
- (int)advanceWithInt:(int)int;
- (int)endOffset;
- (int)freq;
- (int)nextDoc;
- (int)nextPosition;
- (int)startOffset;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiPostingsEnum

- (id)resetWithOrgApacheLuceneIndexMultiPostingsEnum_EnumWithSliceArray:(id)array withInt:(int)int
{
  self->numSubs_ = int;
  if (int >= 1)
  {
    v6 = 0;
    do
    {
      subs = self->subs_;
      if (!subs)
      {
        goto LABEL_20;
      }

      size = subs->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      v10 = (&subs->elementType_)[v6];
      if (!v10 || !array)
      {
        goto LABEL_20;
      }

      v11 = *(array + 2);
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v12 = *(array + v6 + 3);
      if (!v12)
      {
        goto LABEL_20;
      }

      JreStrongAssign(&v10[1].super.isa, *(v12 + 8));
      v13 = self->subs_;
      v14 = v13->super.size_;
      if (v6 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v6);
      }

      v15 = (&v13->elementType_)[v6];
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = *(array + 2);
      if (v6 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v6);
      }

      v17 = *(array + v6 + 3);
      if (!v17)
      {
LABEL_20:
        JreThrowNullPointerException();
      }

      JreStrongAssign(&v15[2].super.isa, *(v17 + 16));
      ++v6;
    }

    while (int != v6);
  }

  self->upto_ = -1;
  self->doc_ = -1;
  JreStrongAssign(&self->current_, 0);
  return self;
}

- (int)freq
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)current freq];
}

- (int)advanceWithInt:(int)int
{
  while (1)
  {
    while (1)
    {
      current = self->current_;
      if (!current)
      {
        break;
      }

      currentBase = self->currentBase_;
      v7 = (int - currentBase);
      if (int >= currentBase)
      {
        nextDoc = [(OrgApacheLuceneIndexPostingsEnum *)current advanceWithInt:v7];
      }

      else
      {
        nextDoc = [(OrgApacheLuceneIndexPostingsEnum *)current nextDoc];
      }

      if (nextDoc != 0x7FFFFFFF)
      {
        result = self->currentBase_ + nextDoc;
        goto LABEL_21;
      }

      JreStrongAssign(&self->current_, 0);
    }

    upto = self->upto_;
    if (upto == self->numSubs_ - 1)
    {
      break;
    }

    v10 = (upto + 1);
    self->upto_ = v10;
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_22;
    }

    size = subs->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    v13 = (&subs->elementType_)[v10];
    if (!v13)
    {
      goto LABEL_22;
    }

    JreStrongAssign(&self->current_, v13[1].super.isa);
    v14 = self->subs_;
    v15 = self->upto_;
    v16 = v14->super.size_;
    if (v15 < 0 || v15 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v15);
    }

    v17 = (&v14->elementType_)[v15];
    if (!v17 || (isa = v17[2].super.isa) == 0)
    {
LABEL_22:
      JreThrowNullPointerException();
    }

    self->currentBase_ = *(isa + 2);
  }

  result = 0x7FFFFFFF;
LABEL_21:
  self->doc_ = result;
  return result;
}

- (int)nextDoc
{
  while (1)
  {
    current = self->current_;
    if (current)
    {
      goto LABEL_12;
    }

    upto = self->upto_;
    if (upto == self->numSubs_ - 1)
    {
      break;
    }

    v5 = (upto + 1);
    self->upto_ = v5;
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_19;
    }

    size = subs->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = (&subs->elementType_)[v5];
    if (!v8)
    {
      goto LABEL_19;
    }

    JreStrongAssign(&self->current_, v8[1].super.isa);
    v9 = self->subs_;
    v10 = self->upto_;
    v11 = v9->super.size_;
    if (v10 < 0 || v10 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v10);
    }

    v12 = (&v9->elementType_)[v10];
    if (!v12 || (isa = v12[2].super.isa) == 0 || (self->currentBase_ = *(isa + 2), (current = self->current_) == 0))
    {
LABEL_19:
      JreThrowNullPointerException();
    }

LABEL_12:
    nextDoc = [(OrgApacheLuceneIndexPostingsEnum *)current nextDoc];
    if (nextDoc != 0x7FFFFFFF)
    {
      result = self->currentBase_ + nextDoc;
      goto LABEL_18;
    }

    JreStrongAssign(&self->current_, 0);
  }

  result = 0x7FFFFFFF;
LABEL_18:
  self->doc_ = result;
  return result;
}

- (int)nextPosition
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)current nextPosition];
}

- (int)startOffset
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)current startOffset];
}

- (int)endOffset
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)current endOffset];
}

- (id)getPayload
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)current getPayload];
}

- (int64_t)cost
{
  if (self->numSubs_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_12;
    }

    size = subs->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    v7 = (&subs->elementType_)[v3];
    if (!v7 || (isa = v7[1].super.isa) == 0)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    v4 += [(objc_class *)isa cost];
    ++v3;
  }

  while (v3 < self->numSubs_);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiPostingsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end