@interface JavaNioFileChannelImpl
+ (int64_t)translateLockLengthWithLong:(int64_t)a3;
+ (void)initialize;
- (id)positionWithLong:(int64_t)a3;
- (id)truncateWithLong:(int64_t)a3;
- (int)readWithJavaNioByteBuffer:(id)a3 withLong:(int64_t)a4;
- (int)writeWithJavaNioByteBuffer:(id)a3 withLong:(int64_t)a4;
- (int64_t)position;
- (int64_t)readWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (int64_t)size;
- (int64_t)transferFromWithJavaNioChannelsReadableByteChannel:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int64_t)transferToWithLong:(int64_t)a3 withLong:(int64_t)a4 withJavaNioChannelsWritableByteChannel:(id)a5;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)__javaClone;
- (void)dealloc;
- (void)forceWithBoolean:(BOOL)a3;
- (void)implCloseChannel;
- (void)release__WithJavaNioChannelsFileLock:(id)a3;
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

+ (int64_t)translateLockLengthWithLong:(int64_t)a3
{
  if ((atomic_load_explicit(&JavaNioFileChannelImpl__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100229FA0();
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)release__WithJavaNioChannelsFileLock:(id)a3
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  v5 = new_LibcoreIoStructFlock_init();
  v5->l_type_ = 2;
  v5->l_whence_ = 0;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v5->l_start_ = [a3 position];
  v7 = [a3 size];
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

  sub_1002285C4(self, a3);
}

- (void)forceWithBoolean:(BOOL)a3
{
  v3 = a3;
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((self->mode_ & 3) != 0)
  {
    explicit = atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire);
    if (v3)
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

- (id)positionWithLong:(int64_t)a3
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (a3 < 0)
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

  [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:a3 withInt:0];
  return self;
}

- (int)readWithJavaNioByteBuffer:(id)a3 withLong:(int64_t)a4
{
  if (a4 < 0)
  {
    v10 = JreStrcat("$J", a2, a3, a4, v4, v5, v6, v7, @"position: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return sub_100228C00(self, a3, a4);
}

- (int64_t)readWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  sub_100227F80(self);
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v9 = new_JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(a3, a4, a5, JavaNioIoVec_DirectionEnum_values_[0]);
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

- (int64_t)transferFromWithJavaNioChannelsReadableByteChannel:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!a3)
  {
    goto LABEL_15;
  }

  if (([a3 isOpen] & 1) == 0)
  {
    v30 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_19;
  }

  sub_100227FB8(self);
  if (a5 > 0x7FFFFFFF || (a5 | a4) < 0)
  {
    v31 = JreStrcat("$J$J", v9, v10, v11, v12, v13, v14, v15, @"position=");
    v30 = new_JavaLangIllegalArgumentException_initWithNSString_(v31);
LABEL_19:
    objc_exception_throw(v30);
  }

  if ([(JavaNioFileChannelImpl *)self size]< a4)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = JavaNioByteBuffer_allocateWithInt_(a5, v17, v18, v19, v20, v21, v22, v23);
    [a3 readWithJavaNioByteBuffer:v28];
    if (v28)
    {
      [(JavaNioBuffer *)v28 flip];
      return [(JavaNioFileChannelImpl *)self writeWithJavaNioByteBuffer:v28 withLong:a4];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v24 = [a3 size];
  v25 = [a3 position];
  v26 = JavaLangMath_minWithLong_withLong_(a5, v24 - v25);
  if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BCFFC();
  }

  v27 = [a3 mapWithJavaNioChannelsFileChannel_MapMode:JavaNioChannelsFileChannel_MapMode_READ_ONLY_ withLong:v25 withLong:v26];
  [a3 positionWithLong:&v25[v26]];
  v16 = [(JavaNioFileChannelImpl *)self writeWithJavaNioByteBuffer:v27 withLong:a4];
  JavaNioNioUtils_freeDirectBufferWithJavaNioByteBuffer_(v27);
  return v16;
}

- (int64_t)transferToWithLong:(int64_t)a3 withLong:(int64_t)a4 withJavaNioChannelsWritableByteChannel:(id)a5
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  if (([a5 isOpen] & 1) == 0)
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

    sub_100227FB8(a5);
  }

  if ((a4 | a3) < 0)
  {
    v24 = JreStrcat("$J$J", v9, v10, v11, v12, v13, v14, v15, @"position=");
    v23 = new_JavaLangIllegalArgumentException_initWithNSString_(v24);
LABEL_25:
    objc_exception_throw(v23);
  }

  if (!a4 || [(JavaNioFileChannelImpl *)self size]<= a3)
  {
    return 0;
  }

  v16 = JavaLangMath_minWithLong_withLong_(a4, [(JavaNioFileChannelImpl *)self size]- a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [a5 getFD];
      [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
      v18 = new_LibcoreUtilMutableLong_initWithLong_(a3);
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

      v19 = [LibcoreIoLibcore_os_ sendfileWithJavaIoFileDescriptor:v17 withJavaIoFileDescriptor:self->fd_ withLibcoreUtilMutableLong:v18 withLong:v16];
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

  v20 = sub_100228740(self, JavaNioChannelsFileChannel_MapMode_READ_ONLY_, a3, v16);
  v19 = [a5 writeWithJavaNioByteBuffer:v20];
  JavaNioNioUtils_freeDirectBufferWithJavaNioByteBuffer_(v20);
  return v19;
}

- (id)truncateWithLong:(int64_t)a3
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (a3 < 0)
  {
    v13 = JreStrcat("$J", v5, v6, v7, v8, v9, v10, v11, @"size < 0: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  sub_100227FB8(self);
  if ([(JavaNioFileChannelImpl *)self size]> a3)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ ftruncateWithJavaIoFileDescriptor:self->fd_ withLong:a3];
  }

  if ([(JavaNioFileChannelImpl *)self position]> a3)
  {
    [(JavaNioFileChannelImpl *)self positionWithLong:a3];
  }

  return self;
}

- (int)writeWithJavaNioByteBuffer:(id)a3 withLong:(int64_t)a4
{
  if (a4 < 0)
  {
    v10 = JreStrcat("$J", a2, a3, a4, v4, v5, v6, v7, @"position < 0: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return sub_1002296E4(self, a3, a4);
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  sub_100227FB8(self);
  if ((atomic_load_explicit(JavaNioIoVec_DirectionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001D2BCC();
  }

  v9 = new_JavaNioIoVec_initWithJavaNioByteBufferArray_withInt_withInt_withJavaNioIoVec_DirectionEnum_(a3, a4, a5, qword_100558040);
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
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100555228, [JavaNioFileChannelImpl__1 alloc]);
    atomic_store(1u, &JavaNioFileChannelImpl__initialized);
  }
}

@end