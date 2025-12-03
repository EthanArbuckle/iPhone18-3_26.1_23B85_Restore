@interface ComAppleContextkitUtilSpindleArray_Bucket
- (BOOL)skipToEntryIdWithComAppleContextkitUtilSpindleArray_State:(id)state withInt:(int)int;
- (void)completeEntryWithComAppleContextkitUtilSpindleArray_State:(id)state;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilSpindleArray_Bucket

- (void)completeEntryWithComAppleContextkitUtilSpindleArray_State:(id)state
{
  self->startOffset_ = self->bytesRead_;
  do
  {
    uncompressed = self->uncompressed_;
    if (!uncompressed)
    {
      JreThrowNullPointerException();
    }

    bytesRead = self->bytesRead_;
    self->bytesRead_ = bytesRead + 1;
    v6 = bytesRead;
    size = uncompressed->super.size_;
    if (bytesRead < 0 || bytesRead >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bytesRead);
    }

    v8 = *(&uncompressed->super.size_ + bytesRead + 4);
  }

  while (*(&uncompressed->super.size_ + v6 + 4));
  self->entryLength_ = self->bytesRead_ - self->startOffset_;
}

- (BOOL)skipToEntryIdWithComAppleContextkitUtilSpindleArray_State:(id)state withInt:(int)int
{
  if (self->currentEntryId_ < int)
  {
    while (1)
    {
      uncompressed = self->uncompressed_;
      if (!uncompressed)
      {
LABEL_20:
        JreThrowNullPointerException();
      }

      bytesRead = self->bytesRead_;
      self->bytesRead_ = bytesRead + 1;
      v7 = bytesRead;
      size = uncompressed->super.size_;
      if (bytesRead < 0 || bytesRead >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, bytesRead);
      }

      v9 = *(&uncompressed->super.size_ + bytesRead + 4);
      if (!*(&uncompressed->super.size_ + v7 + 4))
      {
        v10 = self->currentEntryId_ + 1;
        self->currentEntryId_ = v10;
        if (v10 >= int)
        {
          break;
        }
      }
    }
  }

  v11 = self->bytesRead_;
  self->startOffset_ = v11;
  if (v11 >= self->numBytesDecompressed_)
  {
    result = 0;
    v15 = v11;
  }

  else
  {
    do
    {
      v12 = self->uncompressed_;
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12->super.size_;
      if ((v11 & 0x80000000) != 0 || v11 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v11);
      }

      result = *(&v12->super.size_ + v11 + 4) == 0;
      if (!*(&v12->super.size_ + v11 + 4))
      {
        break;
      }

      v11 = (v11 + 1);
      self->bytesRead_ = v11;
    }

    while (v11 < self->numBytesDecompressed_);
    v15 = v11;
    LODWORD(v11) = self->startOffset_;
  }

  self->entryLength_ = v15 - v11;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilSpindleArray_Bucket;
  [(ComAppleContextkitUtilSpindleArray_Bucket *)&v3 dealloc];
}

@end