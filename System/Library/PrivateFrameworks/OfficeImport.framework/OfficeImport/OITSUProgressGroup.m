@interface OITSUProgressGroup
- (BOOL)isIndeterminate;
- (OITSUProgressGroup)initWithChildren:(id)a3;
- (double)maxValue;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)dealloc;
- (void)p_updateChildrenProgressObservers;
- (void)removeProgressObserver:(id)a3;
@end

@implementation OITSUProgressGroup

- (OITSUProgressGroup)initWithChildren:(id)a3
{
  v6.receiver = self;
  v6.super_class = OITSUProgressGroup;
  v4 = [(OITSUProgress *)&v6 init];
  if (v4)
  {
    v4->mChildren = [a3 copy];
    v4->mChildrenProgressObserversQueue = dispatch_queue_create("con.apple.iWork.TSUProgressGroup", 0);
  }

  return v4;
}

- (void)dealloc
{
  mChildrenProgressObserversQueue = self->mChildrenProgressObserversQueue;
  if (mChildrenProgressObserversQueue)
  {
    dispatch_release(mChildrenProgressObserversQueue);
  }

  v4.receiver = self;
  v4.super_class = OITSUProgressGroup;
  [(OITSUProgress *)&v4 dealloc];
}

- (double)value
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mChildren = self->mChildren;
  v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v11;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(mChildren);
      }

      [*(*(&v10 + 1) + 8 * i) value];
      v6 = v6 + v8;
    }

    v4 = [(NSArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v6;
}

- (double)maxValue
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mChildren = self->mChildren;
  v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v11;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(mChildren);
      }

      [*(*(&v10 + 1) + 8 * i) maxValue];
      v6 = v6 + v8;
    }

    v4 = [(NSArray *)mChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v6;
}

- (BOOL)isIndeterminate
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(NSArray *)self->mChildren count])
  {
LABEL_11:
    LOBYTE(v4) = 1;
    return v4;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  mChildren = self->mChildren;
  v4 = [(NSArray *)mChildren countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(mChildren);
      }

      if ([*(*(&v9 + 1) + 8 * v7) isIndeterminate])
      {
        goto LABEL_11;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)mChildren countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(v4) = 0;
        if (v5)
        {
          goto LABEL_4;
        }

        return v4;
      }
    }
  }

  return v4;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8.receiver = self;
  v8.super_class = OITSUProgressGroup;
  v6 = [(OITSUProgress *)&v8 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  [(OITSUProgressGroup *)self p_updateChildrenProgressObservers];
  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = OITSUProgressGroup;
  [(OITSUProgress *)&v4 removeProgressObserver:a3];
  [(OITSUProgressGroup *)self p_updateChildrenProgressObservers];
}

- (void)p_updateChildrenProgressObservers
{
  [(OITSUProgress *)self protected_minProgressObserverValueInterval];
  mChildrenProgressObserversQueue = self->mChildrenProgressObserversQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__OITSUProgressGroup_p_updateChildrenProgressObservers__block_invoke;
  v5[3] = &unk_2799C66D8;
  v5[4] = self;
  v5[5] = v4;
  dispatch_async(mChildrenProgressObserversQueue, v5);
}

void __55__OITSUProgressGroup_p_updateChildrenProgressObservers__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [objc_msgSend(*(*(a1 + 32) + 32) objectAtIndex:{v6++), "removeProgressObserver:", *(*(&v27 + 1) + 8 * i)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  *(*(a1 + 32) + 40) = 0;
  v9 = *(a1 + 40);
  if (v9 >= 0 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v9 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 32), "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = *(*(a1 + 32) + 32);
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * j);
          v19 = *(a1 + 40);
          v20 = *(a1 + 32);
          v21 = *(v20 + 48);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __55__OITSUProgressGroup_p_updateChildrenProgressObservers__block_invoke_2;
          v22[3] = &unk_2799C60B0;
          v22[4] = v20;
          [v12 addObject:{objc_msgSend(v18, "addProgressObserverWithValueInterval:queue:handler:", v21, v22, v19)}];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    *(*(a1 + 32) + 40) = v12;
  }

  objc_autoreleasePoolPop(v2);
}

void __55__OITSUProgressGroup_p_updateChildrenProgressObservers__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) protected_progressDidChange];

  objc_autoreleasePoolPop(v2);
}

@end