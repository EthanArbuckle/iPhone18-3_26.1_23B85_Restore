@interface DDActionGroup
+ (DDActionGroup)emptyGroup;
+ (DDActionGroup)groupWithAction:(uint64_t)action;
+ (DDActionGroup)groupWithActions:(uint64_t)actions;
- (BOOL)isEmpty;
- (DDActionGroup)initWithActions:(id)actions;
- (DDActionGroup)initWithSingleAction:(id)action;
- (id)_extractFirstAction;
- (id)children;
- (id)ddAction;
- (id)extractDefaultActions;
- (id)flattenedActions:(uint64_t)actions;
- (id)mainAction;
- (id)nonnullChildren;
- (uint64_t)count;
- (uint64_t)extractedActions;
- (uint64_t)inlinedGroup;
- (uint64_t)setInlinedGroup:(uint64_t)result;
- (void)_regroupByService;
- (void)appendAction:(uint64_t)action;
- (void)appendActions:(_BYTE *)actions;
- (void)appendGroup:(_BYTE *)group;
- (void)cleanup;
- (void)enumerateActionsUsingBlock:(uint64_t)block;
- (void)finalizeWithFilter:(uint64_t)filter;
- (void)insertAction:(uint64_t)action atIndex:;
- (void)insertActions:(uint64_t)actions atIndex:;
- (void)insertGroup:(uint64_t)group atIndex:;
- (void)regroupByService;
- (void)removeChild:(id)child;
- (void)simplify;
@end

@implementation DDActionGroup

- (BOOL)isEmpty
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_action)
  {
    v2 = 0;
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_children;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v11 + 1) + 8 * i) isEmpty])
          {
            v2 = 0;
            goto LABEL_14;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v2 = 1;
LABEL_14:

    v10 = *MEMORY[0x277D85DE8];
  }

  return v2;
}

+ (DDActionGroup)groupWithActions:(uint64_t)actions
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 count];
  if (v3 == 1)
  {
    firstObject = [v2 firstObject];
    objc_opt_self();
    v5 = [[DDActionGroup alloc] initWithSingleAction:firstObject];
  }

  else if (v3 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[DDActionGroup alloc] initWithActions:v2];
  }

  return v5;
}

+ (DDActionGroup)groupWithAction:(uint64_t)action
{
  v2 = a2;
  objc_opt_self();
  v3 = [[DDActionGroup alloc] initWithSingleAction:v2];

  return v3;
}

+ (DDActionGroup)emptyGroup
{
  objc_opt_self();
  v0 = [DDActionGroup alloc];
  v1 = [(DDActionGroup *)v0 initWithActions:MEMORY[0x277CBEBF8]];

  return v1;
}

- (DDActionGroup)initWithSingleAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = DDActionGroup;
  v6 = [(DDActionGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
  }

  return v7;
}

- (DDActionGroup)initWithActions:(id)actions
{
  v24 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v22.receiver = self;
  v22.super_class = DDActionGroup;
  v5 = [(DDActionGroup *)&v22 init];
  if (v5 && [actionsCopy count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = actionsCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [DDActionGroup alloc];
          v14 = [(DDActionGroup *)v13 initWithSingleAction:v12, v18];
          [(NSMutableArray *)v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    children = v5->_children;
    v5->_children = v6;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)nonnullChildren
{
  if (!self->_children)
  {
    if (self->_action)
    {
      v3 = objc_alloc(MEMORY[0x277CBEB18]);
      v4 = [[DDActionGroup alloc] initWithSingleAction:self->_action];
      v5 = [v3 initWithObjects:{v4, 0}];
      children = self->_children;
      self->_children = v5;

      action = self->_action;
      self->_action = 0;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      action = self->_children;
      self->_children = v8;
    }
  }

  v9 = self->_children;

  return v9;
}

- (void)cleanup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDActionGroup.m" lineNumber:276 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
}

- (void)removeChild:(id)child
{
  [(NSMutableArray *)self->_children removeObject:child];

  [(DDActionGroup *)self cleanup];
}

- (void)simplify
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_children copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 simplify];
        if ([v8 isEmpty])
        {
          [(DDActionGroup *)self removeChild:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(DDActionGroup *)self cleanup];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_regroupByService
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NSMutableArray *)self->_children copy];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
    v6 = v3;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      [v9 _regroupByService];
      v10 = v9[3];
      _serviceIdentifier = [v10 _serviceIdentifier];
      if (_serviceIdentifier)
      {
        if (!v6)
        {
          v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableArray count](self->_children, "count")}];
        }

        v12 = [v6 objectForKeyedSubscript:_serviceIdentifier];
        v13 = v12;
        if (v12)
        {
          [(DDActionGroup *)v12 appendAction:v10];
          [(NSMutableArray *)self->_children removeObject:v9];
        }

        else
        {
          [v6 setObject:v9 forKeyedSubscript:_serviceIdentifier];
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (v6)
  {
    [(DDActionGroup *)self cleanup];
LABEL_18:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)extractedActions
{
  if (self)
  {
    v1 = *(self + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)count
{
  v22 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 24))
    {
      v1 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      v3 = *(v2 + 8);
      OUTLINED_FUNCTION_0_4();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v13 = v5;
        v1 = 0;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            OUTLINED_FUNCTION_2_3(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21);
            if (!v16)
            {
              objc_enumerationMutation(v3);
            }

            v5 = [(DDActionGroup *)*(v20 + 8 * v15) count];
            v1 += v5;
            ++v15;
          }

          while (v13 != v15);
          OUTLINED_FUNCTION_0_4();
          v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
          v13 = v5;
        }

        while (v5);
      }

      else
      {
        v1 = 0;
      }
    }
  }

  else
  {
    v1 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v1;
}

