@interface EDWarnings
- (void)addWarning:(id)warning;
- (void)reportWarningsWithAssociatedObject:(id)object;
@end

@implementation EDWarnings

- (void)addWarning:(id)warning
{
  warningCopy = warning;
  mWarnings = self->mWarnings;
  v8 = warningCopy;
  if (!mWarnings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mWarnings;
    self->mWarnings = v6;

    mWarnings = self->mWarnings;
    warningCopy = v8;
  }

  [(NSMutableArray *)mWarnings addObject:warningCopy];
}

- (void)reportWarningsWithAssociatedObject:(id)object
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