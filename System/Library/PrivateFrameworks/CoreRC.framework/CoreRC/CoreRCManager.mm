@interface CoreRCManager
+ (CoreRCManager)allocWithZone:(_NSZone *)zone;
- (CoreRCManager)initWithSerialQueue:(id)queue;
- (NSSet)buses;
- (id)managedBusEquivalentTo:(id)to;
- (id)managedBusForDevice:(id)device;
- (id)managedDeviceEquivalentTo:(id)to;
- (void)addBus:(id)bus;
- (void)dealloc;
- (void)notifyDelegateAddBus:(id)bus;
- (void)notifyDelegateRemoveBus:(id)bus;
- (void)notifyDelegateUpdateBus:(id)bus;
- (void)removeBus:(id)bus;
@end

@implementation CoreRCManager

+ (CoreRCManager)allocWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return NSAllocateObject(v4, 0, zone);
}

- (CoreRCManager)initWithSerialQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = CoreRCManager;
  v4 = [(CoreRCManager *)&v7 init];
  if (v4)
  {
    queueCopy = MEMORY[0x277D85CD0];
    if (queue)
    {
      queueCopy = queue;
    }

    v4->_serialQueue = queueCopy;
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
  busesInternal = [(CoreRCManager *)self busesInternal];

  return [v2 setWithSet:busesInternal];
}

- (id)managedBusEquivalentTo:(id)to
{
  busesInternal = [(CoreRCManager *)self busesInternal];

  return [(NSMutableSet *)busesInternal member:to];
}

- (id)managedBusForDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  busesInternal = [(CoreRCManager *)self busesInternal];
  v5 = [(NSMutableSet *)busesInternal countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(busesInternal);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "uniqueID")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableSet *)busesInternal countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)managedDeviceEquivalentTo:(id)to
{
  v4 = [(CoreRCManager *)self managedBusForDevice:?];

  return [v4 deviceOnBusEquivalentTo:to];
}

- (void)addBus:(id)bus
{
  v10 = *MEMORY[0x277D85DE8];
  if (!bus)
  {
    [(CoreRCManager *)a2 addBus:?];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    busCopy = bus;
    _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CoreRC] manager: %@ addBus: %@", &v6, 0x16u);
  }

  [bus setManager:self];
  [bus willAddToManager:self];
  [(NSMutableSet *)[(CoreRCManager *)self busesInternal] addObject:bus];
  [(CoreRCManager *)self notifyDelegateAddBus:bus];
  [bus didAddToManager:self];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateAddBus:(id)bus
{
  delegate = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [delegate manager:self hasAdded:bus];
  }
}

- (void)notifyDelegateRemoveBus:(id)bus
{
  delegate = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [delegate manager:self hasRemoved:bus];
  }
}

- (void)notifyDelegateUpdateBus:(id)bus
{
  delegate = [(CoreRCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [delegate manager:self hasUpdated:bus];
  }
}

- (void)removeBus:(id)bus
{
  v4 = [(CoreRCManager *)self managedBusEquivalentTo:bus];
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