- (id)mainAction
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = v1;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_3();
    v4 = *(v3 + 8);
    OUTLINED_FUNCTION_0_4();
    mainAction = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (mainAction)
    {
      v14 = mainAction;
      v15 = *v22;
      while (2)
      {
        v16 = 0;
        do
        {
          OUTLINED_FUNCTION_2_3(mainAction, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22);
          if (!v17)
          {
            objc_enumerationMutation(v4);
          }

          mainAction = [(DDActionGroup *)*(v21 + 8 * v16) mainAction];
          if (mainAction)
          {
            v2 = mainAction;

            goto LABEL_15;
          }

          ++v16;
        }

        while (v14 != v16);
        OUTLINED_FUNCTION_0_4();
        mainAction = [v4 countByEnumeratingWithState:? objects:? count:?];
        v14 = mainAction;
        if (mainAction)
        {
          continue;
        }

        break;
      }
    }
  }

  v2 = 0;
LABEL_15:
  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)children
{
  if (self)
  {
    selfCopy = self;
    if (self[3] || ![self[1] count])
    {
      v3 = 0;
    }

    else
    {
      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)ddAction
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)appendAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    if (*(action + 16) == 1)
    {
      v10 = v3;
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v8 = objc_opt_class();
      [OUTLINED_FUNCTION_3_3() handleFailureInMethod:v8 object:? file:? lineNumber:? description:?];

      v3 = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (!v3)
    {
      goto LABEL_8;
    }

    v9 = v3;
    if (*(action + 24) || *(action + 8))
    {
      nonnullChildren = [action nonnullChildren];
      v5 = [[DDActionGroup alloc] initWithSingleAction:v9];
      [nonnullChildren addObject:v5];
    }

    else
    {
      v6 = v3;
      nonnullChildren = *(action + 24);
      *(action + 24) = v6;
    }

    v3 = v9;
  }

LABEL_8:
}

- (void)insertAction:(uint64_t)action atIndex:
{
  v5 = a2;
  if (self)
  {
    if (*(self + 16) == 1)
    {
      v12 = v5;
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_insertAction_atIndex_ object:self file:@"DDActionGroup.m" lineNumber:159 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];

      v5 = v12;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else if (!v5)
    {
      goto LABEL_8;
    }

    v11 = v5;
    if (*(self + 24) || *(self + 8))
    {
      nonnullChildren = [self nonnullChildren];
      v7 = [[DDActionGroup alloc] initWithSingleAction:v11];
      [nonnullChildren insertObject:v7 atIndex:action];
    }

    else
    {
      if (action)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:sel_insertAction_atIndex_ object:self file:@"DDActionGroup.m" lineNumber:162 description:{@"Attempted to insert a DDAction in empty group at index %ld", action}];

        v5 = v11;
      }

      v8 = v5;
      nonnullChildren = *(self + 24);
      *(self + 24) = v8;
    }

    v5 = v11;
  }

LABEL_8:
}

