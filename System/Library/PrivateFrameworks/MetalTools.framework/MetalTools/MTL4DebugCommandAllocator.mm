@interface MTL4DebugCommandAllocator
- (MTL4DebugCommandAllocator)initWithBaseObject:(id)object parent:(id)parent;
- (void)reset;
@end

@implementation MTL4DebugCommandAllocator

- (MTL4DebugCommandAllocator)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandAllocator;
  result = [(MTL4ToolsCommandAllocator *)&v5 initWithBaseObject:object parent:parent];
  if (result)
  {
    result->_currentGeneration = 1;
  }

  return result;
}

- (void)reset
{
  ++self->_currentGeneration;
  v2.receiver = self;
  v2.super_class = MTL4DebugCommandAllocator;
  [(MTL4ToolsCommandAllocator *)&v2 reset];
}

@end