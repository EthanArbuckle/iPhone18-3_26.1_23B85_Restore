@interface MTL4ToolsCommandAllocator
- (MTL4ToolsCommandAllocator)initWithBaseObject:(id)object parent:(id)parent;
- (unint64_t)allocatedSize;
- (void)addResetHandler:(id)handler;
- (void)reset;
@end

@implementation MTL4ToolsCommandAllocator

- (MTL4ToolsCommandAllocator)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCommandAllocator;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (void)reset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject reset];
}

- (void)addResetHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addResetHandler:handler];
}

@end