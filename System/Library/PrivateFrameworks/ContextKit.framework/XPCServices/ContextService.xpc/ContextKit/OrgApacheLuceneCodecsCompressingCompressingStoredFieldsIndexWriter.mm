@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter
- (void)close;
- (void)dealloc;
- (void)writeIndexWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter

- (void)writeIndexWithInt:(int)int withLong:(int64_t)long
{
  blockChunks = self->blockChunks_;
  if (blockChunks == self->blockSize_)
  {
    sub_100013CB0(self);
    blockChunks = 0;
    *&self->blockDocs_ = 0;
LABEL_4:
    self->firstStartPointer_ = long;
    self->maxStartPointer_ = long;
    goto LABEL_5;
  }

  if (self->firstStartPointer_ == -1)
  {
    goto LABEL_4;
  }

LABEL_5:
  docBaseDeltas = self->docBaseDeltas_;
  if (!docBaseDeltas)
  {
    goto LABEL_12;
  }

  size = docBaseDeltas->super.size_;
  if ((blockChunks & 0x80000000) != 0 || blockChunks >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, blockChunks);
  }

  *(&docBaseDeltas->super.size_ + blockChunks + 1) = int;
  startPointerDeltas = self->startPointerDeltas_;
  if (!startPointerDeltas)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v11 = self->blockChunks_;
  v12 = startPointerDeltas->super.size_;
  if (v11 < 0 || v11 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, self->blockChunks_);
  }

  v13 = self->blockChunks_;
  startPointerDeltas->buffer_[v11] = long - self->maxStartPointer_;
  self->blockChunks_ = v11 + 1;
  *&self->totalDocs_ = vadd_s32(*&self->totalDocs_, vdup_n_s32(int));
  self->maxStartPointer_ = long;
}

- (void)close
{
  fieldsIndexOut = self->fieldsIndexOut_;
  if (!fieldsIndexOut)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexOutput *)fieldsIndexOut close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *)&v3 dealloc];
}

@end