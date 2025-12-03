@interface GTObservableService
- (GTObservableService)init;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterObserversForConnection:(id)connection path:(id)path;
- (void)notifyAll:(id)all;
@end

@implementation GTObservableService

- (GTObservableService)init
{
  v6.receiver = self;
  v6.super_class = GTObservableService;
  v2 = [(GTObservableService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observerIdToObserver = v2->_observerIdToObserver;
    v2->_observerIdToObserver = v3;

    v2->_nextObserverId = 1;
  }

  return v2;
}

- (unint64_t)registerObserver:(id)observer
{
  observerIdToObserver = self->_observerIdToObserver;
  nextObserverId = self->_nextObserverId;
  self->_nextObserverId = nextObserverId + 1;
  v5 = MEMORY[0x277CCABB0];
  observerCopy = observer;
  v7 = [v5 numberWithUnsignedLongLong:nextObserverId];
  [(NSMutableDictionary *)observerIdToObserver setObject:observerCopy forKeyedSubscript:v7];

  return nextObserverId;
}

- (void)deregisterObserver:(unint64_t)observer
{
  observerIdToObserver = self->_observerIdToObserver;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:observer];
  [(NSMutableDictionary *)observerIdToObserver removeObjectForKey:v4];
}

- (void)deregisterObserversForConnection:(id)connection path:(id)path
{
  v41 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  pathCopy = path;
  v8 = connectionCopy;
  v27 = pathCopy;
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_observerIdToObserver, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_observerIdToObserver;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  v28 = connectionCopy;
  if (v9)
  {
    v10 = v9;
    v30 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_observerIdToObserver objectForKeyedSubscript:v12];
        connection = [v8 connection];
        connection2 = [v13 connection];
        v15Connection = [connection2 connection];
        v17 = v15Connection;
        if (connection == v15Connection)
        {
          replyPath = [v13 replyPath];
          v19 = MessagePathEndsWith(replyPath, v27);

          v8 = v28;
          if (v19)
          {
            [v26 addObject:v12];
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v26;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        -[GTObservableService deregisterObserver:](self, "deregisterObserver:", [*(*(&v31 + 1) + 8 * j) unsignedLongValue]);
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)notifyAll:(id)all
{
  v17 = *MEMORY[0x277D85DE8];
  allCopy = all;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observerIdToObserver;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_observerIdToObserver objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9), v12];
        allCopy[2](allCopy, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end