@interface HUApplier
+ (void)registerStandaloneApplier:(id)a3;
- (BOOL)complete:(BOOL)a3;
- (BOOL)start;
- (HUApplier)init;
- (void)addApplierBlock:(id)a3;
- (void)addCompletionBlock:(id)a3;
- (void)updateProgress:(double)a3;
@end

@implementation HUApplier

+ (void)registerStandaloneApplier:(id)a3
{
  v3 = _MergedGlobals_614;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    dispatch_once(&_MergedGlobals_614, &__block_literal_global_33);
    v5 = v6;
  }

  [qword_281121E98 addObject:v5];
}

void __39__HUApplier_registerStandaloneApplier___block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = qword_281121E98;
  qword_281121E98 = v0;
}

- (HUApplier)init
{
  v8.receiver = self;
  v8.super_class = HUApplier;
  v2 = [(HUApplier *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    applierBlocks = v2->_applierBlocks;
    v2->_applierBlocks = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v5;
  }

  return v2;
}

- (void)addApplierBlock:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUApplier.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"applier"}];
  }

  if ([(HUApplier *)self state])
  {
    [(HUApplier *)self progress];
    v9[2]();
  }

  if (![(HUApplier *)self _hasCompleted])
  {
    applierBlocks = self->_applierBlocks;
    v6 = [v9 copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)applierBlocks addObject:v7];
  }
}

- (void)addCompletionBlock:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HUApplier.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([(HUApplier *)self _hasCompleted])
  {
    v9[2](v9, [(HUApplier *)self state]== 3);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v6 = [v9 copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)completionBlocks addObject:v7];
  }
}

- (BOOL)start
{
  v3 = [(HUApplier *)self state];
  if (!v3)
  {
    self->_state = 1;
  }

  return v3 == 0;
}

- (void)updateProgress:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HUApplier *)self state]== 1)
  {
    self->_progress = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_applierBlocks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9++) + 16))(a3);
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)complete:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HUApplier *)self _hasCompleted];
  if (!v5)
  {
    v6 = 2;
    if (v3)
    {
      v6 = 3;
    }

    self->_state = v6;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_completionBlocks;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  }

  return !v5;
}

@end