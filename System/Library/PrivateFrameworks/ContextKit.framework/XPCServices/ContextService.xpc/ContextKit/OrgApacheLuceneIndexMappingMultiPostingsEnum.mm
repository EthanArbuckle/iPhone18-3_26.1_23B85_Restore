@interface OrgApacheLuceneIndexMappingMultiPostingsEnum
- (id)getPayload;
- (id)resetWithOrgApacheLuceneIndexMultiPostingsEnum:(id)a3;
- (int)endOffset;
- (int)freq;
- (int)nextDoc;
- (int)nextPosition;
- (int)startOffset;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMappingMultiPostingsEnum

- (id)resetWithOrgApacheLuceneIndexMultiPostingsEnum:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->numSubs_ = [a3 getNumSubs];
  JreStrongAssign(&self->subs_, [a3 getSubs]);
  self->upto_ = -1;
  self->doc_ = -1;
  JreStrongAssign(&self->current_, 0);
  JreStrongAssign(&self->multiDocsAndPositionsEnum_, a3);
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

- (int)nextDoc
{
  while (1)
  {
    current = self->current_;
    if (!current)
    {
      break;
    }

LABEL_19:
    v20 = [(OrgApacheLuceneIndexPostingsEnum *)current nextDoc];
    if (v20 == 0x7FFFFFFF)
    {
      JreStrongAssign(&self->current_, 0);
    }

    else
    {
      v21 = v20;
      currentMap = self->currentMap_;
      if (!currentMap)
      {
        goto LABEL_30;
      }

      v23 = [(OrgApacheLuceneIndexMergeState_DocMap *)currentMap getWithInt:v21];
      if (v23 != -1)
      {
        result = self->currentBase_ + v23;
        goto LABEL_29;
      }
    }
  }

  upto = self->upto_;
  if (upto != self->numSubs_ - 1)
  {
    v5 = (upto + 1);
    self->upto_ = v5;
    subs = self->subs_;
    if (!subs)
    {
      goto LABEL_30;
    }

    size = subs->super.size_;
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v8 = (&subs->elementType_)[v5];
    if (!v8)
    {
      goto LABEL_30;
    }

    isa = v8[2].super.isa;
    if (!isa)
    {
      goto LABEL_30;
    }

    v10 = *(isa + 4);
    v11 = self->subs_;
    v12 = self->upto_;
    v13 = v11->super.size_;
    if (v12 < 0 || v12 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v12);
    }

    v14 = (&v11->elementType_)[v12];
    if (!v14)
    {
      goto LABEL_30;
    }

    JreStrongAssign(&self->current_, v14[1].super.isa);
    mergeState = self->mergeState_;
    if (!mergeState)
    {
      goto LABEL_30;
    }

    docBase = mergeState->docBase_;
    if (!docBase)
    {
      goto LABEL_30;
    }

    v17 = docBase->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v10);
    }

    self->currentBase_ = *(&docBase->super.size_ + v10 + 1);
    docMaps = self->mergeState_->docMaps_;
    if (!docMaps)
    {
      goto LABEL_30;
    }

    v19 = docMaps->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v10);
    }

    JreStrongAssign(&self->currentMap_, (&docMaps->elementType_)[v10]);
    current = self->current_;
    if (!current)
    {
LABEL_30:
      JreThrowNullPointerException();
    }

    goto LABEL_19;
  }

  result = 0x7FFFFFFF;
LABEL_29:
  self->doc_ = result;
  return result;
}

- (int)nextPosition
{
  current = self->current_;
  if (!current)
  {
    goto LABEL_13;
  }

  result = [(OrgApacheLuceneIndexPostingsEnum *)current nextPosition];
  if (result < 0)
  {
    doc = self->doc_;
    field = self->field_;
    v12 = JreStrcat("$I$$$I", v5, v6, v7, v8, v9, v10, v11, @"position=");
LABEL_7:
    mergeState = self->mergeState_;
    if (mergeState)
    {
      fieldsProducers = mergeState->fieldsProducers_;
      if (fieldsProducers)
      {
        v15 = v12;
        upto = self->upto_;
        size = fieldsProducers->super.size_;
        if (upto < 0 || upto >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, upto);
        }

        v18 = (&fieldsProducers->elementType_)[upto];
        if (v18)
        {
          v19 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(v15, [(IOSClass *)v18 description]);
          objc_exception_throw(v19);
        }
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (result > 0x7FFFFF7F)
  {
    v23 = self->doc_;
    v22 = self->field_;
    v12 = JreStrcat("$I$I$$$I", v5, v6, v7, v8, v9, v10, v11, @"position=");
    goto LABEL_7;
  }

  return result;
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
  subs = self->subs_;
  if (!subs)
  {
    goto LABEL_10;
  }

  p_elementType = &subs->elementType_;
  v4 = &(&subs->elementType_)[subs->super.size_];
  if (&subs->elementType_ < v4)
  {
    v5 = 0;
    while (1)
    {
      v7 = *p_elementType++;
      v6 = v7;
      if (!v7)
      {
        break;
      }

      v8 = *(v6 + 8);
      if (!v8)
      {
        break;
      }

      v5 += [v8 cost];
      if (p_elementType >= v4)
      {
        return v5;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMappingMultiPostingsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end