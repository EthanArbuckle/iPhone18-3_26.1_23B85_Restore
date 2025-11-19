@interface FMObservingCell
- (id)representedObject;
- (void)addKVOObservationToken:(id)a3 forObject:(id)a4;
- (void)addNotificationToken:(id)a3;
- (void)prepareForReuse;
- (void)removeKVOObservationTokens;
- (void)removeNotificationTokens;
- (void)setRepresentedObject:(id)a3;
@end

@implementation FMObservingCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = FMObservingCell;
  [(FMObservingCell *)&v3 prepareForReuse];
  [(FMObservingCell *)self removeKVOObservationTokens];
  [(FMObservingCell *)self removeNotificationTokens];
  [(FMObservingCell *)self setRepresentedObject:0];
}

- (void)setRepresentedObject:(id)a3
{
  obj = a3;
  [(FMObservingCell *)self removeKVOObservationTokens];
  [(FMObservingCell *)self removeNotificationTokens];
  objc_storeWeak(&self->_representedObject, obj);
  if (obj)
  {
    [(FMObservingCell *)self addObserversForRepresentedObject:?];
  }

  else
  {
    [(FMObservingCell *)self removeKVOObservationTokens];
    [(FMObservingCell *)self removeNotificationTokens];
  }

  [(FMObservingCell *)self setNeedsLayout];
}

- (void)addKVOObservationToken:(id)a3 forObject:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(FMObservingCell *)self kvoObservationTokens];

    if (!v9)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [(FMObservingCell *)self setKvoObservationTokens:v10];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(FMObservingCell *)self kvoObservationTokens];
    v12 = [v11 allKeys];

    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        v18 = [v17 object];

        if (v18 == v8)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v20 = v17;

      if (v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_13:
    }

    v20 = [objc_alloc(MEMORY[0x277D07B50]) initWithObject:v8];
LABEL_18:
    v21 = [(FMObservingCell *)self kvoObservationTokens];
    v19 = [v21 objectForKeyedSubscript:v20];

    if (!v19)
    {
      v19 = [MEMORY[0x277CBEB58] set];
      v22 = [(FMObservingCell *)self kvoObservationTokens];
      [v22 setObject:v19 forKeyedSubscript:v20];
    }

    [v19 addObject:v6];
  }

  else
  {
    v19 = LogCategory_Unspecified();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FMObservingCell addKVOObservationToken:v19 forObject:?];
    }
  }
}

- (void)removeKVOObservationTokens
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(FMObservingCell *)self kvoObservationTokens];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        v8 = [(FMObservingCell *)self kvoObservationTokens];
        v9 = [v8 objectForKeyedSubscript:v7];

        v10 = [v7 object];
        if (v10)
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            do
            {
              v15 = 0;
              do
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v10 removeKVOBlockForToken:*(*(&v18 + 1) + 8 * v15++)];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v13);
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v16 = [(FMObservingCell *)self kvoObservationTokens];
  [v16 removeAllObjects];
}

- (void)addNotificationToken:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(FMObservingCell *)a2 addNotificationToken:?];
  }

  v6 = [(FMObservingCell *)self notificationTokens];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(FMObservingCell *)self setNotificationTokens:v7];
  }

  v8 = [(FMObservingCell *)self notificationTokens];
  [v8 addObject:v5];
}

- (void)removeNotificationTokens
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(FMObservingCell *)self notificationTokens];
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

        [v3 removeObserver:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(FMObservingCell *)self notificationTokens];
  [v9 removeAllObjects];
}

- (id)representedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_representedObject);

  return WeakRetained;
}

- (void)addNotificationToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMObservingCell.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"[[inToken class] respondsToSelector:@selector(isAnObserver:)]"}];
}

@end