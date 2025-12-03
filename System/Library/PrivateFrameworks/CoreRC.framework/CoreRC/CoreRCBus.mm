@interface CoreRCBus
- (BOOL)isEqual:(id)equal;
- (BOOL)setAllowHibernation:(BOOL)hibernation error:(id *)error;
- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error;
- (CoreRCBus)init;
- (CoreRCBus)initWithBus:(id)bus;
- (CoreRCBus)initWithCoder:(id)coder;
- (NSSet)devices;
- (OS_dispatch_queue)serialQueue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceOnBusEquivalentTo:(id)to;
- (id)mergeDevice:(id)device;
- (id)propertyForKey:(id)key error:(id *)error;
- (uint64_t)serialQueue;
- (void)addDevice:(id)device;
- (void)dealloc;
- (void)didRemoveFromManager:(id)manager;
- (void)didUpdateProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)mergePropertiesFromBus:(id)bus;
- (void)notifyDelegateAllDevicesRemoved:(id)removed;
- (void)notifyDelegateDeviceAdded:(id)added;
- (void)notifyDelegateDeviceRemoved:(id)removed;
- (void)notifyDelegateDeviceUpdated:(id)updated;
- (void)removeAllExternalDevices;
- (void)removeDevice:(id)device;
- (void)replaceDevice:(id)device withDevice:(id)withDevice;
- (void)setManager:(id)manager;
@end

@implementation CoreRCBus

- (CoreRCBus)init
{
  v4.receiver = self;
  v4.super_class = CoreRCBus;
  v2 = [(CoreRCBus *)&v4 init];
  if (v2)
  {
    v2->_devicesInternal = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_uniqueID = objc_alloc_init(MEMORY[0x277CCAD78]);
    v2->_assertionID = 0;
  }

  return v2;
}

- (CoreRCBus)initWithBus:(id)bus
{
  v20 = *MEMORY[0x277D85DE8];
  if (bus)
  {
    v18.receiver = self;
    v18.super_class = CoreRCBus;
    v4 = [(CoreRCBus *)&v18 init];
    v5 = v4;
    if (v4)
    {
      v6 = [(CoreRCBus *)v4 zone];
      v5->_devicesInternal = [objc_msgSend(MEMORY[0x277CBEB58] allocWithZone:{v6), "init"}];
      v5->_uniqueID = [objc_msgSend(bus "uniqueID")];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      devices = [bus devices];
      v8 = [devices countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(devices);
            }

            [(CoreRCBus *)v5 addDevice:*(*(&v14 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [devices countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {

    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (CoreRCBus)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = CoreRCBus;
  v4 = [(CoreRCBus *)&v19 init];
  if (v4)
  {
    v4->_devicesInternal = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0, 0), @"devices"}];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableSet *)v4->_devicesInternal addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v4->_uniqueID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uniqueID forKey:@"uniqueID"];
  devicesInternal = [(CoreRCBus *)self devicesInternal];

  [coder encodeObject:devicesInternal forKey:@"devices"];
}

- (void)dealloc
{
  [(CoreRCBus *)self _allowSleep];

  v3.receiver = self;
  v3.super_class = CoreRCBus;
  [(CoreRCBus *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithBus:self];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = CoreRCBus;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCBus description](&v5, sel_description)}];
  [v3 appendFormat:@" ID: %@;", -[NSUUID UUIDString](-[CoreRCBus uniqueID](self, "uniqueID"), "UUIDString")];
  [v3 appendFormat:@" Devices: %lu;", -[NSSet count](-[CoreRCBus devices](self, "devices"), "count")];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  uniqueID = self->_uniqueID;
  uniqueID = [equal uniqueID];

  return [(NSUUID *)uniqueID isEqual:uniqueID];
}

- (OS_dispatch_queue)serialQueue
{
  v2 = [-[CoreRCBus manager](self "manager")];
  if (!v2)
  {
    [CoreRCBus serialQueue];
  }

  return v2;
}

- (BOOL)setProperty:(id)property forKey:(id)key error:(id *)error
{
  manager = [(CoreRCBus *)self manager];

  return [manager setProperty:property forKey:key ofBus:self error:error];
}

- (id)propertyForKey:(id)key error:(id *)error
{
  manager = [(CoreRCBus *)self manager];

  return [manager propertyForKey:key ofBus:self error:error];
}

- (void)setManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  self->_manager = manager;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(devices);
        }

        [*(*(&v10 + 1) + 8 * v8++) setManager:manager];
      }

      while (v6 != v8);
      v6 = [(NSSet *)devices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:(id)device
{
  [device willAddToBus:self];
  [(CoreRCBus *)self willAddDevice:device];
  [device setManager:{-[CoreRCBus manager](self, "manager")}];
  [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] addObject:device];
  [(CoreRCBus *)self notifyDelegateDeviceAdded:device];
  [(CoreRCBus *)self didAddDevice:device];
  [device didAddToBus:self];

  [device readyToSend];
}

