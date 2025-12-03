@interface HMMTagDispatcher
- (HMMTagDispatcher)initWithWorkQueue:(id)queue;
- (HMMTagDispatcher)initWithWorkQueue:(id)queue startTime:(int64_t)time;
- (void)registerTagObserver:(id)observer forTags:(id)tags;
- (void)submitTaggedEvent:(id)event processorList:(id)list;
- (void)unregisterTagObserver:(id)observer forTags:(id)tags;
@end

@implementation HMMTagDispatcher

- (void)submitTaggedEvent:(id)event processorList:(id)list
{
  eventCopy = event;
  listCopy = list;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMMTagDispatcher_submitTaggedEvent_processorList___block_invoke;
  block[3] = &unk_2786F9060;
  v12 = eventCopy;
  selfCopy = self;
  v14 = listCopy;
  v9 = listCopy;
  v10 = eventCopy;
  dispatch_async(workQueue, block);
}

void __52__HMMTagDispatcher_submitTaggedEvent_processorList___block_invoke(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v36 = [a1[4] tagTime];
  v2 = [a1[5] tagObservers];
  v3 = [a1[4] tagName];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          v11 = a1[4];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __52__HMMTagDispatcher_submitTaggedEvent_processorList___block_invoke_2;
          v45[3] = &unk_2786F9088;
          v48 = v36;
          v12 = a1[6];
          v13 = a1[5];
          v46 = v12;
          v47 = v13;
          [v10 observeTaggedEvent:v11 addProcessorBlock:v45];
        }

        v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v7);
    }

    v4 = v35;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [a1[6] processors];
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        if ([v19 isActive])
        {
          v20 = [v19 tagProcessingBlocks];
          v21 = [a1[4] tagName];
          v22 = [v20 objectForKey:v21];

          if (v22)
          {
            (v22)[2](v22, v19, a1[4]);
            [v19 setLastUpdate:v36];
          }
        }

        else
        {
          [a1[6] removeProcessor:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v16);
  }

  if (v36 >= [a1[5] nextStaleCheckTime])
  {
    v23 = v4;
    v24 = [a1[5] allTagProcessors];
    [v24 addPointer:0];

    v25 = [a1[5] allTagProcessors];
    [v25 compact];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = [a1[5] allTagProcessors];
    v27 = [v26 allObjects];

    v28 = [v27 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v37 + 1) + 8 * k);
          if ([v32 lastUpdate] <= v36 - 3600000)
          {
            [v32 closeForReason:2];
            v33 = [a1[5] allTagProcessors];
            [v33 hmf_removeObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v29);
    }

    [a1[5] setNextStaleCheckTime:v36 + 3600000];
    v4 = v23;
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __52__HMMTagDispatcher_submitTaggedEvent_processorList___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setLastUpdate:v3];
  [*(a1 + 32) addProcessor:v4];
  v5 = [*(a1 + 40) allTagProcessors];
  [v5 hmf_addObject:v4];
}

- (void)unregisterTagObserver:(id)observer forTags:(id)tags
{
  observerCopy = observer;
  tagsCopy = tags;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMMTagDispatcher_unregisterTagObserver_forTags___block_invoke;
  block[3] = &unk_2786F9060;
  v12 = tagsCopy;
  selfCopy = self;
  v14 = observerCopy;
  v9 = observerCopy;
  v10 = tagsCopy;
  dispatch_async(workQueue, block);
}

void __50__HMMTagDispatcher_unregisterTagObserver_forTags___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) tagObservers];
        v9 = [v8 objectForKey:v7];

        [v9 removeObjectIdenticalTo:*(a1 + 48)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerTagObserver:(id)observer forTags:(id)tags
{
  observerCopy = observer;
  tagsCopy = tags;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMMTagDispatcher_registerTagObserver_forTags___block_invoke;
  block[3] = &unk_2786F9060;
  v12 = tagsCopy;
  selfCopy = self;
  v14 = observerCopy;
  v9 = observerCopy;
  v10 = tagsCopy;
  dispatch_async(workQueue, block);
}

void __48__HMMTagDispatcher_registerTagObserver_forTags___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) tagObservers];
        v9 = [v8 objectForKey:v7];

        if (!v9)
        {
          v9 = [MEMORY[0x277CBEB18] array];
          v10 = [*(a1 + 40) tagObservers];
          [v10 setObject:v9 forKey:v7];
        }

        [v9 addObject:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMMTagDispatcher)initWithWorkQueue:(id)queue startTime:(int64_t)time
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = HMMTagDispatcher;
  v8 = [(HMMTagDispatcher *)&v14 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tagObservers = v8->_tagObservers;
    v8->_tagObservers = dictionary;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    allTagProcessors = v8->_allTagProcessors;
    v8->_allTagProcessors = weakObjectsPointerArray;

    objc_storeStrong(&v8->_workQueue, queue);
    v8->_nextStaleCheckTime = time + 3600000;
  }

  return v8;
}

- (HMMTagDispatcher)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  0xF4240 = [(HMMTagDispatcher *)self initWithWorkQueue:queueCopy startTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0xF4240];

  return 0xF4240;
}

@end