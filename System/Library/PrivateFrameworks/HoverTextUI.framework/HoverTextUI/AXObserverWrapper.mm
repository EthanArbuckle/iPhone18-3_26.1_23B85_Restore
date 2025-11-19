@interface AXObserverWrapper
- (AXObserverWrapper)initWithSystemElement:(id)a3 runloop:(id)a4 notifications:(id)a5 handler:(id)a6 error:(id *)a7;
- (void)dealloc;
@end

@implementation AXObserverWrapper

- (AXObserverWrapper)initWithSystemElement:(id)a3 runloop:(id)a4 notifications:(id)a5 handler:(id)a6 error:(id *)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v41.receiver = self;
  v41.super_class = AXObserverWrapper;
  v16 = [(AXObserverWrapper *)&v41 init];
  if (!v16)
  {
LABEL_18:
    v19 = v16;
    goto LABEL_19;
  }

  v17 = AXLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [AXObserverWrapper initWithSystemElement:v12 runloop:v17 notifications:? handler:? error:?];
  }

  [(AXObserverWrapper *)v16 setRunloop:v13];
  [(AXObserverWrapper *)v16 setNotifications:v14];
  outObserver = 0;
  [(AXObserverWrapper *)v16 setHandler:v15];
  [(AXObserverWrapper *)v16 setSystemElement:v12];
  v18 = AXObserverCreate([v12 pid], _axEventHandler, &outObserver);
  if (v18 == kAXErrorSuccess)
  {
    v33 = v15;
    [(AXObserverWrapper *)v16 setObserver:outObserver];
    CFRelease(outObserver);
    v35 = v13;
    v20 = [v13 getCFRunLoop];
    RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)v16 observer]);
    CFRunLoopAddSource(v20, RunLoopSource, *MEMORY[0x277CBF058]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v14;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        v26 = 0;
        do
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v36 + 1) + 8 * v26) intValue];
          v28 = [(AXObserverWrapper *)v16 observer];
          v29 = [(AXObserverWrapper *)v16 systemElement];
          v30 = [v29 uiElement];
          AXObserverAddNotification(v28, [v30 axElement], v27, v16);

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v24);
    }

    v31 = AXLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [AXObserverWrapper initWithSystemElement:v31 runloop:? notifications:? handler:? error:?];
    }

    v14 = v34;
    v13 = v35;
    v15 = v33;
    goto LABEL_18;
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"HoverText" description:{@"Could not make observer. error: %ld", v18}];
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(AXObserverWrapper *)self notifications];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * v7) intValue];
        v9 = [(AXObserverWrapper *)self observer];
        v10 = [(AXObserverWrapper *)self systemElement];
        v11 = [v10 uiElement];
        AXObserverRemoveNotification(v9, [v11 axElement], v8);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = [(AXObserverWrapper *)self runloop];
  v13 = [v12 getCFRunLoop];
  RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)self observer]);
  CFRunLoopRemoveSource(v13, RunLoopSource, *MEMORY[0x277CBF058]);

  v15.receiver = self;
  v15.super_class = AXObserverWrapper;
  [(AXObserverWrapper *)&v15 dealloc];
}

- (void)initWithSystemElement:(uint64_t)a1 runloop:(NSObject *)a2 notifications:handler:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_254615000, a2, OS_LOG_TYPE_DEBUG, "Setting up axobserver with system element %@", &v2, 0xCu);
}

@end