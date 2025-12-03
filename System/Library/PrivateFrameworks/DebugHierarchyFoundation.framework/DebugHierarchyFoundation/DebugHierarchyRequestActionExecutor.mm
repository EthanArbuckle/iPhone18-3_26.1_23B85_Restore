@interface DebugHierarchyRequestActionExecutor
+ (DebugHierarchyRequestActionExecutor)actionExecutorWithContext:(id)context;
+ (id)finalActionsFromActions:(id)actions;
+ (id)initialActionsFromActions:(id)actions;
+ (id)objectTargetedActionsFromActions:(id)actions;
+ (void)_executeObjectActions:(id)actions withObject:(id)object inContext:(id)context;
+ (void)_executeStandaloneActions:(id)actions inContext:(id)context;
- (BOOL)allObjectActionsTargetIdentifiers:(id *)identifiers;
- (DebugHierarchyRequestActionExecutor)initWithContext:(id)context;
- (NSArray)finalActions;
- (NSArray)initialActions;
- (NSArray)objectActions;
- (void)executeActionsWithObject:(id)object;
- (void)executeFinalStandaloneActions;
- (void)executeInitialStandaloneActions;
@end

@implementation DebugHierarchyRequestActionExecutor

+ (DebugHierarchyRequestActionExecutor)actionExecutorWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

- (DebugHierarchyRequestActionExecutor)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = DebugHierarchyRequestActionExecutor;
  v6 = [(DebugHierarchyRequestActionExecutor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (NSArray)initialActions
{
  initialActions = self->_initialActions;
  if (!initialActions)
  {
    context = [(DebugHierarchyRequestActionExecutor *)self context];
    request = [context request];
    actions = [request actions];
    v7 = [DebugHierarchyRequestActionExecutor initialActionsFromActions:actions];
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
    context = [(DebugHierarchyRequestActionExecutor *)self context];
    request = [context request];
    actions = [request actions];
    v7 = [DebugHierarchyRequestActionExecutor finalActionsFromActions:actions];
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
    context = [(DebugHierarchyRequestActionExecutor *)self context];
    request = [context request];
    actions = [request actions];
    v7 = [DebugHierarchyRequestActionExecutor objectTargetedActionsFromActions:actions];
    v8 = self->_objectActions;
    self->_objectActions = v7;

    objectActions = self->_objectActions;
  }

  return objectActions;
}

+ (id)initialActionsFromActions:(id)actions
{
  actionsCopy = actions;
  if (![actionsCopy count])
  {
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    v5 = [actionsCopy objectAtIndexedSubscript:v4];
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___DebugHierarchyRequestObjectAction])
    {
      break;
    }

    if ([actionsCopy count] <= ++v4)
    {
      goto LABEL_7;
    }
  }

  v6 = [actionsCopy subarrayWithRange:{0, v4}];

  if (!v6)
  {
LABEL_7:
    if ([actionsCopy count])
    {
      v6 = actionsCopy;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)finalActionsFromActions:(id)actions
{
  actionsCopy = actions;
  v4 = +[NSMutableArray array];
  if ([actionsCopy count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [actionsCopy objectAtIndexedSubscript:v5];
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

    while ([actionsCopy count] > v5);
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)objectTargetedActionsFromActions:(id)actions
{
  actionsCopy = actions;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = actionsCopy;
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
  initialActions = [(DebugHierarchyRequestActionExecutor *)self initialActions];
  context = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeStandaloneActions:initialActions inContext:context];
}

- (void)executeFinalStandaloneActions
{
  finalActions = [(DebugHierarchyRequestActionExecutor *)self finalActions];
  context = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeStandaloneActions:finalActions inContext:context];
}

- (void)executeActionsWithObject:(id)object
{
  objectCopy = object;
  objectActions = [(DebugHierarchyRequestActionExecutor *)self objectActions];
  context = [(DebugHierarchyRequestActionExecutor *)self context];
  [DebugHierarchyRequestActionExecutor _executeObjectActions:objectActions withObject:objectCopy inContext:context];
}

+ (void)_executeStandaloneActions:(id)actions inContext:(id)context
{
  actionsCopy = actions;
  contextCopy = context;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [actionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [*(*(&v11 + 1) + 8 * v10) performInContext:contextCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [actionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (void)_executeObjectActions:(id)actions withObject:(id)object inContext:(id)context
{
  actionsCopy = actions;
  objectCopy = object;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [actionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        [*(*(&v14 + 1) + 8 * v13) performInContext:contextCopy withObject:objectCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [actionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)allObjectActionsTargetIdentifiers:(id *)identifiers
{
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectActions = [(DebugHierarchyRequestActionExecutor *)self objectActions];
  v7 = [objectActions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(objectActions);
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

      v8 = [objectActions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  *identifiers = [v5 copy];
  v15 = 1;
LABEL_11:

  return v15;
}

@end