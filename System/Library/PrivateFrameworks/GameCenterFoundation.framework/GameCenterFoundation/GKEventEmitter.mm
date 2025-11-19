@interface GKEventEmitter
- (BOOL)listenerRegisteredForSelector:(SEL)a3;
- (GKEventEmitter)initWithSupportedProtocols:(id)a3 shouldQueue:(BOOL)a4;
- (id)invocationForProtocol:(id)a3 selector:(SEL)a4;
- (id)methodSignatureForProtocol:(id)a3 selector:(SEL)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dispatchQueuedEventsToListener:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)registerListener:(id)a3;
@end

@implementation GKEventEmitter

- (GKEventEmitter)initWithSupportedProtocols:(id)a3 shouldQueue:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = GKEventEmitter;
  v7 = [(GKEventEmitter *)&v12 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(GKEventEmitter *)v7 setListeners:v8];

    v9 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    [(GKEventEmitter *)v7 setSupportedProtocols:v9];

    v10 = [MEMORY[0x277CBEB18] array];
    [(GKEventEmitter *)v7 setQueuedEvents:v10];

    v7->_shouldQueue = a4;
  }

  return v7;
}

- (void)dispatchQueuedEventsToListener:(id)a3
{
  v8 = a3;
  if ([(NSMutableArray *)self->_queuedEvents count])
  {
    v4 = [(NSMutableArray *)self->_queuedEvents objectAtIndex:0];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      while (1)
      {
        [v5 selector];
        if (objc_opt_respondsToSelector())
        {
          [v5 invokeWithTarget:v8];
          [(NSMutableArray *)self->_queuedEvents removeObjectAtIndex:v6];
        }

        else
        {
          ++v6;
        }

        if (v6 >= [(NSMutableArray *)self->_queuedEvents count])
        {
          break;
        }

        v7 = [(NSMutableArray *)self->_queuedEvents objectAtIndex:v6];

        v5 = v7;
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_11:
}

- (void)registerListener:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSHashTable *)self->_listeners containsObject:v4])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_supportedProtocols;
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

          if ([v4 conformsToProtocol:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            [(NSHashTable *)self->_listeners addObject:v4];
            [(GKEventEmitter *)self dispatchQueuedEventsToListener:v4];
            goto LABEL_12;
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

LABEL_12:
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)methodSignatureForProtocol:(id)a3 selector:(SEL)a4
{
  v5 = a3;
  MethodDescription = protocol_getMethodDescription(v5, a4, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v8 = protocol_getMethodDescription(v5, a4, 0, 1), types = v8.types, v8.name))
  {
    v9 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:types];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)invocationForProtocol:(id)a3 selector:(SEL)a4
{
  v5 = [(GKEventEmitter *)self methodSignatureForProtocol:a3 selector:?];
  v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
  [v6 setSelector:a4];

  return v6;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = GKEventEmitter;
  v5 = [(GKEventEmitter *)&v18 methodSignatureForSelector:?];
  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_supportedProtocols;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(GKEventEmitter *)self methodSignatureForProtocol:*(*(&v14 + 1) + 8 * i) selector:a3, v14];
          if (v11)
          {
            v5 = v11;
            goto LABEL_12;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_12:
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 selector];
  v5 = [(GKEventEmitter *)self listeners];
  v6 = [v5 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_13:
    if (self->_shouldQueue)
    {
      [v4 retainArguments];
      [(NSMutableArray *)self->_queuedEvents addObject:v4];
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        [v4 invokeWithTarget:{v13, v15}];
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)listenerRegisteredForSelector:(SEL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_listeners;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end