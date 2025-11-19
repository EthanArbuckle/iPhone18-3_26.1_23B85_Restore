@interface ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator
- (ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator)initWithInt:(int)a3 withOrgApacheLuceneUtilCounter:(id)a4;
- (ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator)initWithOrgApacheLuceneUtilCounter:(id)a3;
- (id)getByteBlock;
- (void)dealloc;
- (void)recycleByteBlocksWithByteArray2:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator

- (ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator)initWithOrgApacheLuceneUtilCounter:(id)a3
{
  self->super.blockSize_ = 0x8000;
  JreStrongAssign(&self->bytesUsed_, a3);
  return self;
}

- (ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator)initWithInt:(int)a3 withOrgApacheLuceneUtilCounter:(id)a4
{
  self->super.blockSize_ = a3;
  JreStrongAssign(&self->bytesUsed_, a4);
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
  v5.receiver = self;
  v5.super_class = ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator;
  return [(ComAppleContextkitUtilBytesRefPool_Allocator *)&v5 getByteBlock];
}

- (void)recycleByteBlocksWithByteArray2:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  bytesUsed = self->bytesUsed_;
  if (!bytesUsed)
  {
    goto LABEL_7;
  }

  LODWORD(v8) = a4;
  [(OrgApacheLuceneUtilCounter *)bytesUsed addAndGetWithLong:self->super.blockSize_ * (a4 - a5)];
  if (v8 >= a5)
  {
    return;
  }

  if (!a3)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v8 = v8;
  do
  {
    IOSObjectArray_Set(a3, v8++, 0);
  }

  while (a5 != v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator;
  [(ComAppleContextkitUtilBytesRefPool_DirectTrackingAllocator *)&v3 dealloc];
}

@end