@interface IMEventListenerList
- (BOOL)containsObject:(id)a3;
- (IMEventListenerList)init;
- (unint64_t)count;
- (void)addObject:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)removeObject:(id)a3;
@end

@implementation IMEventListenerList

- (IMEventListenerList)init
{
  v6.receiver = self;
  v6.super_class = IMEventListenerList;
  v2 = [(IMEventListenerList *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    eventListeners = v2->_eventListeners;
    v2->_eventListeners = v3;
  }

  return v2;
}

- (unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v2->_eventListeners;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) eventListener];
        v9 = v8 != 0;

        v4 += v9;
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
  return v4;
}

- (void)addObject:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  eventListeners = v4->_eventListeners;
  v6 = [[IMEventListenerReference alloc] initWithEventListener:v7];
  [(NSMutableArray *)eventListeners addObject:v6];

  objc_sync_exit(v4);
}

- (void)removeObject:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)v4->_eventListeners count];
  if (v5 - 1 >= 0)
  {
    do
    {
      v6 = [(NSMutableArray *)v4->_eventListeners objectAtIndex:--v5];
      v7 = [v6 eventListener];
      if (v7)
      {
        v8 = v7 == v9;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        [(NSMutableArray *)v4->_eventListeners removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }

  objc_sync_exit(v4);
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableArray *)v5->_eventListeners count];
  if (v6 - 1 < 0)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    v7 = [(NSMutableArray *)v5->_eventListeners objectAtIndex:--v6];
    v8 = [v7 eventListener];
    v9 = v8;
    if (!v8)
    {
      [(NSMutableArray *)v5->_eventListeners removeObjectAtIndex:v6];
      goto LABEL_6;
    }

    if (v8 == v4)
    {
      break;
    }

LABEL_6:

    if (v6 <= 0)
    {
      goto LABEL_7;
    }
  }

  v10 = 1;
LABEL_8:
  objc_sync_exit(v5);

  return v10;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5->_eventListeners;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v13 + 1) + 8 * v10) eventListener];
      if (v11)
      {
        v4[2](v4, v11, v8++, &v17);
      }

      v12 = v17;

      if (v12)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(v5);
}

@end