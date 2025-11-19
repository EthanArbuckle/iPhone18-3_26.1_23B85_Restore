@interface CoreRCManager
+ (CoreRCManager)allocWithZone:(_NSZone *)a3;
- (CoreRCManager)initWithSerialQueue:(id)a3;
- (NSSet)buses;
- (id)managedBusEquivalentTo:(id)a3;
- (id)managedBusForDevice:(id)a3;
- (id)managedDeviceEquivalentTo:(id)a3;
- (void)addBus:(id)a3;
- (void)dealloc;
- (void)notifyDelegateAddBus:(id)a3;
- (void)notifyDelegateRemoveBus:(id)a3;
- (void)notifyDelegateUpdateBus:(id)a3;
- (void)removeBus:(id)a3;
@end

@implementation CoreRCManager

+ (CoreRCManager)allocWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return NSAllocateObject(v4, 0, a3);
}

- (CoreRCManager)initWithSerialQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CoreRCManager;
  v4 = [(CoreRCManager *)&v7 init];
  if (v4)
  {
    v5 = MEMORY[0x277D85CD0];
    if (a3)
    {
      v5 = a3;
    }

    v4->_serialQueue = v5;
    v4->_busesInternal = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_busesInternal removeAllObjects];

  v3.receiver = self;
  v3.super_class = CoreRCManager;
  [(CoreRCManager *)&v3 dealloc];
}

- (NSSet)buses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CoreRCManager *)self busesInternal];

  return [v2 setWithSet:v3];
}

- (id)managedBusEquivalentTo:(id)a3
{
  v4 = [(CoreRCManager *)self busesInternal];

  return [(NSMutableSet *)v4 member:a3];
}

- (id)managedBusForDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CoreRCManager *)self busesInternal];
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "uniqueID")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
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
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)managedDeviceEquivalentTo:(id)a3
{
  v4 = [(CoreRCManager *)self managedBusForDevice:?];

  return [v4 deviceOnBusEquivalentTo:a3];
}

- (void)addBus:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [(CoreRCManager *)a2 addBus:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = a3;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ addBus: %@", &v6, 0x16u);
  }

  [a3 setManager:self];
  [a3 willAddToManager:self];
  [(NSMutableSet *)[(CoreRCManager *)self busesInternal] addObject:a3];
  [(CoreRCManager *)self notifyDelegateAddBus:a3];
  [a3 didAddToManager:self];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateAddBus:(id)a3
{
  v5 = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [v5 manager:self hasAdded:a3];
  }
}

- (void)notifyDelegateRemoveBus:(id)a3
{
  v5 = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [v5 manager:self hasRemoved:a3];
  }
}

- (void)notifyDelegateUpdateBus:(id)a3
{
  v5 = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [v5 manager:self hasUpdated:a3];
  }
}

- (void)removeBus:(id)a3
{
  v4 = [(CoreRCManager *)self managedBusEquivalentTo:a3];
  if (v4)
  {
    v5 = v4;
    [v4 willRemoveFromManager:self];
    [(NSMutableSet *)[(CoreRCManager *)self busesInternal] removeObject:v5];
    [(CoreRCManager *)self notifyDelegateRemoveBus:v5];
    [v5 didRemoveFromManager:self];
    [v5 setManager:0];
    v4 = v5;
  }
}

@end