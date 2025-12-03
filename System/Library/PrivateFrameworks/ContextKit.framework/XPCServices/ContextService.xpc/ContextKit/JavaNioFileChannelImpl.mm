@interface JavaNioFileChannelImpl
+ (int64_t)translateLockLengthWithLong:(int64_t)long;
+ (void)initialize;
- (id)positionWithLong:(int64_t)long;
- (id)truncateWithLong:(int64_t)long;
- (int)readWithJavaNioByteBuffer:(id)buffer withLong:(int64_t)long;
- (int)writeWithJavaNioByteBuffer:(id)buffer withLong:(int64_t)long;
- (int64_t)position;
- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int64_t)size;
- (int64_t)transferFromWithJavaNioChannelsReadableByteChannel:(id)channel withLong:(int64_t)long withLong:(int64_t)withLong;
- (int64_t)transferToWithLong:(int64_t)long withLong:(int64_t)withLong withJavaNioChannelsWritableByteChannel:(id)channel;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)__javaClone;
- (void)dealloc;
- (void)forceWithBoolean:(BOOL)boolean;
- (void)implCloseChannel;
- (void)release__WithJavaNioChannelsFileLock:(id)lock;
@end

@implementation JavaNioFileChannelImpl

- (void)implCloseChannel
{
  v3 = JavaIoCloseable_class_();
  if ([v3 isInstance:objc_loadWeak(&self->stream_)])
  {
    Weak = objc_loadWeak(&self->stream_);
    v5 = JavaIoCloseable_class_();
    if (!Weak)
    {
      JreThrowNullPointerException();
    }

    if (([v5 isInstance:Weak] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [Weak close];
  }
}

+ (int64_t)translateLockLengthWithLong:(int64_t)long
{
  if ((atomic_load_explicit(&JavaNioFileChannelImpl__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100229FA0();
  }

  if (long == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return long;
  }
}

- (void)release__WithJavaNioChannelsFileLock:(id)lock
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  v5 = new_LibcoreIoStructFlock_init();
  v5->l_type_ = 2;
  v5->l_whence_ = 0;
  if (!lock)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v5->l_start_ = [lock position];
  v7 = [lock size];
  if ((atomic_load_explicit(&JavaNioFileChannelImpl__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100229FA0();
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v6->l_len_ = v8;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ fcntlFlockWithJavaIoFileDescriptor:self->fd_ withInt:9 withLibcoreIoStructFlock:v6];

  sub_1002285C4(self, lock);
}

- (void)forceWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((self->mode_ & 3) != 0)
  {
    explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
    if (booleanCopy)
    {
      if ((explicit & 1) == 0)
      {
        objc_opt_class();
      }

      if (LibcoreIoLibcore_os_)
      {
        [LibcoreIoLibcore_os_ fsyncWithJavaIoFileDescriptor:self->fd_];
        return;
      }

LABEL_12:
      JreThrowNullPointerException();
    }

    if ((explicit & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      goto LABEL_12;
    }

    [LibcoreIoLibcore_os_ fdatasyncWithJavaIoFileDescriptor:self->fd_];
  }
}

- (int64_t)position
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:0 withInt:1];
}

- (id)positionWithLong:(int64_t)long
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (long < 0)
  {
    v13 = JreStrcat("$J", v5, v6, v7, v8, v9, v10, v11, @"position: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:long withInt:0];
  return self;
}

- (int)readWithJavaNioByteBuffer:(id)buffer withLong:(int64_t)long
{
  if (long < 0)
  {
    v10 = JreStrcat("$J", a2, buffer, long, v4, v5, v6, v7, @"position: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return sub_100228C00(self, buffer, long);
}

- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  sub_100227F80(self);
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v9 = new_JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(array, int, withInt, JavaNioIoVec_DirectionEnum_values_[0]);
  return sub_100228E08(self, v9);
}

- (int64_t)size
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v3 = [LibcoreIoLibcore_os_ fstatWithJavaIoFileDescriptor:self->fd_]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[7];
}

- (int64_t)transferFromWithJavaNioChannelsReadableByteChannel:(id)channel withLong:(int64_t)long withLong:(int64_t)withLong
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!channel)
  {
    goto LABEL_15;
  }

  if (([channel isOpen] & 1) == 0)
  {
    v30 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_19;
  }

  sub_100227FB8(self);
  if (withLong > 0x7FFFFFFF || (withLong | long) < 0)
  {
    v31 = JreStrcat("$J$J", v9, v10, v11, v12, v13, v14, v15, @"position=");
    v30 = new_JavaLangIllegalArgumentException_initWithNSString_(v31);
LABEL_19:
    objc_exception_throw(v30);
  }

  if ([(JavaNioFileChannelImpl *)self size]< long)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = JavaNioByteBuffer_allocateWithInt_(withLong, v17, v18, v19, v20, v21, v22, v23);
    [channel readWithJavaNioByteBuffer:v28];
    if (v28)
    {
      [(JavaNioBuffer *)v28 flip];
      return [(JavaNioFileChannelImpl *)self writeWithJavaNioByteBuffer:v28 withLong:long];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v24 = [channel size];
  position = [channel position];
  v26 = JavaLangMath_minWithLong_withLong_(withLong, v24 - position);
  if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BCFFC();
  }

  v27 = [channel mapWithJavaNioChannelsFileChannel_MapMode:JavaNioChannelsFileChannel_MapMode_READ_ONLY_ withLong:position withLong:v26];
  [channel positionWithLong:&position[v26]];
  v16 = [(JavaNioFileChannelImpl *)self writeWithJavaNioByteBuffer:v27 withLong:long];
  JavaNioNioUtils_freeDirectBufferWithJavaNioByteBuffer_(v27);
  return v16;
}

- (int64_t)transferToWithLong:(int64_t)long withLong:(int64_t)withLong withJavaNioChannelsWritableByteChannel:(id)channel
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!channel)
  {
    JreThrowNullPointerException();
  }

  if (([channel isOpen] & 1) == 0)
  {
    v23 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_25;
  }

  sub_100227F80(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_100227FB8(channel);
  }

  if ((withLong | long) < 0)
  {
    v24 = JreStrcat("$J$J", v9, v10, v11, v12, v13, v14, v15, @"position=");
    v23 = new_JavaLangIllegalArgumentException_initWithNSString_(v24);
LABEL_25:
    objc_exception_throw(v23);
  }

  if (!withLong || [(JavaNioFileChannelImpl *)self size]<= long)
  {
    return 0;
  }

  v16 = JavaLangMath_minWithLong_withLong_(withLong, [(JavaNioFileChannelImpl *)self size]- long);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      getFD = [channel getFD];
      [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
      v18 = new_LibcoreUtilMutableLong_initWithLong_(long);
      if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
      {
        v22 = v18;
        objc_opt_class();
        v18 = v22;
      }

      if (!LibcoreIoLibcore_os_)
      {
        JreThrowNullPointerException();
      }

      v19 = [LibcoreIoLibcore_os_ sendfileWithJavaIoFileDescriptor:getFD withJavaIoFileDescriptor:self->fd_ withLibcoreUtilMutableLong:v18 withLong:v16];
      [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:1];
      return v19;
    }

LABEL_21:
    JreThrowClassCastException();
  }

  if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v20 = sub_100228740(self, JavaNioChannelsFileChannel_MapMode_READ_ONLY_, long, v16);
  v19 = [channel writeWithJavaNioByteBuffer:v20];
  JavaNioNioUtils_freeDirectBufferWithJavaNioByteBuffer_(v20);
  return v19;
}

- (id)truncateWithLong:(int64_t)long
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (long < 0)
  {
    v13 = JreStrcat("$J", v5, v6, v7, v8, v9, v10, v11, @"size < 0: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  sub_100227FB8(self);
  if ([(JavaNioFileChannelImpl *)self size]> long)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ ftruncateWithJavaIoFileDescriptor:self->fd_ withLong:long];
  }

  if ([(JavaNioFileChannelImpl *)self position]> long)
  {
    [(JavaNioFileChannelImpl *)self positionWithLong:long];
  }

  return self;
}

- (int)writeWithJavaNioByteBuffer:(id)buffer withLong:(int64_t)long
{
  if (long < 0)
  {
    v10 = JreStrcat("$J", a2, buffer, long, v4, v5, v6, v7, @"position < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return sub_1002296E4(self, buffer, long);
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  sub_100227FB8(self);
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v9 = new_JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(array, int, withInt, qword_100558040);
  return sub_100228E08(self, v9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioFileChannelImpl;
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioFileChannelImpl;
  [(JavaNioFileChannelImpl *)&v3 __javaClone];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100555228, [JavaNioFileChannelImpl__1 alloc]);
    atomic_store(1u, &JavaNioFileChannelImpl__initialized);
  }
}

@end