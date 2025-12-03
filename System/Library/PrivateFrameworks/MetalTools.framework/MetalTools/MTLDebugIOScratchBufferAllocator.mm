@interface MTLDebugIOScratchBufferAllocator
- (MTLDebugIOScratchBufferAllocator)initWithBaseObject:(id)object parent:(id)parent;
- (id)allocateScratchBufferWithMinimumSize:(unint64_t)size;
- (id)newScratchBufferWithMinimumSize:(unint64_t)size;
- (void)dealloc;
@end

@implementation MTLDebugIOScratchBufferAllocator

- (MTLDebugIOScratchBufferAllocator)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLDebugIOScratchBufferAllocator;
  return [(MTLToolsIOScratchBufferAllocator *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLDebugIOScratchBufferAllocator;
  [(MTLToolsIOScratchBufferAllocator *)&v2 dealloc];
}

- (id)newScratchBufferWithMinimumSize:(unint64_t)size
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [(MTLToolsIOScratchBuffer *)[MTLDebugIOScratchBuffer alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

- (id)allocateScratchBufferWithMinimumSize:(unint64_t)size
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [(MTLToolsIOScratchBuffer *)[MTLDebugIOScratchBuffer alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

@end