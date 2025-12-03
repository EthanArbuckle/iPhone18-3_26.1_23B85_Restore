@interface JavaNioMemoryBlock_UnmanagedBlock
- (JavaNioMemoryBlock_UnmanagedBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong;
@end

@implementation JavaNioMemoryBlock_UnmanagedBlock

- (JavaNioMemoryBlock_UnmanagedBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong
{
  self->super.address_ = long;
  self->super.size_ = withLong;
  return self;
}

@end