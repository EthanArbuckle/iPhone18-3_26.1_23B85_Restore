@interface JavaNioMemoryBlock_NonMovableHeapBlock
- (JavaNioMemoryBlock_NonMovableHeapBlock)initWithByteArray:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)dealloc;
@end

@implementation JavaNioMemoryBlock_NonMovableHeapBlock

- (JavaNioMemoryBlock_NonMovableHeapBlock)initWithByteArray:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  self->super.address_ = a4;
  self->super.size_ = a5;
  JreStrongAssign(&self->array_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioMemoryBlock_NonMovableHeapBlock;
  [(JavaNioMemoryBlock_NonMovableHeapBlock *)&v3 dealloc];
}

@end