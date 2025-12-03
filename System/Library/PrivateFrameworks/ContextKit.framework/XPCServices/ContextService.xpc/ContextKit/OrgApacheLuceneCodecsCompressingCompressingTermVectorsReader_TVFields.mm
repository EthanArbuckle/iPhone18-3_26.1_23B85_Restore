@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields
- (id)iterator;
- (id)termsWithNSString:(id)string;
- (int)size;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields

- (id)iterator
{
  v3 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields__1 alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->i_ = 0;

  return v3;
}

- (id)termsWithNSString:(id)string
{
  fieldInfos = self->this$0_->fieldInfos_;
  if (!fieldInfos)
  {
    goto LABEL_55;
  }

  v5 = [(OrgApacheLuceneIndexFieldInfos *)fieldInfos fieldInfoWithNSString:string];
  if (!v5)
  {
    return 0;
  }

  fieldNumOffs = self->fieldNumOffs_;
  if (!fieldNumOffs)
  {
    goto LABEL_55;
  }

  v7 = v5;
  v8 = 0;
  while (1)
  {
    if (v8 >= fieldNumOffs->super.size_)
    {
      return 0;
    }

    fieldNums = self->fieldNums_;
    if (!fieldNums)
    {
      goto LABEL_55;
    }

    v10 = *(&fieldNumOffs->super.size_ + v8 + 1);
    size = fieldNums->super.size_;
    if (v10 < 0 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    if (*(&fieldNums->super.size_ + v10 + 1) == v7[4])
    {
      break;
    }

    fieldNumOffs = self->fieldNumOffs_;
    ++v8;
    if (!fieldNumOffs)
    {
      goto LABEL_55;
    }
  }

  if (v8 == -1)
  {
    return 0;
  }

  numTerms = self->numTerms_;
  if (!numTerms)
  {
    goto LABEL_55;
  }

  v13 = numTerms->super.size_;
  if (v8 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v8);
  }

  if (!*(&numTerms->super.size_ + v8 + 1))
  {
    return 0;
  }

  v14 = self->fieldNumOffs_;
  if (v14->super.size_ < 1)
  {
    v16 = 0;
LABEL_27:
    v21 = -1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v8;
    while (1)
    {
      fieldLengths = self->fieldLengths_;
      if (!v17)
      {
        break;
      }

      if (!fieldLengths)
      {
        goto LABEL_55;
      }

      v19 = fieldLengths->super.size_;
      if (v15 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v15);
      }

      v16 += *(&fieldLengths->super.size_ + ++v15);
      --v17;
      if (v15 >= v14->super.size_)
      {
        goto LABEL_27;
      }
    }

    if (!fieldLengths)
    {
LABEL_55:
      JreThrowNullPointerException();
    }

    v22 = fieldLengths->super.size_;
    if (v8 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v8);
    }

    v21 = *(&fieldLengths->super.size_ + v8 + 1);
  }

  v23 = self->numTerms_;
  if (!v23)
  {
    goto LABEL_55;
  }

  v24 = v23->super.size_;
  if (v8 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v8);
  }

  fieldFlags = self->fieldFlags_;
  if (!fieldFlags)
  {
    goto LABEL_55;
  }

  v26 = *(&v23->super.size_ + v8 + 1);
  v27 = fieldFlags->super.size_;
  if (v8 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v8);
  }

  prefixLengths = self->prefixLengths_;
  if (!prefixLengths)
  {
    goto LABEL_55;
  }

  v29 = *(&fieldFlags->super.size_ + v8 + 1);
  v30 = prefixLengths->super.size_;
  if (v8 >= v30)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, v8);
  }

  suffixLengths = self->suffixLengths_;
  if (!suffixLengths)
  {
    goto LABEL_55;
  }

  v32 = (&prefixLengths->elementType_)[v8];
  v33 = suffixLengths->super.size_;
  if (v8 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v8);
  }

  termFreqs = self->termFreqs_;
  if (!termFreqs)
  {
    goto LABEL_55;
  }

  v35 = (&suffixLengths->elementType_)[v8];
  v36 = termFreqs->super.size_;
  if (v8 >= v36)
  {
    IOSArray_throwOutOfBoundsWithMsg(v36, v8);
  }

  positionIndex = self->positionIndex_;
  if (!positionIndex)
  {
    goto LABEL_55;
  }

  v58 = (&termFreqs->elementType_)[v8];
  v38 = positionIndex->super.size_;
  if (v8 >= v38)
  {
    IOSArray_throwOutOfBoundsWithMsg(v38, v8);
  }

  positions = self->positions_;
  if (!positions)
  {
    goto LABEL_55;
  }

  v55 = (&positionIndex->elementType_)[v8];
  v40 = positions->super.size_;
  if (v8 >= v40)
  {
    IOSArray_throwOutOfBoundsWithMsg(v40, v8);
  }

  v56 = v35;
  v57 = v32;
  startOffsets = self->startOffsets_;
  if (!startOffsets)
  {
    goto LABEL_55;
  }

  v42 = (&positions->elementType_)[v8];
  v43 = startOffsets->super.size_;
  if (v8 >= v43)
  {
    IOSArray_throwOutOfBoundsWithMsg(v43, v8);
  }

  lengths = self->lengths_;
  if (!lengths)
  {
    goto LABEL_55;
  }

  v45 = (&startOffsets->elementType_)[v8];
  v46 = lengths->super.size_;
  if (v8 >= v46)
  {
    IOSArray_throwOutOfBoundsWithMsg(v46, v8);
  }

  payloadIndex = self->payloadIndex_;
  if (!payloadIndex)
  {
    goto LABEL_55;
  }

  v48 = (&lengths->elementType_)[v8];
  v49 = payloadIndex->super.size_;
  if (v8 >= v49)
  {
    IOSArray_throwOutOfBoundsWithMsg(v49, v8);
  }

  suffixBytes = self->suffixBytes_;
  if (!suffixBytes)
  {
    goto LABEL_55;
  }

  payloadBytes = self->payloadBytes_;
  v52 = (&payloadIndex->elementType_)[v8];
  v53 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(suffixBytes->bytes_, suffixBytes->offset_ + v16, v21);
  v54 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVTerms alloc];
  sub_100083F24(v54, v26, v29, v57, v56, v58, v55, v42, v45, v48, v52, payloadBytes, v53);

  return v54;
}

- (int)size
{
  fieldNumOffs = self->fieldNumOffs_;
  if (!fieldNumOffs)
  {
    JreThrowNullPointerException();
  }

  return fieldNumOffs->super.size_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_TVFields *)&v3 dealloc];
}

@end