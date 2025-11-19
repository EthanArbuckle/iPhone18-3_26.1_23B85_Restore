@interface DDActionGroup
+ (DDActionGroup)emptyGroup;
+ (DDActionGroup)groupWithAction:(uint64_t)a1;
+ (DDActionGroup)groupWithActions:(uint64_t)a1;
- (BOOL)isEmpty;
- (DDActionGroup)initWithActions:(id)a3;
- (DDActionGroup)initWithSingleAction:(id)a3;
- (id)_extractFirstAction;
- (id)children;
- (id)ddAction;
- (id)extractDefaultActions;
- (id)flattenedActions:(uint64_t)a1;
- (id)mainAction;
- (id)nonnullChildren;
- (uint64_t)count;
- (uint64_t)extractedActions;
- (uint64_t)inlinedGroup;
- (uint64_t)setInlinedGroup:(uint64_t)result;
- (void)_regroupByService;
- (void)appendAction:(uint64_t)a1;
- (void)appendActions:(_BYTE *)a1;
- (void)appendGroup:(_BYTE *)a1;
- (void)cleanup;
- (void)enumerateActionsUsingBlock:(uint64_t)a1;
- (void)finalizeWithFilter:(uint64_t)a1;
- (void)insertAction:(uint64_t)a3 atIndex:;
- (void)insertActions:(uint64_t)a3 atIndex:;
- (void)insertGroup:(uint64_t)a3 atIndex:;
- (void)regroupByService;
- (void)removeChild:(id)a3;
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

+ (DDActionGroup)groupWithActions:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 count];
  if (v3 == 1)
  {
    v4 = [v2 firstObject];
    objc_opt_self();
    v5 = [[DDActionGroup alloc] initWithSingleAction:v4];
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

+ (DDActionGroup)groupWithAction:(uint64_t)a1
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

- (DDActionGroup)initWithSingleAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDActionGroup;
  v6 = [(DDActionGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

- (DDActionGroup)initWithActions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DDActionGroup;
  v5 = [(DDActionGroup *)&v22 init];
  if (v5 && [v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"DDActionGroup.m" lineNumber:276 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
}

- (void)removeChild:(id)a3
{
  [(NSMutableArray *)self->_children removeObject:a3];

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
      v11 = [v10 _serviceIdentifier];
      if (v11)
      {
        if (!v6)
        {
          v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableArray count](self->_children, "count")}];
        }

        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          [(DDActionGroup *)v12 appendAction:v10];
          [(NSMutableArray *)self->_children removeObject:v9];
        }

        else
        {
          [v6 setObject:v9 forKeyedSubscript:v11];
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
  if (a1)
  {
    v1 = *(a1 + 17);
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
  if (a1)
  {
    if (*(a1 + 24))
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
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v2 = v1;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_3();
    v4 = *(v3 + 8);
    OUTLINED_FUNCTION_0_4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      v15 = *v22;
      while (2)
      {
        v16 = 0;
        do
        {
          OUTLINED_FUNCTION_2_3(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22);
          if (!v17)
          {
            objc_enumerationMutation(v4);
          }

          v6 = [(DDActionGroup *)*(v21 + 8 * v16) mainAction];
          if (v6)
          {
            v2 = v6;

            goto LABEL_15;
          }

          ++v16;
        }

        while (v14 != v16);
        OUTLINED_FUNCTION_0_4();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        v14 = v6;
        if (v6)
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
  if (a1)
  {
    v2 = a1;
    if (a1[3] || ![a1[1] count])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)ddAction
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (void)appendAction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      v10 = v3;
      v7 = [MEMORY[0x277CCA890] currentHandler];
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
    if (*(a1 + 24) || *(a1 + 8))
    {
      v4 = [a1 nonnullChildren];
      v5 = [[DDActionGroup alloc] initWithSingleAction:v9];
      [v4 addObject:v5];
    }

    else
    {
      v6 = v3;
      v4 = *(a1 + 24);
      *(a1 + 24) = v6;
    }

    v3 = v9;
  }

LABEL_8:
}

- (void)insertAction:(uint64_t)a3 atIndex:
{
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      v12 = v5;
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:sel_insertAction_atIndex_ object:a1 file:@"DDActionGroup.m" lineNumber:159 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];

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
    if (*(a1 + 24) || *(a1 + 8))
    {
      v6 = [a1 nonnullChildren];
      v7 = [[DDActionGroup alloc] initWithSingleAction:v11];
      [v6 insertObject:v7 atIndex:a3];
    }

    else
    {
      if (a3)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        [v10 handleFailureInMethod:sel_insertAction_atIndex_ object:a1 file:@"DDActionGroup.m" lineNumber:162 description:{@"Attempted to insert a DDAction in empty group at index %ld", a3}];

        v5 = v11;
      }

      v8 = v5;
      v6 = *(a1 + 24);
      *(a1 + 24) = v8;
    }

    v5 = v11;
  }

LABEL_8:
}

- (void)appendActions:(_BYTE *)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if (a1[16] == 1)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:sel_appendActions_ object:a1 file:@"DDActionGroup.m" lineNumber:172 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
    }

    v4 = [v3 count];
    if (v4 < 2)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      v5 = [v3 firstObject];
      [(DDActionGroup *)a1 appendAction:v5];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            v11 = [a1 nonnullChildren];
            v12 = [[DDActionGroup alloc] initWithSingleAction:v10];
            [v11 addObject:v12];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)insertActions:(uint64_t)a3 atIndex:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    if (a1[16] == 1)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:sel_insertActions_atIndex_ object:a1 file:@"DDActionGroup.m" lineNumber:185 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];
    }

    v6 = [v5 count];
    if (v6 < 2)
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v7 = [v5 firstObject];
      [(DDActionGroup *)a1 insertAction:v7 atIndex:a3];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            v13 = [a1 nonnullChildren];
            v14 = [[DDActionGroup alloc] initWithSingleAction:v12];
            [v13 insertObject:v14 atIndex:a3];

            ++a3;
            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)appendGroup:(_BYTE *)a1
{
  v3 = a2;
  if (a1)
  {
    if (a1[16] != 1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = v3;
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = objc_opt_class();
    [OUTLINED_FUNCTION_3_3() handleFailureInMethod:v6 object:? file:? lineNumber:? description:?];

    v3 = v8;
    if (v8)
    {
LABEL_4:
      v7 = v3;
      v4 = [a1 nonnullChildren];
      [v4 addObject:v7];

      v3 = v7;
    }
  }

LABEL_5:
}

- (void)insertGroup:(uint64_t)a3 atIndex:
{
  v5 = a2;
  if (a1)
  {
    if (a1[16] != 1)
    {
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = v5;
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:sel_insertGroup_atIndex_ object:a1 file:@"DDActionGroup.m" lineNumber:211 description:{@"Attempted to mutate immutable %@", objc_opt_class()}];

    v5 = v9;
    if (v9)
    {
LABEL_4:
      v8 = v5;
      v6 = [a1 nonnullChildren];
      [v6 insertObject:v8 atIndex:a3];

      v5 = v8;
    }
  }

LABEL_5:
}

- (id)flattenedActions:(uint64_t)a1
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 24))
    {
      v7[0] = *(a1 + 24);
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }

    else if ([*(a1 + 8) count])
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [a1 _fillFlattenedActions:v3 firstLevel:1 makeSubGroup:a2];
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

