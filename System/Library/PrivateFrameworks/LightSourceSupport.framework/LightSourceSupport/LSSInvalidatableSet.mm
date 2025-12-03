@interface LSSInvalidatableSet
+ (id)addAssertionsForOptions:(unsigned int)options reason:(id)reason to:(id)to;
- (void)dealloc;
- (void)invalidate;
@end

@implementation LSSInvalidatableSet

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_invalidatables;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  invalidatables = self->_invalidatables;
  self->_invalidatables = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LSSInvalidatableSet;
  [(LSSInvalidatableSet *)&v2 dealloc];
}

+ (id)addAssertionsForOptions:(unsigned int)options reason:(id)reason to:(id)to
{
  optionsCopy = options;
  reasonCopy = reason;
  toCopy = to;
  array = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__LSSInvalidatableSet_addAssertionsForOptions_reason_to___block_invoke;
  v18[3] = &unk_2798127C0;
  v10 = toCopy;
  v19 = v10;
  v11 = reasonCopy;
  v20 = v11;
  v12 = array;
  v21 = v12;
  v13 = MEMORY[0x259C50010](v18);
  v14 = v13;
  if ((optionsCopy & 2) != 0)
  {
    (*(v13 + 16))(v13, 100);
    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v14[2](v14, 101);
  if ((optionsCopy & 8) == 0)
  {
LABEL_4:
    v15 = [v12 count];
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_10:
    firstObject = 0;
    goto LABEL_12;
  }

LABEL_9:
  v14[2](v14, 2);
  v15 = [v12 count];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v15 == 1)
  {
    firstObject = [v12 firstObject];
  }

  else
  {
    firstObject = objc_alloc_init(LSSInvalidatableSet);
    [(LSSInvalidatableSet *)firstObject setInvalidatables:v12];
  }

LABEL_12:

  return firstObject;
}

uint64_t __57__LSSInvalidatableSet_addAssertionsForOptions_reason_to___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) addAssertion:a2 reason:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

@end