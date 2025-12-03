@interface JavaNioIoVec
- (int)doTransferWithJavaIoFileDescriptor:(id)descriptor;
- (int)init__;
- (void)dealloc;
- (void)didTransferWithInt:(int)int;
@end

@implementation JavaNioIoVec

- (int)init__
{
  if (self->bufferCount_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    byteBuffers = self->byteBuffers_;
    if (!byteBuffers)
    {
LABEL_30:
      JreThrowNullPointerException();
    }

    v6 = v3 + self->offset_;
    size = byteBuffers->super.size_;
    if (v6 < 0 || v6 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3 + self->offset_);
    }

    v8 = (&byteBuffers->elementType_)[v6];
    direction = self->direction_;
    if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001D2BCC();
    }

    if (direction == JavaNioIoVec_DirectionEnum_values_)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      [(IOSClass *)v8 checkWritable];
    }

    else if (!v8)
    {
      goto LABEL_30;
    }

    remaining = [(IOSClass *)v8 remaining];
    isDirect = [(IOSClass *)v8 isDirect];
    ioBuffers = self->ioBuffers_;
    if (isDirect)
    {
      if (!ioBuffers)
      {
        goto LABEL_30;
      }

      IOSObjectArray_Set(self->ioBuffers_, v3, v8);
      position = [(IOSClass *)v8 position];
      offsets = self->offsets_;
      if (!offsets)
      {
        goto LABEL_30;
      }

      v15 = position;
      v16 = offsets->super.size_;
      if (v3 >= v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!ioBuffers)
      {
        goto LABEL_30;
      }

      v17 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(v8);
      IOSObjectArray_Set(ioBuffers, v3, v17);
      v18 = JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(v8);
      position2 = [(IOSClass *)v8 position];
      offsets = self->offsets_;
      if (!offsets)
      {
        goto LABEL_30;
      }

      v15 = position2 + v18;
      v16 = offsets->super.size_;
      if (v3 >= v16)
      {
LABEL_27:
        IOSArray_throwOutOfBoundsWithMsg(v16, v3);
      }
    }

    *(&offsets->super.size_ + v3 + 1) = v15;
    byteCounts = self->byteCounts_;
    if (!byteCounts)
    {
      goto LABEL_30;
    }

    v21 = byteCounts->super.size_;
    if (v3 >= v21)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, v3);
    }

    *(&byteCounts->super.size_ + v3 + 1) = remaining;
    v4 += remaining;
    ++v3;
  }

  while (v3 < self->bufferCount_);
  return v4;
}

- (int)doTransferWithJavaIoFileDescriptor:(id)descriptor
{
  direction = self->direction_;
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v6 = JavaNioIoVec_DirectionEnum_values_;
  explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
  if (direction == v6)
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    result = [LibcoreIoLibcore_os_ readvWithJavaIoFileDescriptor:descriptor withNSObjectArray:self->ioBuffers_ withIntArray:self->offsets_ withIntArray:self->byteCounts_];
    if (!result)
    {
      return -1;
    }
  }

  else
  {
    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    return [LibcoreIoLibcore_os_ writevWithJavaIoFileDescriptor:descriptor withNSObjectArray:self->ioBuffers_ withIntArray:self->offsets_ withIntArray:self->byteCounts_];
  }

  return result;
}

- (void)didTransferWithInt:(int)int
{
  if (int >= 1)
  {
    intCopy = int;
    v5 = 0;
    while (v5 < self->bufferCount_)
    {
      byteBuffers = self->byteBuffers_;
      if (!byteBuffers)
      {
        goto LABEL_27;
      }

      v7 = v5 + self->offset_;
      size = byteBuffers->super.size_;
      if (v7 < 0 || v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5 + self->offset_);
      }

      byteCounts = self->byteCounts_;
      if (!byteCounts)
      {
        goto LABEL_27;
      }

      v10 = (&byteBuffers->elementType_)[v7];
      v11 = byteCounts->super.size_;
      if (v5 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v5);
      }

      if (*(&byteCounts->super.size_ + v5 + 1) >= intCopy)
      {
        if (!v10)
        {
LABEL_27:
          JreThrowNullPointerException();
        }

        direction = self->direction_;
        if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1001D2BCC();
        }

        if (direction == qword_100558040)
        {
          position = [(IOSClass *)v10 position];
        }

        else
        {
          position = 0;
        }

        [(IOSClass *)v10 positionWithInt:position + intCopy];
        return;
      }

      if (!v10)
      {
        goto LABEL_27;
      }

      [(IOSClass *)v10 positionWithInt:[(IOSClass *)v10 limit]];
      v12 = self->byteCounts_;
      v13 = v12->super.size_;
      if (v5 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v5);
      }

      intCopy -= *(&v12->super.size_ + ++v5);
      if (intCopy <= 0)
      {
        return;
      }
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioIoVec;
  [(JavaNioIoVec *)&v3 dealloc];
}

@end