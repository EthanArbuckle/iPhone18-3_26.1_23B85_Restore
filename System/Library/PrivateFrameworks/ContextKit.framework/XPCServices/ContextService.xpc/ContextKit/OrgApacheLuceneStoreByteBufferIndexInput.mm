@interface OrgApacheLuceneStoreByteBufferIndexInput
- (char)readByte;
- (char)readByteWithLong:(int64_t)a3;
- (id)buildSliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (id)clone;
- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int)readInt;
- (int)readIntWithLong:(int64_t)a3;
- (int64_t)getFilePointer;
- (int64_t)readLong;
- (int64_t)readLongWithLong:(int64_t)a3;
- (signed)readShort;
- (signed)readShortWithLong:(int64_t)a3;
- (void)close;
- (void)dealloc;
- (void)freeBufferWithJavaNioByteBuffer:(id)a3;
- (void)seekWithLong:(int64_t)a3;
- (void)unsetBuffers;
@end

@implementation OrgApacheLuceneStoreByteBufferIndexInput

- (char)readByte
{
  curBuf = self->curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf get];
}

- (signed)readShort
{
  curBuf = self->curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getShort];
}

- (int)readInt
{
  curBuf = self->curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getInt];
}

- (int64_t)readLong
{
  curBuf = self->curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)curBuf getLong];
}

- (int64_t)getFilePointer
{
  curBuf = self->curBuf_;
  if (!curBuf)
  {
    JreThrowNullPointerException();
  }

  curBufIndex = self->curBufIndex_;
  chunkSizePower = self->chunkSizePower_;
  return (curBufIndex << chunkSizePower) + [(JavaNioBuffer *)curBuf position];
}

- (void)seekWithLong:(int64_t)a3
{
  v4 = a3 >> self->chunkSizePower_;
  if (self->curBufIndex_ == v4)
  {
    curBuf = self->curBuf_;
    if (!curBuf)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioBuffer *)curBuf positionWithInt:self->chunkSizeMask_ & a3];
  }

  else
  {
    buffers = self->buffers_;
    if (!buffers)
    {
      goto LABEL_9;
    }

    size = buffers->super.size_;
    if ((v4 & 0x80000000) != 0 || size <= v4)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v4);
    }

    v8 = (&buffers->elementType_)[v4];
    if (!v8)
    {
LABEL_9:
      JreThrowNullPointerException();
    }

    [(IOSClass *)v8 positionWithInt:self->chunkSizeMask_ & a3];
    self->curBufIndex_ = v4;
    JreStrongAssign(&self->curBuf_, v8);
  }
}

- (char)readByteWithLong:(int64_t)a3
{
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_6;
  }

  v5 = a3 >> self->chunkSizePower_;
  size = buffers->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3 >> self->chunkSizePower_);
  }

  v7 = (&buffers->elementType_)[v5];
  if (!v7)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v7 getWithInt:self->chunkSizeMask_ & a3];
}

- (signed)readShortWithLong:(int64_t)a3
{
  v4 = a3 >> self->chunkSizePower_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_6;
  }

  size = buffers->super.size_;
  if ((v4 & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v7 = (&buffers->elementType_)[v4];
  if (!v7)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v7 getShortWithInt:self->chunkSizeMask_ & a3];
}

- (int)readIntWithLong:(int64_t)a3
{
  v4 = a3 >> self->chunkSizePower_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_6;
  }

  size = buffers->super.size_;
  if ((v4 & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v7 = (&buffers->elementType_)[v4];
  if (!v7)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v7 getIntWithInt:self->chunkSizeMask_ & a3];
}

- (int64_t)readLongWithLong:(int64_t)a3
{
  v4 = a3 >> self->chunkSizePower_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_6;
  }

  size = buffers->super.size_;
  if ((v4 & 0x80000000) != 0 || size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v7 = (&buffers->elementType_)[v4];
  if (!v7)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v7 getLongWithInt:self->chunkSizeMask_ & a3];
}

