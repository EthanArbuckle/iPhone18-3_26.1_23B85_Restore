@interface OrgApacheLuceneUtilByteBlockPool
+ (void)initialize;
- (int)newSliceWithInt:(int)int;
- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)nextBuffer;
- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int;
@end

@implementation OrgApacheLuceneUtilByteBlockPool

- (void)nextBuffer
{
  p_buffers = &self->buffers_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_8;
  }

  bufferUpto = self->bufferUpto_;
  if (bufferUpto + 1 == buffers->super.size_)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(bufferUpto + 2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v2, v3, v4, v5, v6, v7);
    v13 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v12, IOSClass_arrayType(+[IOSClass byteClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*p_buffers, 0, v13, 0, (*p_buffers)->super.size_);
    JreStrongAssign(p_buffers, v13);
  }

  allocator = self->allocator_;
  if (!allocator)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v15 = IOSObjectArray_Set(self->buffers_, self->bufferUpto_ + 1, [(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator getByteBlock]);
  JreStrongAssign(&self->buffer_, v15);
  self->byteUpto_ = 0;
  *&self->byteOffset_ = vadd_s32(*&self->byteOffset_, 0x100008000);
}

- (int)newSliceWithInt:(int)int
{
  byteUpto = self->byteUpto_;
  if (byteUpto > 0x8000 - int)
  {
    [(OrgApacheLuceneUtilByteBlockPool *)self nextBuffer];
    byteUpto = self->byteUpto_;
  }

  v6 = byteUpto + int;
  self->byteUpto_ = byteUpto + int;
  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  v9 = v6 - 1;
  if (v6 - 1 < 0 || v9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v6 - 1));
  }

  *(&buffer->super.size_ + v9 + 4) = 16;
  return byteUpto;
}

- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int
{
  if (!ref || (buffers = self->buffers_) == 0)
  {
    JreThrowNullPointerException();
  }

  intCopy = int;
  size = buffers->super.size_;
  if (int >> 15 < 0 || int >> 15 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 15);
  }

  v8 = JreStrongAssign(ref + 1, (&buffers->elementType_)[int >> 15]);
  v9 = intCopy & 0x7FFF;
  v10 = v8[2];
  if (v9 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v9);
  }

  v11 = *(v8 + v9 + 12);
  v12 = v8[2];
  if (v11 < 0)
  {
    if (v9 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9);
    }

    if (v9 + 1 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9 + 1);
    }

    v13 = v11 & 0x7F | (*(v8 + v9 + 13) << 7);
    v14 = 2;
  }

  else
  {
    if (v9 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9);
    }

    v13 = v11;
    v14 = 1;
  }

  *(ref + 5) = v13;
  *(ref + 4) = v9 + v14;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 5);
  if (v4)
  {
    v6 = *(ref + 4);
    byteUpto = self->byteUpto_;
    v8 = byteUpto + v4;
    if (byteUpto + v4 - 0x8000 >= 1)
    {
      v9 = 0x8000 - v8;
      v10 = -v8;
      do
      {
        v11 = v4;
        v4 = (v4 + v9);
        if (v4 >= 1)
        {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), v6, self->buffer_, self->byteUpto_, v4);
          v6 = (v9 + v11 + v6);
        }

        v8 -= 0x8000;
        LODWORD(v4) = v8 + (v4 & (v4 >> 31));
        [(OrgApacheLuceneUtilByteBlockPool *)self nextBuffer];
        v9 += 0x8000;
        v10 += 0x8000;
      }

      while (v8 > 0x8000);
      byteUpto = self->byteUpto_;
      v4 = ((v11 + v10) & ((v11 + v10) >> 31)) + v8;
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), v6, self->buffer_, byteUpto, v4);
    self->byteUpto_ += v4;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilByteBlockPool;
  [(OrgApacheLuceneUtilByteBlockPool *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v6 = 0x900000009;
    v5[0] = xmmword_1003140F0;
    v5[1] = unk_100314100;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_, [IOSIntArray newArrayWithInts:v5 count:10]);
    v4 = 0xC800000078;
    v3[0] = xmmword_100314118;
    v3[1] = unk_100314128;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_, [IOSIntArray newArrayWithInts:v3 count:10]);
    v2 = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 8);
    if (v2 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, 0);
    }

    OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE_ = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 12);
    atomic_store(1u, OrgApacheLuceneUtilByteBlockPool__initialized);
  }
}

@end