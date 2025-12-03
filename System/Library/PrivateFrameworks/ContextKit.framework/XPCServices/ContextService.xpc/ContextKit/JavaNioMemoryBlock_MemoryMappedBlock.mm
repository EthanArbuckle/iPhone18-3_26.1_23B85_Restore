@interface JavaNioMemoryBlock_MemoryMappedBlock
- (JavaNioMemoryBlock_MemoryMappedBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
- (void)free;
@end

@implementation JavaNioMemoryBlock_MemoryMappedBlock

- (JavaNioMemoryBlock_MemoryMappedBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong
{
  self->super.address_ = long;
  self->super.size_ = withLong;
  return self;
}

- (void)free
{
  if (self->super.address_)
  {
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    [LibcoreIoLibcore_os_ munmapWithLong:self->super.address_ withLong:self->super.size_];
    self->super.address_ = 0;
  }
}

- (void)dealloc
{
  [(JavaNioMemoryBlock_MemoryMappedBlock *)self free];
  v3.receiver = self;
  v3.super_class = JavaNioMemoryBlock_MemoryMappedBlock;
  [(JavaNioMemoryBlock_MemoryMappedBlock *)&v3 dealloc];
}

@end