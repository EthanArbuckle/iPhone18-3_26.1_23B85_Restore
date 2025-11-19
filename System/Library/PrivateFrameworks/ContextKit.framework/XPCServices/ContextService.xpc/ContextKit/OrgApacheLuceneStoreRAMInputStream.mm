@interface OrgApacheLuceneStoreRAMInputStream
- (OrgApacheLuceneStoreRAMInputStream)initWithNSString:(id)a3 withOrgApacheLuceneStoreRAMFile:(id)a4;
- (char)readByte;
- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int64_t)getFilePointer;
- (void)dealloc;
- (void)seekWithLong:(int64_t)a3;
@end

@implementation OrgApacheLuceneStoreRAMInputStream

- (OrgApacheLuceneStoreRAMInputStream)initWithNSString:(id)a3 withOrgApacheLuceneStoreRAMFile:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, a3, a4, *(a4 + 2), v4, v5, v6, v7);
  return self;
}

- (char)readByte
{
  if (self->bufferPosition_ >= self->bufferLength_)
  {
    ++self->currentBufferIndex_;
    sub_10002BB44(&self->super.super.super.isa, 1, v2, v3, v4, v5, v6, v7);
  }

  currentBuffer = self->currentBuffer_;
  if (!currentBuffer)
  {
    JreThrowNullPointerException();
  }

  bufferPosition = self->bufferPosition_;
  self->bufferPosition_ = bufferPosition + 1;
  size = currentBuffer->super.size_;
  if (bufferPosition < 0 || bufferPosition >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
  }

  return *(&currentBuffer->super.size_ + bufferPosition + 4);
}

- (int64_t)getFilePointer
{
  if (self->currentBufferIndex_ < 0)
  {
    return 0;
  }

  else
  {
    return self->bufferStart_ + self->bufferPosition_;
  }
}

- (void)seekWithLong:(int64_t)a3
{
  if (!self->currentBuffer_ || ((bufferStart = self->bufferStart_, bufferStart <= a3) ? (v11 = bufferStart + 1024 <= a3) : (v11 = 1), v11))
  {
    self->currentBufferIndex_ = a3 / 1024;
    sub_10002BB44(&self->super.super.super.isa, 0, a3, v3, v4, v5, v6, v7);
  }

  if (a3 <= 0)
  {
    v12 = -(-a3 & 0x3FF);
  }

  else
  {
    LODWORD(v12) = a3 & 0x3FF;
  }

  self->bufferPosition_ = v12;
}

- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  if ((a5 | a4) < 0 || (v10 = a5 + a4, a5 + a4 > self->length_))
  {
    v19 = JreStrcat("$$$@", a2, a3, a4, a5, v5, v6, v7, @"slice() ");
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  v11 = [(OrgApacheLuceneStoreIndexInput *)self getFullSliceDescriptionWithNSString:a3];
  file = self->file_;
  v13 = [OrgApacheLuceneStoreRAMInputStream__1 alloc];
  *(&v13->super.bufferLength_ + 1) = a4;
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(v13, v11, file, v10, v14, v15, v16, v17);
  [(OrgApacheLuceneStoreRAMInputStream_$1 *)v13 seekWithLong:0];

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMInputStream;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end