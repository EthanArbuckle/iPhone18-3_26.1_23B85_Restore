@interface JavaNioMappedByteBuffer
- (BOOL)isLoaded;
- (id)force;
- (id)load__;
- (uint64_t)checkIsMapped;
- (void)dealloc;
@end

@implementation JavaNioMappedByteBuffer

- (BOOL)isLoaded
{
  [JavaNioMappedByteBuffer checkIsMapped]_0(self);
  block = self->block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  toLong = [(JavaNioMemoryBlock *)block toLong];
  getSize = [(JavaNioMemoryBlock *)self->block_ getSize];
  if (!getSize)
  {
    return 1;
  }

  v6 = getSize;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v7 = [LibcoreIoLibcore_os_ sysconfWithInt:29];
  v8 = toLong / v7 * v7;
  v9 = toLong % v7 + v6;
  v10 = [IOSByteArray arrayWithLength:((v9 + v7 - 1) / v7)];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [LibcoreIoLibcore_os_ mincoreWithLong:v8 withLong:v9 withByteArray:v10];
  size = v10->super.size_;
  if (size < 1)
  {
    return 1;
  }

  v12 = (&v10->super.size_ + 1);
  v13 = size - 1;
  do
  {
    v15 = *v12++;
    v14 = v15;
    result = v15 & 1;
    v18 = v13-- != 0;
  }

  while ((v14 & 1) != 0 && v18);
  return result;
}

- (uint64_t)checkIsMapped
{
  if (!*(result + 48))
  {
    v1 = new_JavaLangUnsupportedOperationException_init();
    objc_exception_throw(v1);
  }

  return result;
}

- (id)load__
{
  [JavaNioMappedByteBuffer checkIsMapped]_0(self);
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (block = self->block_) == 0)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ mlockWithLong:-[JavaNioMemoryBlock toLong](block withLong:{"toLong"), -[JavaNioMemoryBlock getSize](self->block_, "getSize")}];
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  [LibcoreIoLibcore_os_ munlockWithLong:-[JavaNioMemoryBlock toLong](self->block_ withLong:{"toLong"), -[JavaNioMemoryBlock getSize](self->block_, "getSize")}];
  return self;
}

- (id)force
{
  [JavaNioMappedByteBuffer checkIsMapped]_0(self);
  mapMode = self->mapMode_;
  if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014C4CC();
  }

  if (mapMode == JavaNioChannelsFileChannel_MapMode_READ_WRITE_)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_ || (block = self->block_) == 0)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ msyncWithLong:-[JavaNioMemoryBlock toLong](block withLong:"toLong") withInt:{-[JavaNioMemoryBlock getSize](self->block_, "getSize"), 16}];
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioMappedByteBuffer;
  [(JavaNioByteBuffer *)&v3 dealloc];
}

@end