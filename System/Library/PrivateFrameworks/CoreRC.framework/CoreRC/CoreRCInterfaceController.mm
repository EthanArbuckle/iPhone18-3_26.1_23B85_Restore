@interface CoreRCInterfaceController
- (BOOL)addBundlesFromPaths:(id)paths expectedClass:(Class)class;
- (BOOL)addInterfaceListenerClass:(Class)class;
- (CECFakeInterfaceListener)fakeInterfaceListener;
- (CoreRCInterfaceController)init;
- (id)firstInterface;
- (void)dealloc;
- (void)interfaceListener:(id)listener didAddInterface:(id)interface;
- (void)interfaceListener:(id)listener didRemoveInterface:(id)interface;
- (void)startOnQueue:(id)queue;
@end

@implementation CoreRCInterfaceController

- (CECFakeInterfaceListener)fakeInterfaceListener
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interfaceListeners = [(CoreRCInterfaceController *)self interfaceListeners];
  v3 = [(NSArray *)interfaceListeners countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(interfaceListeners);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = objc_opt_class();
      Name = class_getName(v8);
      if (!strcmp(Name, "CECFakeInterfaceListener"))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)interfaceListeners countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CoreRCInterfaceController)init
{
  v5.receiver = self;
  v5.super_class = CoreRCInterfaceController;
  v2 = [(CoreRCInterfaceController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v2->_interfaceListeners = v3;
    if (!v3)
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  interfaceListeners = self->_interfaceListeners;
  v4 = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(interfaceListeners);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 unscheduleFromDispatchQueue:self->_queue];
      }

      v5 = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = CoreRCInterfaceController;
  [(CoreRCInterfaceController *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)addInterfaceListenerClass:(Class)class
{
  v4 = [[class alloc] initWithInterfaceController:self];
  v5 = v4;
  if (v4)
  {
    [v4 setDelegate:self];
    [(NSMutableArray *)self->_interfaceListeners addObject:v5];
  }

  return v5 != 0;
}

- (BOOL)addBundlesFromPaths:(id)paths expectedClass:(Class)class
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [paths countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(paths);
        }

        v9 &= -[CoreRCInterfaceController addInterfaceListenerClass:](self, "addInterfaceListenerClass:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{*(*(&v13 + 1) + 8 * i)), "principalClass"}]);
      }

      v7 = [paths countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)startOnQueue:(id)queue
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0xAuLL, 0);
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_msgSend(*(*(&v24 + 1) + 8 * v9) stringByAppendingPathComponent:{@"CoreRC", "stringByAppendingPathComponent:", @"InterfacePlugins"}];
        -[CoreRCInterfaceController addBundlesFromPaths:expectedClass:](self, "addBundlesFromPaths:expectedClass:", [MEMORY[0x277CCA8D8] pathsForResourcesOfType:@"plugin" inDirectory:v10], objc_opt_class());
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CCA8D8] pathsForResourcesOfType:@"plugin" inDirectory:{objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "builtInPlugInsPath"), "stringByAppendingPathComponent:", @"InterfacePlugins"}];
  [(CoreRCInterfaceController *)self addBundlesFromPaths:v11 expectedClass:objc_opt_class()];
  [(CoreRCInterfaceController *)self addInterfaceListenerClass:objc_opt_class()];
  self->_queue = queue;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  interfaceListeners = self->_interfaceListeners;
  v13 = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(interfaceListeners);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __42__CoreRCInterfaceController_startOnQueue___block_invoke;
        v19[3] = &unk_278EA29D8;
        v19[4] = v17;
        v19[5] = queue;
        dispatch_async(queue, v19);
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)firstInterface
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  interfaceListeners = self->_interfaceListeners;
  result = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(interfaceListeners);
      }

      result = [*(*(&v8 + 1) + 8 * v6) firstInterface];
      if (result)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [(NSMutableArray *)interfaceListeners countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)interfaceListener:(id)listener didAddInterface:(id)interface
{
  [interface scheduleWithDispatchQueue:self->_queue];
  delegate = [(CoreRCInterfaceController *)self delegate];

  [(CoreRCInterfaceControllerDelegate *)delegate interfaceController:self didAddInterface:interface];
}

- (void)interfaceListener:(id)listener didRemoveInterface:(id)interface
{
  [(CoreRCInterfaceControllerDelegate *)[(CoreRCInterfaceController *)self delegate] interfaceController:self didRemoveInterface:interface];
  queue = self->_queue;

  [interface unscheduleFromDispatchQueue:queue];
}

@end