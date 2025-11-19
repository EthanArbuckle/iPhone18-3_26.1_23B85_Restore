@interface DebugHierarchyRequestActionExecutor
+ (DebugHierarchyRequestActionExecutor)actionExecutorWithContext:(id)a3;
+ (id)finalActionsFromActions:(id)a3;
+ (id)initialActionsFromActions:(id)a3;
+ (id)objectTargetedActionsFromActions:(id)a3;
+ (void)_executeObjectActions:(id)a3 withObject:(id)a4 inContext:(id)a5;
+ (void)_executeStandaloneActions:(id)a3 inContext:(id)a4;
- (BOOL)allObjectActionsTargetIdentifiers:(id *)a3;
- (DebugHierarchyRequestActionExecutor)initWithContext:(id)a3;
- (NSArray)finalActions;
- (NSArray)initialActions;
- (NSArray)objectActions;
- (void)executeActionsWithObject:(id)a3;
- (void)executeFinalStandaloneActions;
- (void)executeInitialStandaloneActions;
@end

@implementation DebugHierarchyRequestActionExecutor

+ (DebugHierarchyRequestActionExecutor)actionExecutorWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContext:v4];

  return v5;
}

- (DebugHierarchyRequestActionExecutor)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DebugHierarchyRequestActionExecutor;
  v6 = [(DebugHierarchyRequestActionExecutor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (NSArray)initialActions
{
  initialActions = self->_initialActions;
  if (!initialActions)
  {
    v4 = [(DebugHierarchyRequestActionExecutor *)self context];
    v5 = [v4 request];
    v6 = [v5 actions];
    v7 = [DebugHierarchyRequestActionExecutor initialActionsFromActions:v6];
    v8 = self->_initialActions;
    self->_initialActions = v7;

    initialActions = self->_initialActions;
  }

  return initialActions;
}

- (NSArray)finalActions
{
  finalActions = self->_finalActions;
  if (!finalActions)
  {
    v4 = [(DebugHierarchyRequestActionExecutor *)self context];
    v5 = [v4 request];
    v6 = [v5 actions];
    v7 = [DebugHierarchyRequestActionExecutor finalActionsFromActions:v6];
    v8 = self->_finalActions;
    self->_finalActions = v7;

    finalActions = self->_finalActions;
  }

  return finalActions;
}

- (NSArray)objectActions
{
  objectActions = self->_objectActions;
  if (!objectActions)
  {
    v4 = [(DebugHierarchyRequestActionExecutor *)self context];
    v5 = [v4 request];
    v6 = [v5 actions];
    v7 = [DebugHierarchyRequestActionExecutor objectTargetedActionsFromActions:v6];
    v8 = self->_objectActions;
    self->_objectActions = v7;

    objectActions = self->_objectActions;
  }

  return objectActions;
}

+ (id)initialActionsFromActions:(id)a3
{
  v3 = a3;
  if (![v3 count])
  {
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___DebugHierarchyRequestObjectAction])
    {
      break;
    }

    if ([v3 count] <= ++v4)
    {
      goto LABEL_7;
    }
  }

  v6 = [v3 subarrayWithRange:{0, v4}];

  if (!v6)
  {
LABEL_7:
    if ([v3 count])
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)finalActionsFromActions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  if ([v3 count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v5];
      v8 = v7;
      if (v6)
      {
        if ([v7 conformsToProtocol:&OBJC_PROTOCOL___DebugHierarchyRequestStandaloneAction])
        {
          [v4 addObject:v8];
        }

        v6 = 1;
      }

      else
      {
        v6 = [v7 conformsToProtocol:&OBJC_PROTOCOL___DebugHierarchyRequestObjectAction];
      }

      ++v5;
    }

    while ([v3 count] > v5);
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)objectTargetedActionsFromActions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&OBJC_PROTOCOL___DebugHierarchyRequestObjectAction, v13}])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)executeInitialStandaloneActions
{
  v4 = [(DebugHierarchyRequestActionExecutor *)self initialActions];
  v3 = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeStandaloneActions:v4 inContext:v3];
}

- (void)executeFinalStandaloneActions
{
  v4 = [(DebugHierarchyRequestActionExecutor *)self finalActions];
  v3 = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeStandaloneActions:v4 inContext:v3];
}

- (void)executeActionsWithObject:(id)a3
{
  v4 = a3;
  v6 = [(DebugHierarchyRequestActionExecutor *)self objectActions];
  v5 = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeObjectActions:v6 withObject:v4 inContext:v5];
}

+ (void)_executeStandaloneActions:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v10) performInContext:v6];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (void)_executeObjectActions:(id)a3 withObject:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v13) performInContext:v9 withObject:v8];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)allObjectActionsTargetIdentifiers:(id *)a3
{
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(DebugHierarchyRequestActionExecutor *)self objectActions];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v12 = [v11 targetsObjectIdentifiers:&v17];
        v13 = v17;
        v14 = v13;
        if ((v12 & 1) == 0)
        {

          v15 = 0;
          goto LABEL_11;
        }

        [v5 addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  *a3 = [v5 copy];
  v15 = 1;
LABEL_11:

  return v15;
}

@end