@interface JavaNioMemoryBlock_NonMovableHeapBlock
- (JavaNioMemoryBlock_NonMovableHeapBlock)initWithByteArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation JavaNioMemoryBlock_NonMovableHeapBlock

- (JavaNioMemoryBlock_NonMovableHeapBlock)initWithByteArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong
{
  self->super.address_ = long;
  self->super.size_ = withLong;
  JreStrongAssign(&self->array_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioMemoryBlock_NonMovableHeapBlock;
  [(JavaNioMemoryBlock_NonMovableHeapBlock *)&v3 dealloc];
}

@end