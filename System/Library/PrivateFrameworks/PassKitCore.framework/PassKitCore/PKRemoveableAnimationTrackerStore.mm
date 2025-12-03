@interface PKRemoveableAnimationTrackerStore
- (NSArray)trackers;
- (PKRemoveableAnimationTrackerStore)init;
- (void)clear;
- (void)preempt;
- (void)remove;
@end

@implementation PKRemoveableAnimationTrackerStore

- (PKRemoveableAnimationTrackerStore)init
{
  v6.receiver = self;
  v6.super_class = PKRemoveableAnimationTrackerStore;
  v2 = [(PKRemoveableAnimationTrackerStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trackers = v2->_trackers;
    v2->_trackers = v3;
  }

  return v2;
}

- (void)preempt
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_trackers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v3)
  {
LABEL_23:

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v18;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v17 + 1) + 8 * i);
      if (v8 && (*(v8 + 11) & 1) == 0 && (*(v8 + 8) & 1) == 0)
      {
        if (!v5)
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v5 addObject:v8];
      }
    }

    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  }

  while (v4);

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = v5;
    v9 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v2);
          }

          [(PKRemoveableAnimationTracker *)*(*(&v13 + 1) + 8 * j) _preempt];
        }

        v10 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }

    goto LABEL_23;
  }
}

- (void)remove
{
  v15 = *MEMORY[0x1E69E9840];
  if (self && [(NSMutableArray *)self->_trackers count])
  {
    v3 = [(NSMutableArray *)self->_trackers copy];
  }

  else
  {
    v3 = 0;
  }

  [(NSMutableArray *)self->_trackers removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9)
        {
          *(v9 + 10) = 0;
        }

        [(PKRemoveableAnimationTracker *)v9 _remove];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)clear
{
  v15 = *MEMORY[0x1E69E9840];
  if (self && [(NSMutableArray *)self->_trackers count])
  {
    v3 = [(NSMutableArray *)self->_trackers copy];
  }

  else
  {
    v3 = 0;
  }

  [(NSMutableArray *)self->_trackers removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9)
        {
          *(v9 + 10) = 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (NSArray)trackers
{
  if (self)
  {
    selfCopy = self;
    self = [(NSMutableArray *)self->_trackers count];
    if (self)
    {
      self = [(NSMutableArray *)selfCopy->_trackers copy];
    }

    v2 = vars8;
  }

  return self;
}

@end