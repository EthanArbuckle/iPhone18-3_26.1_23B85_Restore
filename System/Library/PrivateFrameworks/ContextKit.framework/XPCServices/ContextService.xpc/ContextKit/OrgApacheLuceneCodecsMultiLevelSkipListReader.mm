@interface OrgApacheLuceneCodecsMultiLevelSkipListReader
- (int)skipToWithInt:(int)int;
- (uint64_t)loadSkipLevels;
- (void)close;
- (void)dealloc;
- (void)init__WithLong:(int64_t)long withInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsMultiLevelSkipListReader

- (int)skipToWithInt:(int)int
{
  v5 = 0;
  do
  {
    v6 = v5;
    if (v5 >= self->numberOfSkipLevels_ - 1)
    {
      goto LABEL_8;
    }

    skipDoc = self->skipDoc_;
    if (!skipDoc)
    {
LABEL_28:
      JreThrowNullPointerException();
    }

    ++v5;
    size = skipDoc->super.size_;
    if (v6 + 1 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (v6 + 1));
    }
  }

  while (skipDoc->buffer_[v6] < int);
  do
  {
    while (1)
    {
LABEL_8:
      v9 = self->skipDoc_;
      if (!v9)
      {
        goto LABEL_28;
      }

      v10 = v9->super.size_;
      if (v6 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v6);
      }

      if (*(&v9->super.size_ + v6 + 1) >= int)
      {
        break;
      }

      if (sub_10005D18C(self, v6))
      {
        v11 = v6;
        goto LABEL_19;
      }
    }

    if (!v6)
    {
      break;
    }

    skipStream = self->skipStream_;
    if (!skipStream)
    {
      goto LABEL_28;
    }

    v11 = (v6 - 1);
    v14 = skipStream->super.size_;
    if (v6 > v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, (v6 - 1));
    }

    v15 = (&skipStream->elementType_)[v11];
    if (!v15)
    {
      goto LABEL_28;
    }

    lastChildPointer = self->lastChildPointer_;
    if (lastChildPointer > [(IOSClass *)v15 getFilePointer])
    {
      [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)self seekChildWithInt:(v6 - 1)];
    }

LABEL_19:
    v6 = v11;
  }

  while ((v11 & 0x80000000) == 0);
  numSkipped = self->numSkipped_;
  if (!numSkipped)
  {
    goto LABEL_28;
  }

  v17 = numSkipped->super.size_;
  if (v17 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, 0);
  }

  skipInterval = self->skipInterval_;
  if (!skipInterval)
  {
    goto LABEL_28;
  }

  v19 = *(&numSkipped->super.size_ + 1);
  v20 = skipInterval->super.size_;
  if (v20 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, 0);
  }

  return v19 + ~*(&skipInterval->super.size_ + 1);
}

- (void)close
{
  skipStream = self->skipStream_;
  if (!skipStream)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v4 = 1;
  while (v4 < skipStream->super.size_)
  {
    v5 = (&skipStream->elementType_)[v4];
    if (v5)
    {
      [(IOSClass *)v5 close];
      skipStream = self->skipStream_;
    }

    ++v4;
    if (!skipStream)
    {
      goto LABEL_7;
    }
  }
}

