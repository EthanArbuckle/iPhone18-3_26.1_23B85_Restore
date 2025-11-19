@interface CoreRCBus
- (BOOL)isEqual:(id)a3;
- (BOOL)setAllowHibernation:(BOOL)a3 error:(id *)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (CoreRCBus)init;
- (CoreRCBus)initWithBus:(id)a3;
- (CoreRCBus)initWithCoder:(id)a3;
- (NSSet)devices;
- (OS_dispatch_queue)serialQueue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceOnBusEquivalentTo:(id)a3;
- (id)mergeDevice:(id)a3;
- (id)propertyForKey:(id)a3 error:(id *)a4;
- (uint64_t)serialQueue;
- (void)addDevice:(id)a3;
- (void)dealloc;
- (void)didRemoveFromManager:(id)a3;
- (void)didUpdateProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergePropertiesFromBus:(id)a3;
- (void)notifyDelegateAllDevicesRemoved:(id)a3;
- (void)notifyDelegateDeviceAdded:(id)a3;
- (void)notifyDelegateDeviceRemoved:(id)a3;
- (void)notifyDelegateDeviceUpdated:(id)a3;
- (void)removeAllExternalDevices;
- (void)removeDevice:(id)a3;
- (void)replaceDevice:(id)a3 withDevice:(id)a4;
- (void)setManager:(id)a3;
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

- (CoreRCBus)initWithBus:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v18.receiver = self;
    v18.super_class = CoreRCBus;
    v4 = [(CoreRCBus *)&v18 init];
    v5 = v4;
    if (v4)
    {
      v6 = [(CoreRCBus *)v4 zone];
      v5->_devicesInternal = [objc_msgSend(MEMORY[0x277CBEB58] allocWithZone:{v6), "init"}];
      v5->_uniqueID = [objc_msgSend(a3 "uniqueID")];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [a3 devices];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
              objc_enumerationMutation(v7);
            }

            [(CoreRCBus *)v5 addDevice:*(*(&v14 + 1) + 8 * v11++)];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (CoreRCBus)initWithCoder:(id)a3
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
    v7 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0, 0), @"devices"}];
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

    v4->_uniqueID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_uniqueID forKey:@"uniqueID"];
  v5 = [(CoreRCBus *)self devicesInternal];

  [a3 encodeObject:v5 forKey:@"devices"];
}

- (void)dealloc
{
  [(CoreRCBus *)self _allowSleep];

  v3.receiver = self;
  v3.super_class = CoreRCBus;
  [(CoreRCBus *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  uniqueID = self->_uniqueID;
  v6 = [a3 uniqueID];

  return [(NSUUID *)uniqueID isEqual:v6];
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCBus *)self manager];

  return [v9 setProperty:a3 forKey:a4 ofBus:self error:a5];
}

- (id)propertyForKey:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCBus *)self manager];

  return [v7 propertyForKey:a3 ofBus:self error:a4];
}

- (void)setManager:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_manager = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CoreRCBus *)self devices];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setManager:a3];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:(id)a3
{
  [a3 willAddToBus:self];
  [(CoreRCBus *)self willAddDevice:a3];
  [a3 setManager:{-[CoreRCBus manager](self, "manager")}];
  [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] addObject:a3];
  [(CoreRCBus *)self notifyDelegateDeviceAdded:a3];
  [(CoreRCBus *)self didAddDevice:a3];
  [a3 didAddToBus:self];

  [a3 readyToSend];
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

- (void)didRemoveFromManager:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CoreRCBus *)self devices:a3];
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

- (void)didUpdateProperties:(id)a3
{
  v4 = [(CoreRCBus *)self manager];

  [v4 notifyDelegateUpdateBus:self];
}

- (id)mergeDevice:(id)a3
{
  v5 = [(CoreRCBus *)self deviceOnBusEquivalentTo:?];
  if (v5)
  {
    v6 = v5;
    [v5 mergePropertiesFromDevice:a3];
    return v6;
  }

  else
  {
    [(CoreRCBus *)self addDevice:a3];

    return [(CoreRCBus *)self deviceOnBusEquivalentTo:a3];
  }
}

- (NSSet)devices
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CoreRCBus *)self devicesInternal];

  return [v2 setWithSet:v3];
}

- (id)deviceOnBusEquivalentTo:(id)a3
{
  v4 = [(CoreRCBus *)self devicesInternal];

  return [(NSMutableSet *)v4 member:a3];
}

- (void)notifyDelegateDeviceAdded:(id)a3
{
  v5 = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceAdded:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 bus:self deviceHasBeenAdded:a3];
  }
}

- (void)notifyDelegateDeviceRemoved:(id)a3
{
  v5 = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceRemoved:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 bus:self deviceHasBeenRemoved:a3];
  }
}

- (void)notifyDelegateAllDevicesRemoved:(id)a3
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
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(CoreRCBus *)self notifyDelegateDeviceRemoved:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateDeviceUpdated:(id)a3
{
  v5 = [(CoreRCBus *)self delegate];
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    [CoreRCBus notifyDelegateDeviceUpdated:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v5 bus:self deviceHasBeenUpdated:a3];
  }
}

- (BOOL)setAllowHibernation:(BOOL)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = [(CoreRCBus *)self _allowSleep];
  }

  else
  {
    v5 = [(CoreRCBus *)self _preventSleep];
  }

  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA4A8] code:v5 userInfo:0];
  }

  return v6 == 0;
}

- (void)removeDevice:(id)a3
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:a3];
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

- (void)replaceDevice:(id)a3 withDevice:(id)a4
{
  v6 = [(CoreRCBus *)self deviceOnBusEquivalentTo:a3];
  if (v6)
  {
    [a4 setManager:{-[CoreRCBus manager](self, "manager")}];
    [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] removeObject:v6];
    [(NSMutableSet *)[(CoreRCBus *)self devicesInternal] addObject:a4];
    [(CoreRCBus *)self notifyDelegateDeviceUpdated:a4];
    [a4 readyToSend];
  }

  v7 = v6;
}

- (void)mergePropertiesFromBus:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (v5 && [(CoreRCBus *)self isEqual:a3])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [(CoreRCBus *)self mergeProperties];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [a3 valueForKey:{v11, v19, v20}];
          if (([-[CoreRCBus valueForKey:](self valueForKey:{v11), "isEqual:", v12}] & 1) == 0)
          {
            [(CoreRCBus *)self setValue:v12 forKey:v11];
            [v5 addObject:v11];
            if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
            {
              v19 = v11;
              v20 = self;
              LogPrintF();
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [a3 devices];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v13);
          }

          [(CoreRCBus *)self mergeDevice:*(*(&v21 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  v2 = [MEMORY[0x277CCA890] currentHandler];

  return [v2 handleFailureInMethod:v1 object:v0 file:@"CoreRCBus.m" lineNumber:173 description:@"manager queue must not be nil!"];
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