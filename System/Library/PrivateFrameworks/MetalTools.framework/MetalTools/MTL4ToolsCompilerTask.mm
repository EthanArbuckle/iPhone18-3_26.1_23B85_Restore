@interface MTL4ToolsCompilerTask
- (BOOL)tryCancel;
- (MTL4ToolsCompilerTask)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTL4ToolsCompilerTask)initWithCompiler:(id)a3;
- (int64_t)status;
- (void)waitUntilCompleted;
@end

@implementation MTL4ToolsCompilerTask

- (MTL4ToolsCompilerTask)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCompilerTask;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (MTL4ToolsCompilerTask)initWithCompiler:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 initWithCompiler:a3];
}

- (void)waitUntilCompleted
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 waitUntilCompleted];
}

- (BOOL)tryCancel
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 tryCancel];
}

- (int64_t)status
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 status];
}

@end