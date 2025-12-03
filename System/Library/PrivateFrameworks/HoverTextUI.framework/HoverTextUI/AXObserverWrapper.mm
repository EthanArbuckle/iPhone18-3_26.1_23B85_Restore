@interface AXObserverWrapper
- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error;
- (void)dealloc;
@end

@implementation AXObserverWrapper

- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  runloopCopy = runloop;
  notificationsCopy = notifications;
  handlerCopy = handler;
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
    [AXObserverWrapper initWithSystemElement:elementCopy runloop:v17 notifications:? handler:? error:?];
  }

  [(AXObserverWrapper *)v16 setRunloop:runloopCopy];
  [(AXObserverWrapper *)v16 setNotifications:notificationsCopy];
  outObserver = 0;
  [(AXObserverWrapper *)v16 setHandler:handlerCopy];
  [(AXObserverWrapper *)v16 setSystemElement:elementCopy];
  v18 = AXObserverCreate([elementCopy pid], _axEventHandler, &outObserver);
  if (v18 == kAXErrorSuccess)
  {
    v33 = handlerCopy;
    [(AXObserverWrapper *)v16 setObserver:outObserver];
    CFRelease(outObserver);
    v35 = runloopCopy;
    getCFRunLoop = [runloopCopy getCFRunLoop];
    RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)v16 observer]);
    CFRunLoopAddSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = notificationsCopy;
    v22 = notificationsCopy;
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

          intValue = [*(*(&v36 + 1) + 8 * v26) intValue];
          observer = [(AXObserverWrapper *)v16 observer];
          systemElement = [(AXObserverWrapper *)v16 systemElement];
          uiElement = [systemElement uiElement];
          AXObserverAddNotification(observer, [uiElement axElement], intValue, v16);

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

    notificationsCopy = v34;
    runloopCopy = v35;
    handlerCopy = v33;
    goto LABEL_18;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"HoverText" description:{@"Could not make observer. error: %ld", v18}];
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
  notifications = [(AXObserverWrapper *)self notifications];
  v4 = [notifications countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(notifications);
        }

        intValue = [*(*(&v16 + 1) + 8 * v7) intValue];
        observer = [(AXObserverWrapper *)self observer];
        systemElement = [(AXObserverWrapper *)self systemElement];
        uiElement = [systemElement uiElement];
        AXObserverRemoveNotification(observer, [uiElement axElement], intValue);

        ++v7;
      }

      while (v5 != v7);
      v5 = [notifications countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  runloop = [(AXObserverWrapper *)self runloop];
  getCFRunLoop = [runloop getCFRunLoop];
  RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)self observer]);
  CFRunLoopRemoveSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);

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