@interface MTTaskGroup
+ (id)taskGroupWithTasks:(id)tasks completionBlock:(id)block;
- (id)description;
@end

@implementation MTTaskGroup

+ (id)taskGroupWithTasks:(id)tasks completionBlock:(id)block
{
  blockCopy = block;
  tasksCopy = tasks;
  v7 = objc_opt_new();
  [v7 setTasks:tasksCopy];

  [v7 setCompletionBlock:blockCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  tasks = [(MTTaskGroup *)self tasks];
  v6 = [v3 stringWithFormat:@"<%@:%p tasks: %@>", v4, self, tasks];

  return v6;
}

@end