- (void)enumerateActionsUsingBlock:(uint64_t)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 24))
    {
      (*(v3 + 2))(v3);
    }

    else if (*(a1 + 8))
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
  if (a1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)finalizeWithFilter:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && (*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      if (((*(v3 + 2))(v3) & 1) == 0)
      {
        v5 = *(a1 + 24);
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v6 = [*(a1 + 8) copy];
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
              [a1 removeChild:v12];
            }
          }

          OUTLINED_FUNCTION_0_4();
          v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v9);
      }
    }

    [a1 cleanup];
    *(a1 + 16) = 1;
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

  v5 = [(NSMutableArray *)v4 firstObject];

  if ([v5 isLeaf])
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 _extractFirstAction];
  }

  v7 = v6;

  return v7;
}

- (id)extractDefaultActions
{
  v1 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    objc_opt_self();
    v2 = [DDActionGroup alloc];
    v3 = [(DDActionGroup *)v2 initWithActions:MEMORY[0x277CBEBF8]];
    v3->_extractedActions = 1;
    v15 = 0;
    if (v1[3])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v1[1] count];
      if (v4)
      {
        v4 = v1[1];
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
            [v1 removeChild:v11];
            [(DDActionGroup *)v3 appendGroup:v11];
          }

          else
          {
            v12 = [v11 _extractFirstAction];
            [(DDActionGroup *)v3 appendGroup:v12];
          }
        }

        OUTLINED_FUNCTION_0_4();
        v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    if ([(DDActionGroup *)v3 count]< 1)
    {
      v1 = 0;
    }

    else
    {
      [v1 simplify];
      if (v3)
      {
        v3->_inlinedGroup = 1;
      }

      *(v1 + 17) = 1;
      v1 = v3;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v1;
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