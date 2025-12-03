@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput
- (char)readByte;
- (id)clone;
- (id)nextBlock;
- (void)dealloc;
- (void)setPositionWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput

- (id)clone
{
  getDataInput = [(OrgApacheLuceneUtilPagedBytes *)self->this$0_ getDataInput];
  if (!getDataInput)
  {
    JreThrowNullPointerException();
  }

  v4 = getDataInput;
  [getDataInput setPositionWithLong:{-[OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput getPosition](self, "getPosition")}];
  return v4;
}

- (void)setPositionWithLong:(int64_t)long
{
  v3 = long >> self->this$0_->blockBits_;
  self->currentBlockIndex_ = v3;
  blocks = self->this$0_->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  longCopy = long;
  size = blocks->super.size_;
  if ((v3 & 0x80000000) != 0 || size <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v3);
  }

  JreStrongAssign(&self->currentBlock_, (&blocks->elementType_)[v3]);
  self->currentBlockUpto_ = self->this$0_->blockMask_ & longCopy;
}

- (char)readByte
{
  if (self->currentBlockUpto_ == self->this$0_->blockSize_)
  {
    [OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput nextBlock]_0(self);
  }

  currentBlock = self->currentBlock_;
  if (!currentBlock)
  {
    JreThrowNullPointerException();
  }

  currentBlockUpto = self->currentBlockUpto_;
  self->currentBlockUpto_ = currentBlockUpto + 1;
  size = currentBlock->super.size_;
  if (currentBlockUpto < 0 || currentBlockUpto >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, currentBlockUpto);
  }

  return *(&currentBlock->super.size_ + currentBlockUpto + 4);
}

- (id)nextBlock
{
  *(self + 24) = (*(self + 24) + 1);
  v1 = *(*(self + 16) + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v3 = *(self + 24);
  v4 = *(v1 + 8);
  if (v3 < 0 || v3 >= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, v3);
  }

  v5 = *(v1 + 24 + 8 * v3);

  return JreStrongAssign((self + 32), v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end