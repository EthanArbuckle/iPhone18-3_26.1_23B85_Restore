@interface OrgApacheLuceneUtilFstBytesStore
+ (void)initialize;
- (NSString)description;
- (id)getForwardReader;
- (id)getReverseReaderWithBoolean:(BOOL)a3;
- (int64_t)getPosition;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)finish;
- (void)reverseWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (void)skipBytesWithInt:(int)a3;
- (void)truncateWithLong:(int64_t)a3;
- (void)writeByteWithByte:(char)a3;
- (void)writeByteWithInt:(int)a3 withByte:(char)a4;
- (void)writeIntWithLong:(int64_t)a3 withInt:(int)a4;
- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)a3;
@end

@implementation OrgApacheLuceneUtilFstBytesStore

- (void)writeByteWithInt:(int)a3 withByte:(char)a4
{
  blocks = self->blocks_;
  if (!blocks || (v9 = [(JavaUtilList *)blocks getWithInt:(a3 >> self->blockBits_)]) == 0)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = self->blockMask_ & a3;
  v12 = v9[2];
  if (v11 < 0 != v8 || v11 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v11);
  }

  *(v10 + v11 + 12) = a4;
}

- (void)writeByteWithByte:(char)a3
{
  nextWrite = self->nextWrite_;
  if (nextWrite == self->blockSize_)
  {
    JreStrongAssignAndConsume(&self->current_, [IOSByteArray newArrayWithLength:nextWrite]);
    blocks = self->blocks_;
    if (!blocks)
    {
      goto LABEL_8;
    }

    [(JavaUtilList *)blocks addWithId:self->current_];
    nextWrite = 0;
    self->nextWrite_ = 0;
  }

  current = self->current_;
  if (!current)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  self->nextWrite_ = nextWrite + 1;
  size = current->super.size_;
  if ((nextWrite & 0x80000000) != 0 || nextWrite >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, nextWrite);
  }

  *(&current->super.size_ + nextWrite + 4) = a3;
}

- (void)writeIntWithLong:(int64_t)a3 withInt:(int)a4
{
  blocks = self->blocks_;
  if (!blocks)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v7 = self->blockMask_ & a3;
  v8 = a3 >> self->blockBits_;
  v9 = [(JavaUtilList *)blocks getWithInt:v8];
  for (i = 24; i != -8; i -= 8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = *(v9 + 2);
    if ((v7 & 0x80000000) != 0 || v7 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v7);
    }

    v12 = (v7 + 1);
    v9[v7 + 12] = a4 >> (i & 0x18);
    if (v12 == self->blockSize_)
    {
      v8 = (v8 + 1);
      v9 = [(JavaUtilList *)self->blocks_ getWithInt:v8];
      v12 = 0;
    }

    v7 = v12;
  }
}

- (void)reverseWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  blocks = self->blocks_;
  if (!blocks)
  {
    goto LABEL_25;
  }

  v7 = a3;
  blockMask = self->blockMask_;
  v9 = a3 >> self->blockBits_;
  v10 = [(JavaUtilList *)blocks getWithInt:v9];
  v11 = self->blockMask_;
  v23 = a4 >> self->blockBits_;
  v12 = [(JavaUtilList *)self->blocks_ getWithInt:?];
  v13 = a4 - v7 + 1;
  if (v13 >= 2)
  {
    v14 = v12;
    v15 = v13 / 2;
    v16 = v11 & a4;
    v17 = blockMask & v7;
    while (v10)
    {
      v18 = *(v10 + 2);
      if ((v17 & 0x80000000) != 0 || v17 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v17);
      }

      if (!v14)
      {
        break;
      }

      v19 = v10[v17 + 12];
      v20 = *(v14 + 2);
      if ((v16 & 0x80000000) != 0 || v16 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v16);
      }

      v21 = *(v10 + 2);
      if ((v17 & 0x80000000) != 0 || v17 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v17);
      }

      v10[v17 + 12] = v14[v16 + 12];
      v22 = *(v14 + 2);
      if ((v16 & 0x80000000) != 0 || v16 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v16);
      }

      v14[v16 + 12] = v19;
      v17 = (v17 + 1);
      if (v17 == self->blockSize_)
      {
        v9 = (v9 + 1);
        v10 = [(JavaUtilList *)self->blocks_ getWithInt:v9];
        v17 = 0;
      }

      if (!v16)
      {
        LODWORD(v23) = v23 - 1;
        v14 = [(JavaUtilList *)self->blocks_ getWithInt:?];
        LODWORD(v16) = self->blockSize_;
      }

      v16 = (v16 - 1);
      if (!--v15)
      {
        return;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }
}

