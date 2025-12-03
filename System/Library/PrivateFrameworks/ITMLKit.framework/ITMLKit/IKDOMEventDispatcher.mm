@interface IKDOMEventDispatcher
+ (id)sharedInstance;
- (BOOL)_runPhase:(int64_t)phase event:(id)event nodeEn:(id)en;
- (BOOL)dispatchEvent:(id)event;
@end

@implementation IKDOMEventDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__IKDOMEventDispatcher_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_dispatcher;

  return v2;
}

uint64_t __38__IKDOMEventDispatcher_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_dispatcher = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)dispatchEvent:(id)event
{
  v17[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  [eventCopy setInUse:1];
  array = [MEMORY[0x277CBEB18] array];
  target = [eventCopy target];
  parentNode = [target parentNode];

  if (parentNode)
  {
    do
    {
      [array insertObject:parentNode atIndex:0];
      v7ParentNode = [parentNode parentNode];

      parentNode = v7ParentNode;
    }

    while (v7ParentNode);
  }

  objectEnumerator = [array objectEnumerator];
  v10 = [(IKDOMEventDispatcher *)self _runPhase:1 event:eventCopy nodeEn:objectEnumerator];

  if (([eventCopy isPropagationStopped] & 1) == 0)
  {
    target2 = [eventCopy target];
    v17[0] = target2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

    objectEnumerator2 = [v12 objectEnumerator];
    v10 |= [(IKDOMEventDispatcher *)self _runPhase:2 event:eventCopy nodeEn:objectEnumerator2];
  }

  if (([eventCopy isPropagationStopped] & 1) == 0 && objc_msgSend(eventCopy, "bubbles"))
  {
    reverseObjectEnumerator = [array reverseObjectEnumerator];
    LOBYTE(v10) = [(IKDOMEventDispatcher *)self _runPhase:3 event:eventCopy nodeEn:reverseObjectEnumerator]| v10;
  }

  [eventCopy setInUse:0];

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)_runPhase:(int64_t)phase event:(id)event nodeEn:(id)en
{
  eventCopy = event;
  enCopy = en;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  nextObject = [enCopy nextObject];
  if (nextObject)
  {
    do
    {
      if ([eventCopy isPropagationStopped])
      {
        break;
      }

      [eventCopy updateDispatchStateWithCurrentTarget:nextObject phase:phase];
      type = [eventCopy type];
      xmlAttribute = [eventCopy xmlAttribute];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__IKDOMEventDispatcher__runPhase_event_nodeEn___block_invoke;
      v15[3] = &unk_2797993B8;
      v17 = &v18;
      v16 = eventCopy;
      [nextObject enumerateEventListernersForType:type xmlAttribute:xmlAttribute phase:phase usingBlock:v15];

      nextObject2 = [enCopy nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  v13 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __47__IKDOMEventDispatcher__runPhase_event_nodeEn___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if ([v5 isEnabled])
  {
    v6 = [v5 value];
    v10[0] = *(a1 + 32);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v8 = [v6 callWithArguments:v7];
  }

  if ([*(a1 + 32) isImmediatePropagationStopped])
  {
    *a3 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end