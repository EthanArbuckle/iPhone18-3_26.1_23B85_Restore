@interface MTL4ToolsCommandAllocator
- (MTL4ToolsCommandAllocator)initWithBaseObject:(id)a3 parent:(id)a4;
- (unint64_t)allocatedSize;
- (void)addResetHandler:(id)a3;
- (void)reset;
@end

@implementation MTL4ToolsCommandAllocator

- (MTL4ToolsCommandAllocator)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCommandAllocator;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (unint64_t)allocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

- (void)reset
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 reset];
}

- (void)addResetHandler:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addResetHandler:a3];
}

@end