- (void)skipBytesWithInt:(int)a3
{
  if (a3 >= 1)
  {
    nextWrite = self->nextWrite_;
    while (1)
    {
      v5 = self->blockSize_ - nextWrite;
      v6 = a3 - v5;
      if (a3 <= v5)
      {
        break;
      }

      JreStrongAssignAndConsume(&self->current_, [IOSByteArray newArrayWithLength:self->blockSize_]);
      blocks = self->blocks_;
      if (!blocks)
      {
        JreThrowNullPointerException();
      }

      [(JavaUtilList *)blocks addWithId:self->current_];
      nextWrite = 0;
      self->nextWrite_ = 0;
      a3 = v6;
      if (v6 <= 0)
      {
        return;
      }
    }

    self->nextWrite_ = nextWrite + a3;
  }
}

- (int64_t)getPosition
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  return self->nextWrite_ + ([(JavaUtilList *)blocks size]- 1) * self->blockSize_;
}

- (void)truncateWithLong:(int64_t)a3
{
  v5 = a3 >> self->blockBits_;
  v6 = (self->blockMask_ & a3) == 0;
  self->nextWrite_ = self->blockMask_ & a3;
  if (v6)
  {
    v5 = (v5 - 1);
    self->nextWrite_ = self->blockSize_;
  }

  blocks = self->blocks_;
  if (!blocks || (v8 = [(JavaUtilList *)blocks subListWithInt:(v5 + 1) withInt:[(JavaUtilList *)self->blocks_ size]]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v8 clear];
  if (a3)
  {
    v9 = [(JavaUtilList *)self->blocks_ getWithInt:v5];
  }

  else
  {
    v9 = 0;
  }

  JreStrongAssign(&self->current_, v9);
}

- (void)finish
{
  if (self->current_)
  {
    v3 = [IOSByteArray arrayWithLength:self->nextWrite_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->current_, 0, v3, 0, self->nextWrite_);
    blocks = self->blocks_;
    if (!blocks)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilList *)blocks setWithInt:[(JavaUtilList *)self->blocks_ size]- 1 withId:v3];

    JreStrongAssign(&self->current_, 0);
  }
}

- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  blocks = self->blocks_;
  if (!blocks)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)self->blocks_ countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(blocks);
        }

        if (!a3)
        {
          goto LABEL_12;
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_12;
        }

        [a3 writeBytesWithByteArray:v9 withInt:0 withInt:{*(v9 + 8), v10}];
      }

      v6 = [(JavaUtilList *)blocks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)getForwardReader
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilList *)blocks size]== 1)
  {
    v4 = new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_([(JavaUtilList *)self->blocks_ getWithInt:0]);
  }

  else
  {
    v4 = [OrgApacheLuceneUtilFstBytesStore__1 alloc];
    JreStrongAssign(&v4->this$0_, self);
    OrgApacheLuceneUtilFstFST_BytesReader_init(v4, v5);
    v4->nextRead_ = self->blockSize_;
  }

  return v4;
}

- (id)getReverseReaderWithBoolean:(BOOL)a3
{
  if (!a3)
  {
    goto LABEL_5;
  }

  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilList *)blocks size]== 1)
  {
    v5 = new_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_([(JavaUtilList *)self->blocks_ getWithInt:0]);
  }

  else
  {
LABEL_5:
    v5 = [OrgApacheLuceneUtilFstBytesStore__2 alloc];
    sub_1000D44B8(v5, &self->super.super.isa);
  }

  return v5;
}

- (int64_t)ramBytesUsed
{
  v2 = qword_100554500;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilList *)self->blocks_ countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(blocks);
        }

        v2 += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(*(*(&v9 + 1) + 8 * i));
      }

      v5 = [(JavaUtilList *)blocks countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneUtilFstBytesStore getClass](self "getClass")];
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)blocks size];
  return JreStrcat("$$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBytesStore;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilFstBytesStore_class_();
    v3 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    v4 = JavaUtilArrayList_class_();
    qword_100554500 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v4) + v3;
    atomic_store(1u, &OrgApacheLuceneUtilFstBytesStore__initialized);
  }
}

@end