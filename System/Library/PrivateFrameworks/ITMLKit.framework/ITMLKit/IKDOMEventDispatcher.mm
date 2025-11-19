@interface IKDOMEventDispatcher
+ (id)sharedInstance;
- (BOOL)_runPhase:(int64_t)a3 event:(id)a4 nodeEn:(id)a5;
- (BOOL)dispatchEvent:(id)a3;
@end

@implementation IKDOMEventDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__IKDOMEventDispatcher_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (BOOL)dispatchEvent:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setInUse:1];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 target];
  v7 = [v6 parentNode];

  if (v7)
  {
    do
    {
      [v5 insertObject:v7 atIndex:0];
      v8 = [v7 parentNode];

      v7 = v8;
    }

    while (v8);
  }

  v9 = [v5 objectEnumerator];
  v10 = [(IKDOMEventDispatcher *)self _runPhase:1 event:v4 nodeEn:v9];

  if (([v4 isPropagationStopped] & 1) == 0)
  {
    v11 = [v4 target];
    v17[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

    v13 = [v12 objectEnumerator];
    v10 |= [(IKDOMEventDispatcher *)self _runPhase:2 event:v4 nodeEn:v13];
  }

  if (([v4 isPropagationStopped] & 1) == 0 && objc_msgSend(v4, "bubbles"))
  {
    v14 = [v5 reverseObjectEnumerator];
    LOBYTE(v10) = [(IKDOMEventDispatcher *)self _runPhase:3 event:v4 nodeEn:v14]| v10;
  }

  [v4 setInUse:0];

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)_runPhase:(int64_t)a3 event:(id)a4 nodeEn:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [v8 nextObject];
  if (v9)
  {
    do
    {
      if ([v7 isPropagationStopped])
      {
        break;
      }

      [v7 updateDispatchStateWithCurrentTarget:v9 phase:a3];
      v10 = [v7 type];
      v11 = [v7 xmlAttribute];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__IKDOMEventDispatcher__runPhase_event_nodeEn___block_invoke;
      v15[3] = &unk_2797993B8;
      v17 = &v18;
      v16 = v7;
      [v9 enumerateEventListernersForType:v10 xmlAttribute:v11 phase:a3 usingBlock:v15];

      v12 = [v8 nextObject];

      v9 = v12;
    }

    while (v12);
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