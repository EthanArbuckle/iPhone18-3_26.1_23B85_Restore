@interface MTL4ToolsCompilerTask
- (BOOL)tryCancel;
- (MTL4ToolsCompilerTask)initWithBaseObject:(id)object parent:(id)parent;
- (MTL4ToolsCompilerTask)initWithCompiler:(id)compiler;
- (int64_t)status;
- (void)waitUntilCompleted;
@end

@implementation MTL4ToolsCompilerTask

- (MTL4ToolsCompilerTask)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCompilerTask;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (MTL4ToolsCompilerTask)initWithCompiler:(id)compiler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject initWithCompiler:compiler];
}

- (void)waitUntilCompleted
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilCompleted];
}

- (BOOL)tryCancel
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject tryCancel];
}

- (int64_t)status
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject status];
}

@end