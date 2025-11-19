@interface OrgApacheLuceneStoreRAMOutputStream
- (OrgApacheLuceneStoreRAMOutputStream)init;
- (id)getChildResources;
- (id)switchCurrentBuffer;
- (int64_t)getChecksum;
- (int64_t)getFilePointer;
- (int64_t)ramBytesUsed;
- (uint64_t)flush;
- (void)dealloc;
- (void)reset;
- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)a3;
@end

@implementation OrgApacheLuceneStoreRAMOutputStream

- (OrgApacheLuceneStoreRAMOutputStream)init
{
  v3 = new_OrgApacheLuceneStoreRAMFile_init();
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(self, @"noname", v3, 0, v4, v5, v6, v7);
  return self;
}

- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)a3
{
  [(OrgApacheLuceneStoreRAMOutputStream *)self flush];
  file = self->file_;
  if (!file)
  {
    goto LABEL_10;
  }

  length = file->length_;
  if (length < 1)
  {
    return;
  }

  if (!a3)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v7 = 0;
  v8 = 0;
  v9 = file->length_;
  do
  {
    v7 += 1024;
    if (v7 <= length)
    {
      v10 = 1024;
    }

    else
    {
      v10 = v9;
    }

    [a3 writeBytesWithByteArray:-[OrgApacheLuceneStoreRAMFile getBufferWithInt:](self->file_ withInt:{"getBufferWithInt:", v8), v10}];
    LODWORD(v9) = v9 - 1024;
    v8 = (v8 + 1);
  }

  while (v7 < length);
}

- (void)reset
{
  JreStrongAssign(&self->currentBuffer_, 0);
  self->currentBufferIndex_ = -1;
  self->bufferPosition_ = 0;
  self->bufferStart_ = 0;
  self->bufferLength_ = 0;
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreRAMFile *)file setLengthWithLong:0];
  crc = self->crc_;
  if (crc)
  {

    [(JavaUtilZipChecksum *)crc reset];
  }
}

- (id)switchCurrentBuffer
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 40);
  v4 = [v2 numBuffers];
  v5 = *(a1 + 24);
  v6 = v3 == v4 ? [v5 addBufferWithInt:1024] : objc_msgSend(v5, "getBufferWithInt:", *(a1 + 40));
  result = JreStrongAssign((a1 + 32), v6);
  *(a1 + 44) = 0;
  *(a1 + 48) = *(a1 + 40) << 10;
  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  *(a1 + 56) = *(v8 + 8);
  return result;
}

- (uint64_t)flush
{
  result = *(a1 + 24);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(a1 + 48) + *(a1 + 44) > result[2])
  {

    return [result setLengthWithLong:?];
  }

  return result;
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

- (int64_t)ramBytesUsed
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreRAMFile *)file numBuffers]<< 10;
}

- (id)getChildResources
{
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"file", self->file_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (int64_t)getChecksum
{
  crc = self->crc_;
  if (!crc)
  {
    v5 = new_JavaLangIllegalStateException_initWithNSString_(@"internal RAMOutputStream created with checksum disabled");
    objc_exception_throw(v5);
  }

  return [(JavaUtilZipChecksum *)crc getValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMOutputStream;
  [(OrgApacheLuceneStoreIndexOutput *)&v3 dealloc];
}

@end