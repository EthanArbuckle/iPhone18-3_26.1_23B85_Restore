@interface OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl
- (char)readByteWithLong:(int64_t)long;
- (id)buildSliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (int)readIntWithLong:(int64_t)long;
- (int64_t)getFilePointer;
- (int64_t)readLongWithLong:(int64_t)long;
- (signed)readShortWithLong:(int64_t)long;
- (void)seekWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl

- (void)seekWithLong:(int64_t)long
{
  offset = self->offset_;
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  [(OrgApacheLuceneStoreByteBufferIndexInput *)&v4 seekWithLong:offset + long];
}

- (int64_t)getFilePointer
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v3 getFilePointer]- self->offset_;
}

- (char)readByteWithLong:(int64_t)long
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readByteWithLong:offset + long];
}

- (signed)readShortWithLong:(int64_t)long
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readShortWithLong:offset + long];
}

- (int)readIntWithLong:(int64_t)long
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readIntWithLong:offset + long];
}

- (int64_t)readLongWithLong:(int64_t)long
{
  offset = self->offset_;
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v5 readLongWithLong:offset + long];
}

- (id)buildSliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong
{
  offset = self->offset_;
  v7.receiver = self;
  v7.super_class = OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl;
  return [(OrgApacheLuceneStoreByteBufferIndexInput *)&v7 buildSliceWithNSString:string withLong:offset + long withLong:withLong];
}

@end