- (void)init__WithLong:(int64_t)long withInt:(int)int
{
  skipPointer = self->skipPointer_;
  if (!skipPointer)
  {
    JreThrowNullPointerException();
  }

  size = skipPointer->super.size_;
  if (size < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  skipPointer->buffer_[0] = long;
  self->docCount_ = int;
  JavaUtilArrays_fillWithIntArray_withInt_(self->skipDoc_, 0);
  JavaUtilArrays_fillWithIntArray_withInt_(self->numSkipped_, 0);
  JavaUtilArrays_fillWithLongArray_withLong_(self->childPointer_, 0);
  if (self->numberOfSkipLevels_ > 1)
  {
    v7 = 1;
    do
    {
      IOSObjectArray_Set(self->skipStream_, v7++, 0);
    }

    while (v7 < self->numberOfSkipLevels_);
  }

  [OrgApacheLuceneCodecsMultiLevelSkipListReader loadSkipLevels]_0(self);
}

- (uint64_t)loadSkipLevels
{
  v1 = *(self + 56);
  if (!v1)
  {
    goto LABEL_52;
  }

  v3 = *(self + 32);
  v4 = *(v1 + 8);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  if (v3 <= *(v1 + 12))
  {
    v7 = 1;
  }

  else
  {
    v5 = *(self + 56);
    v6 = *(v5 + 8);
    if (v6 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, 0);
    }

    v7 = OrgApacheLuceneUtilMathUtil_logWithLong_withInt_(*(self + 32) / *(v5 + 12), *(self + 100)) + 1;
  }

  if (v7 >= *(self + 8))
  {
    v7 = *(self + 8);
  }

  *(self + 24) = v7;
  v8 = *(self + 40);
  if (!v8)
  {
    goto LABEL_52;
  }

  v9 = *(v8 + 8);
  if (v9 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 0);
  }

  v10 = *(v8 + 24);
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = *(self + 48);
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = *(v11 + 8);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  [v10 seekWithLong:*(v11 + 16)];
  v13 = (*(self + 24) - 1);
  if (v13 >= 1)
  {
    v14 = *(self + 28);
    while (1)
    {
      v15 = *(self + 40);
      v16 = *(v15 + 8);
      if (v16 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, 0);
      }

      v17 = *(v15 + 24);
      if (!v17)
      {
        break;
      }

      readVLong = [v17 readVLong];
      v19 = *(self + 40);
      v20 = *(v19 + 8);
      if (v20 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, 0);
      }

      v21 = *(v19 + 24);
      if (!v21)
      {
        break;
      }

      getFilePointer = [v21 getFilePointer];
      v23 = *(self + 48);
      v24 = *(v23 + 8);
      if (v13 >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, v13);
      }

      *(v23 + 16 + 8 * v13) = getFilePointer;
      v25 = *(self + 40);
      v26 = *(v25 + 8);
      v27 = v14 - 1;
      if (v14 < 1)
      {
        if (v26 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, 0);
        }

        v35 = *(v25 + 24);
        if (!v35)
        {
          break;
        }

        IOSObjectArray_Set(v25, v13, [v35 clone]);
        if (*(self + 96) == 1 && readVLong <= 1023)
        {
          v36 = *(self + 40);
          v37 = *(v36 + 8);
          if (v13 >= v37)
          {
            IOSArray_throwOutOfBoundsWithMsg(v37, v13);
          }

          v38 = *(v36 + 24 + 8 * v13);
          objc_opt_class();
          if (!v38)
          {
            break;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          [v38 setBufferSizeWithInt:{JavaLangMath_maxWithInt_withInt_(8, readVLong)}];
        }

        v39 = *(self + 40);
        v40 = *(v39 + 8);
        if (v40 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, 0);
        }

        v41 = *(v39 + 24);
        if (!v41)
        {
          break;
        }

        v42 = *(self + 40);
        v43 = *(v42 + 8);
        if (v43 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, 0);
        }

        v44 = *(v42 + 24);
        if (!v44)
        {
          break;
        }

        [v41 seekWithLong:{objc_msgSend(v44, "getFilePointer") + readVLong}];
      }

      else
      {
        if (v26 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, 0);
        }

        v28 = *(v25 + 24);
        v29 = [OrgApacheLuceneCodecsMultiLevelSkipListReader_SkipBuffer alloc];
        sub_10005DCFC(v29, v28, readVLong, v30, v31, v32, v33, v34);
        IOSObjectArray_SetAndConsume(v25, v13, v29);
        v14 = v27;
      }

      if (v13-- <= 1)
      {
        goto LABEL_48;
      }
    }

LABEL_52:
    JreThrowNullPointerException();
  }

LABEL_48:
  v46 = *(self + 40);
  v47 = *(v46 + 8);
  if (v47 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v47, 0);
  }

  v48 = *(v46 + 24);
  if (!v48)
  {
    goto LABEL_52;
  }

  getFilePointer2 = [v48 getFilePointer];
  v50 = *(self + 48);
  result = *(v50 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v50 + 16) = getFilePointer2;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsMultiLevelSkipListReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v3 dealloc];
}

@end