@interface IMEventListenerList
- (BOOL)containsObject:(id)object;
- (IMEventListenerList)init;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)removeObject:(id)object;
@end

@implementation IMEventListenerList

- (IMEventListenerList)init
{
  v6.receiver = self;
  v6.super_class = IMEventListenerList;
  v2 = [(IMEventListenerList *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    eventListeners = v2->_eventListeners;
    v2->_eventListeners = array;
  }

  return v2;
}

- (unint64_t)count
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = selfCopy->_eventListeners;
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

        eventListener = [*(*(&v11 + 1) + 8 * v7) eventListener];
        v9 = eventListener != 0;

        v4 += v9;
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = selfCopy->_eventListeners;
  v6 = [[IMEventListenerReference alloc] initWithEventListener:objectCopy];
  [(NSMutableArray *)eventListeners addObject:v6];

  objc_sync_exit(selfCopy);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_eventListeners count];
  if (v5 - 1 >= 0)
  {
    do
    {
      v6 = [(NSMutableArray *)selfCopy->_eventListeners objectAtIndex:--v5];
      eventListener = [v6 eventListener];
      if (eventListener)
      {
        v8 = eventListener == objectCopy;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        [(NSMutableArray *)selfCopy->_eventListeners removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_eventListeners count];
  if (v6 - 1 < 0)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    v7 = [(NSMutableArray *)selfCopy->_eventListeners objectAtIndex:--v6];
    eventListener = [v7 eventListener];
    v9 = eventListener;
    if (!eventListener)
    {
      [(NSMutableArray *)selfCopy->_eventListeners removeObjectAtIndex:v6];
      goto LABEL_6;
    }

    if (eventListener == objectCopy)
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
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = selfCopy->_eventListeners;
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

      eventListener = [*(*(&v13 + 1) + 8 * v10) eventListener];
      if (eventListener)
      {
        blockCopy[2](blockCopy, eventListener, v8++, &v17);
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

  objc_sync_exit(selfCopy);
}

@end