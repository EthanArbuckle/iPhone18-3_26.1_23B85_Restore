@interface OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator
- (OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)initWithInt:(int)int withOrgApacheLuceneUtilCounter:(id)counter;
- (OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)initWithOrgApacheLuceneUtilCounter:(id)counter;
- (id)getByteBlock;
- (void)dealloc;
- (void)recycleByteBlocksWithByteArray2:(id)array2 withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator

- (OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)initWithOrgApacheLuceneUtilCounter:(id)counter
{
  self->super.blockSize_ = 0x8000;
  JreStrongAssign(&self->bytesUsed_, counter);
  return self;
}

- (OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator)initWithInt:(int)int withOrgApacheLuceneUtilCounter:(id)counter
{
  self->super.blockSize_ = int;
  JreStrongAssign(&self->bytesUsed_, counter);
  return self;
}

- (id)getByteBlock
{
  bytesUsed = self->bytesUsed_;
  if (!bytesUsed)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilCounter *)bytesUsed addAndGetWithLong:self->super.blockSize_];
  blockSize = self->super.blockSize_;

  return [IOSByteArray arrayWithLength:blockSize];
}

- (void)recycleByteBlocksWithByteArray2:(id)array2 withInt:(int)int withInt:(int)withInt
{
  bytesUsed = self->bytesUsed_;
  if (!bytesUsed)
  {
    goto LABEL_7;
  }

  LODWORD(v8) = int;
  [(OrgApacheLuceneUtilCounter *)bytesUsed addAndGetWithLong:self->super.blockSize_ * (int - withInt)];
  if (v8 >= withInt)
  {
    return;
  }

  if (!array2)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v8 = v8;
  do
  {
    IOSObjectArray_Set(array2, v8++, 0);
  }

  while (withInt != v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator;
  [(OrgApacheLuceneUtilByteBlockPool_DirectTrackingAllocator *)&v3 dealloc];
}

@end