- (void)appendActions:(_BYTE *)actions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (actions)
  {
    if (actions[16] == 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_appendActions_ object:actions file:@"DDActionGroup.m" lineNumber:172 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
    }

    v4 = [v3 count];
    if (v4 < 2)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      firstObject = [v3 firstObject];
      [(DDActionGroup *)actions appendAction:firstObject];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      firstObject = v3;
      v6 = [firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(firstObject);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            nonnullChildren = [actions nonnullChildren];
            v12 = [[DDActionGroup alloc] initWithSingleAction:v10];
            [nonnullChildren addObject:v12];

            ++v9;
          }

          while (v7 != v9);
          v7 = [firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)insertActions:(uint64_t)actions atIndex:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    if (self[16] == 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_insertActions_atIndex_ object:self file:@"DDActionGroup.m" lineNumber:185 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
    }

    v6 = [v5 count];
    if (v6 < 2)
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      firstObject = [v5 firstObject];
      [(DDActionGroup *)self insertAction:firstObject atIndex:actions];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      firstObject = v5;
      v8 = [firstObject countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(firstObject);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            nonnullChildren = [self nonnullChildren];
            v14 = [[DDActionGroup alloc] initWithSingleAction:v12];
            [nonnullChildren insertObject:v14 atIndex:actions];

            ++actions;
            ++v11;
          }

          while (v9 != v11);
          v9 = [firstObject countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)appendGroup:(_BYTE *)group
{
  v3 = a2;
  if (group)
  {
    if (group[16] != 1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = v3;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = objc_opt_class();
    [OUTLINED_FUNCTION_3_3() handleFailureInMethod:v6 object:? file:? lineNumber:? description:?];

    v3 = v8;
    if (v8)
    {
LABEL_4:
      v7 = v3;
      nonnullChildren = [group nonnullChildren];
      [nonnullChildren addObject:v7];

      v3 = v7;
    }
  }

LABEL_5:
}

- (void)insertGroup:(uint64_t)group atIndex:
{
  v5 = a2;
  if (self)
  {
    if (self[16] != 1)
    {
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = v5;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_insertGroup_atIndex_ object:self file:@"DDActionGroup.m" lineNumber:211 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];

    v5 = v9;
    if (v9)
    {
LABEL_4:
      v8 = v5;
      nonnullChildren = [self nonnullChildren];
      [nonnullChildren insertObject:v8 atIndex:group];

      v5 = v8;
    }
  }

LABEL_5:
}

- (id)flattenedActions:(uint64_t)actions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (actions)
  {
    if (*(actions + 24))
    {
      v7[0] = *(actions + 24);
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }

    else if ([*(actions + 8) count])
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [actions _fillFlattenedActions:v3 firstLevel:1 makeSubGroup:a2];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)enumerateActionsUsingBlock:(uint64_t)block
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (block)
  {
    if (*(block + 24))
    {
      (*(v3 + 2))(v3);
    }

    else if (*(block + 8))
    {
      OUTLINED_FUNCTION_1_3();
      v6 = v5;
      OUTLINED_FUNCTION_0_4();
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v16 = v8;
        v17 = *v23;
        do
        {
          v18 = 0;
          do
          {
            OUTLINED_FUNCTION_2_3(v8, v9, v10, v11, v12, v13, v14, v15, v21, v22, v23);
            if (!v19)
            {
              objc_enumerationMutation(v6);
            }

            v8 = [(DDActionGroup *)*(v22 + 8 * v18++) enumerateActionsUsingBlock:v4];
          }

          while (v16 != v18);
          OUTLINED_FUNCTION_0_4();
          v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
          v16 = v8;
        }

        while (v8);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (uint64_t)inlinedGroup
{
  if (self)
  {
    v1 = *(self + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)finalizeWithFilter:(uint64_t)filter
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (filter && (*(filter + 16) & 1) == 0)
  {
    if (*(filter + 24))
    {
      if (((*(v3 + 2))(v3) & 1) == 0)
      {
        v5 = *(filter + 24);
        *(filter + 24) = 0;
      }
    }

    else
    {
      v6 = [*(filter + 8) copy];
      OUTLINED_FUNCTION_0_4();
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(v14 + 8 * i);
            [(DDActionGroup *)v12 finalizeWithFilter:v4];
            if ([v12 isEmpty])
            {
              [filter removeChild:v12];
            }
          }

          OUTLINED_FUNCTION_0_4();
          v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v9);
      }
    }

    [filter cleanup];
    *(filter + 16) = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)regroupByService
{
  if (result)
  {
    v1 = result;
    [result simplify];

    return [v1 _regroupByService];
  }

  return result;
}

- (id)_extractFirstAction
{
  if (self)
  {
    if (self->_action || ![(NSMutableArray *)self->_children count])
    {
      children = 0;
    }

    else
    {
      children = self->_children;
    }

    v4 = children;
  }

  else
  {
    v4 = 0;
  }

  firstObject = [(NSMutableArray *)v4 firstObject];

  if ([firstObject isLeaf])
  {
    _extractFirstAction = firstObject;
  }

  else
  {
    _extractFirstAction = [firstObject _extractFirstAction];
  }

  v7 = _extractFirstAction;

  return v7;
}

- (id)extractDefaultActions
{
  selfCopy = self;
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    objc_opt_self();
    v2 = [DDActionGroup alloc];
    v3 = [(DDActionGroup *)v2 initWithActions:MEMORY[0x277CBEBF8]];
    v3->_extractedActions = 1;
    v15 = 0;
    if (selfCopy[3])
    {
      v4 = 0;
    }

    else
    {
      v4 = [selfCopy[1] count];
      if (v4)
      {
        v4 = selfCopy[1];
      }
    }

    v5 = [v4 copy];
    OUTLINED_FUNCTION_0_4();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(8 * i);
          if ([v11 isLeaf])
          {
            [selfCopy removeChild:v11];
            [(DDActionGroup *)v3 appendGroup:v11];
          }

          else
          {
            _extractFirstAction = [v11 _extractFirstAction];
            [(DDActionGroup *)v3 appendGroup:_extractFirstAction];
          }
        }

        OUTLINED_FUNCTION_0_4();
        v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    if ([(DDActionGroup *)v3 count]< 1)
    {
      selfCopy = 0;
    }

    else
    {
      [selfCopy simplify];
      if (v3)
      {
        v3->_inlinedGroup = 1;
      }

      *(selfCopy + 17) = 1;
      selfCopy = v3;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (uint64_t)setInlinedGroup:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

@end