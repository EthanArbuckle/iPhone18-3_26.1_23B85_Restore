@interface OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl
- (char)readByteWithLong:(int64_t)a3;
- (id)buildSliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int)readIntWithLong:(int64_t)a3;
- (int64_t)getFilePointer;
- (int64_t)readLongWithLong:(int64_t)a3;
- (signed)readShortWithLong:(int64_t)a3;
- (void)seekWithLong:(int64_t)a3;
@end

@implementation OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl

- (void)seekWithLong:(int64_t)a3
{
  offset = self->offset_;
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  [(OrgApacheLuceneStoreByteBufferIndexInput *)&v4 seekWithLong:offset + a3];
}

- (int64_t)getFilePointer
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v3 getFilePointer]- self->offset_;
}

- (char)readByteWithLong:(int64_t)a3
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readByteWithLong:offset + a3];
}

- (signed)readShortWithLong:(int64_t)a3
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readShortWithLong:offset + a3];
}

- (int)readIntWithLong:(int64_t)a3
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readIntWithLong:offset + a3];
}

- (int64_t)readLongWithLong:(int64_t)a3
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readLongWithLong:offset + a3];
}

- (id)buildSliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  offset = self->offset_;
  v7.receiver = self;
  v7.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v7 buildSliceWithNSString:a3 withLong:offset + a4 withLong:a5];
}

@end