- (void)removeAllExternalDevices
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  devicesInternal = self->_devicesInternal;
  v6 = [(NSMutableSet *)devicesInternal countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(devicesInternal);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 isLocalDevice])
        {
          v11 = v3;
        }

        else
        {
          v11 = v4;
        }

        [(NSMutableSet *)v11 addObject:v10];
      }

      v7 = [(NSMutableSet *)devicesInternal countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v27 + 1) + 8 * j);
        [v16 willRemoveFromBus:self];
        [(CoreRCBus *)self willRemoveDevice:v16];
      }

      v13 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v13);
  }

  self->_devicesInternal = v3;
  [(CoreRCBus *)self notifyDelegateAllDevicesRemoved:v4];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v4);
        }

        v21 = *(*(&v23 + 1) + 8 * k);
        [v21 setManager:0];
        [(CoreRCBus *)self didRemoveDevice:v21];
        [v21 didRemoveFromBus:self];
      }

      v18 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveFromManager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CoreRCBus *)self devices:manager];
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeAllOwningClients];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateProperties:(id)properties
{
  manager = [(CoreRCBus *)self manager];

  [manager notifyDelegateUpdateBus:self];
}

- (id)mergeDevice:(id)device
{
  v5 = [(CoreRCBus *)self deviceOnBusEquivalentTo:?];
  if (v5)
  {
    v6 = v5;
    [v5 mergePropertiesFromDevice:device];
    return v6;
  }

  else
  {
    [(CoreRCBus *)self addDevice:device];

    return [(CoreRCBus *)self deviceOnBusEquivalentTo:device];
  }
}

- (NSSet)devices
{
  v2 = MEMORY[0x277CBEB98];
  devicesInternal = [(CoreRCBus *)self devicesInternal];

  return [v2 setWithSet:devicesInternal];
}

- (id)deviceOnBusEquivalentTo:(id)to
{
  devicesInternal = [(CoreRCBus *)self devicesInternal];

  return [(NSMutableSet *)devicesInternal member:to];
}

- (void)notifyDelegateDeviceAdded:(id)added
{
  delegate = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceAdded:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate bus:self deviceHasBeenAdded:added];
  }
}

- (void)notifyDelegateDeviceRemoved:(id)removed
{
  delegate = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceRemoved:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate bus:self deviceHasBeenRemoved:removed];
  }
}

- (void)notifyDelegateAllDevicesRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateAllDevicesRemoved:];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [removed countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(removed);
        }

        [(CoreRCBus *)self notifyDelegateDeviceRemoved:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [removed countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateDeviceUpdated:(id)updated
{
  delegate = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceUpdated:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate bus:self deviceHasBeenUpdated:updated];
  }
}

- (BOOL)setAllowHibernation:(BOOL)hibernation error:(id *)error
{
  if (hibernation)
  {
    _allowSleep = [(CoreRCBus *)self _allowSleep];
  }

  else
  {
    _allowSleep = [(CoreRCBus *)self _preventSleep];
  }

  v6 = _allowSleep;
  if (error && _allowSleep)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA4A8] code:_allowSleep userInfo:0];
  }

  return v6 == 0;
}

- (void)removeDevice:(id)device
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:device];
  if (v4)
  {
    v5 = v4;
    [v4 willRemoveFromBus:self];
    [(CoreRCBus *)self willRemoveDevice:v5];
    [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] removeObject:v5];
    [(CoreRCBus *)self notifyDelegateDeviceRemoved:v5];
    [v5 setManager:0];
    [(CoreRCBus *)self didRemoveDevice:v5];
    [v5 didRemoveFromBus:self];
    v4 = v5;
  }
}

- (void)replaceDevice:(id)device withDevice:(id)withDevice
{
  v6 = [(CoreRCBus *)self deviceOnBusEquivalentTo:device];
  if (v6)
  {
    [withDevice setManager:{-[CoreRCBus manager](self, "manager")}];
    [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] removeObject:v6];
    [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] addObject:withDevice];
    [(CoreRCBus *)self notifyDelegateDeviceUpdated:withDevice];
    [withDevice readyToSend];
  }

  v7 = v6;
}

- (void)mergePropertiesFromBus:(id)bus
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (v5 && [(CoreRCBus *)self isEqual:bus])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    mergeProperties = [(CoreRCBus *)self mergeProperties];
    v7 = [mergeProperties countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(mergeProperties);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [bus valueForKey:{v11, v19, selfCopy}];
          if (([-[CoreRCBus valueForKey:](self valueForKey:{v11), "isEqual:", v12}] & 1) == 0)
          {
            [(CoreRCBus *)self setValue:v12 forKey:v11];
            [v5 addObject:v11];
            if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
            {
              v19 = v11;
              selfCopy = self;
              LogPrintF();
            }
          }
        }

        v8 = [mergeProperties countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    devices = [bus devices];
    v14 = [devices countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(devices);
          }

          [(CoreRCBus *)self mergeDevice:*(*(&v21 + 1) + 8 * j)];
        }

        v15 = [devices countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    if ([v5 count])
    {
      [(CoreRCBus *)self didUpdateProperties:v5];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (uint64_t)serialQueue
{
  OUTLINED_FUNCTION_1_4();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return [currentHandler handleFailureInMethod:v1 object:v0 file:@"CoreRCBus.m" lineNumber:173 description:@"manager queue must not be nil!"];
}

- (uint64_t)notifyDelegateDeviceAdded:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)notifyDelegateDeviceRemoved:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

- (uint64_t)notifyDelegateDeviceUpdated:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

@end