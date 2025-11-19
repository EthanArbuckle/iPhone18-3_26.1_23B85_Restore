@interface JavaNioMemoryBlock_UnmanagedBlock
- (JavaNioMemoryBlock_UnmanagedBlock)initWithLong:(int64_t)a3 withLong:(int64_t)a4;
@end

@implementation JavaNioMemoryBlock_UnmanagedBlock

- (JavaNioMemoryBlock_UnmanagedBlock)initWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  self->super.address_ = a3;
  self->super.size_ = a4;
  return self;
}

@end