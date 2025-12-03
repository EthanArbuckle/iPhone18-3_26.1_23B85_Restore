@interface MTLToolsIOScratchBufferAllocator
- (MTLToolsIOScratchBufferAllocator)initWithBaseObject:(id)object parent:(id)parent;
- (id)newScratchBufferWithMinimumSize:(unint64_t)size;
- (void)dealloc;
@end

@implementation MTLToolsIOScratchBufferAllocator

- (MTLToolsIOScratchBufferAllocator)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsIOScratchBufferAllocator;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsIOScratchBufferAllocator;
  [(MTLToolsObject *)&v2 dealloc];
}

- (id)newScratchBufferWithMinimumSize:(unint64_t)size
{
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  v5 = [[MTLToolsIOScratchBuffer alloc] initWithBaseObject:v4 parent:self];

  return v5;
}

@end