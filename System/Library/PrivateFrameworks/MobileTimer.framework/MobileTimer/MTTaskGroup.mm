@interface MTTaskGroup
+ (id)taskGroupWithTasks:(id)a3 completionBlock:(id)a4;
- (id)description;
@end

@implementation MTTaskGroup

+ (id)taskGroupWithTasks:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTasks:v6];

  [v7 setCompletionBlock:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTTaskGroup *)self tasks];
  v6 = [v3 stringWithFormat:@"<%@:%p tasks: %@>", v4, self, v5];

  return v6;
}

@end