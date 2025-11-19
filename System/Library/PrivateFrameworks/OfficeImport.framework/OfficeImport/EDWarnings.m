@interface EDWarnings
- (void)addWarning:(id)a3;
- (void)reportWarningsWithAssociatedObject:(id)a3;
@end

@implementation EDWarnings

- (void)addWarning:(id)a3
{
  v4 = a3;
  mWarnings = self->mWarnings;
  v8 = v4;
  if (!mWarnings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mWarnings;
    self->mWarnings = v6;

    mWarnings = self->mWarnings;
    v4 = v8;
  }

  [(NSMutableArray *)mWarnings addObject:v4];
}

- (void)reportWarningsWithAssociatedObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  mWarnings = self->mWarnings;
  if (mWarnings)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = mWarnings;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [TCMessageContext reportWarning:*(*(&v9 + 1) + 8 * v8++), v9];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->mWarnings removeAllObjects];
  }
}

@end