- (id)clone
{
  v3 = [(OrgApacheLuceneStoreByteBufferIndexInput *)self buildSliceWithNSString:0 withLong:0 withLong:self->length_];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  [v3 seekWithLong:{-[OrgApacheLuceneStoreByteBufferIndexInput getFilePointer](self, "getFilePointer")}];
  return v4;
}

- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  if ((a5 | a4) < 0)
  {
    length = self->length_;
LABEL_7:
    v11 = JreStrcat("$$$J$J$J$@", a2, a3, a4, a5, v5, v6, v7, @"slice() ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  if (a5 + a4 > self->length_)
  {
    goto LABEL_7;
  }

  return [OrgApacheLuceneStoreByteBufferIndexInput buildSliceWithNSString:"buildSliceWithNSString:withLong:withLong:" withLong:a3 withLong:?];
}

- (id)buildSliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  buffers = self->buffers_;
  if (!buffers)
  {
    v14 = JreStrcat("$@", 0, a3, a4, a5, v5, v6, v7, @"Already closed: ");
    v15 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  v10 = [(OrgApacheLuceneStoreByteBufferIndexInput *)self newCloneInstanceWithNSString:[(OrgApacheLuceneStoreIndexInput *)self getFullSliceDescriptionWithNSString:a3] withJavaNioByteBufferArray:sub_1001288C8(self withInt:buffers withLong:a4, a5), self->chunkSizeMask_ & a4, a5];
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  v11 = v10;
  v10[80] = 1;
  clones = self->clones_;
  if (clones)
  {
    if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100129828();
    }

    [(OrgApacheLuceneUtilWeakIdentityMap *)clones putWithId:v11 withId:JavaLangBoolean_TRUE__];
  }

  return v11;
}

- (void)close
{
  buffers = self->buffers_;
  if (buffers)
  {
    JreStrongAssign(&self->buffers_, 0);
    JreStrongAssign(&self->curBuf_, 0);
    self->curBufIndex_ = 0;
    clones = self->clones_;
    if (clones)
    {
      [(OrgApacheLuceneUtilWeakIdentityMap *)clones removeWithId:self];
    }

    if (!self->isClone_)
    {
      v5 = self->clones_;
      if (v5)
      {
        v6 = [(OrgApacheLuceneUtilWeakIdentityMap *)v5 keyIterator];
        if (!v6)
        {
          JreThrowNullPointerException();
        }

        while (([v6 hasNext] & 1) != 0)
        {
          v7 = [v6 next];
          JreStrongAssign(v7 + 7, 0);
          JreStrongAssign(v7 + 9, 0);
          *(v7 + 16) = 0;
        }

        [(OrgApacheLuceneUtilWeakIdentityMap *)self->clones_ clear];
      }

      p_elementType = &buffers->elementType_;
      v9 = &(&buffers->elementType_)[buffers->super.size_];
      if (&buffers->elementType_ < v9)
      {
        do
        {
          cleaner = self->cleaner_;
          if (cleaner)
          {
            [(OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner *)cleaner freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:self withJavaNioByteBuffer:*p_elementType];
          }

          ++p_elementType;
        }

        while (p_elementType < v9);
      }
    }
  }

  JreStrongAssign(&self->buffers_, 0);
  JreStrongAssign(&self->curBuf_, 0);
  self->curBufIndex_ = 0;
}

- (void)unsetBuffers
{
  JreStrongAssign(&self->buffers_, 0);
  JreStrongAssign(&self->curBuf_, 0);
  self->curBufIndex_ = 0;
}

- (void)freeBufferWithJavaNioByteBuffer:(id)a3
{
  cleaner = self->cleaner_;
  if (cleaner)
  {
    [(OrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner *)cleaner freeBufferWithOrgApacheLuceneStoreByteBufferIndexInput:self withJavaNioByteBuffer:a3];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteBufferIndexInput;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end