@interface CoreRCDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)sendCommand:(unint64_t)a3 target:(id)a4 withDuration:(unint64_t)a5 error:(id *)a6;
- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5;
- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (CoreRCDevice)initWithBus:(id)a3 local:(BOOL)a4;
- (CoreRCDevice)initWithCoder:(id)a3;
- (CoreRCDevice)initWithDevice:(id)a3;
- (id)bus;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)extendedPropertyForKey:(id)a3 error:(id *)a4;
- (unint64_t)addOwningClient:(id)a3;
- (unint64_t)removeAllOwningClients;
- (unint64_t)removeOwningClient:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)mergePropertiesFromDevice:(id)a3;
- (void)receivedHIDEvent:(id)a3 fromDevice:(id)a4;
@end

@implementation CoreRCDevice

- (CoreRCDevice)initWithDevice:(id)a3
{
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = CoreRCDevice;
    v4 = [(CoreRCDevice *)&v8 init];
    v5 = v4;
    if (v4)
    {
      v6 = [(CoreRCDevice *)v4 zone];
      v5->_busUniqueID = [objc_msgSend(a3 "busUniqueID")];
      v5->_uniqueID = [objc_msgSend(a3 "uniqueID")];
      v5->_isLocalDevice = [a3 isLocalDevice];
      v5->_owningClients = 0;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreRCDevice)initWithBus:(id)a3 local:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = CoreRCDevice;
  v6 = [(CoreRCDevice *)&v8 init];
  if (v6)
  {
    v6->_busUniqueID = [objc_msgSend(a3 "uniqueID")];
    v6->_uniqueID = objc_opt_new();
    v6->_isLocalDevice = a4;
    v6->_owningClients = objc_opt_new();
  }

  return v6;
}

- (CoreRCDevice)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CoreRCDevice;
  v4 = [(CoreRCDevice *)&v6 init];
  if (v4)
  {
    v4->_uniqueID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    v4->_busUniqueID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"busUniqueID"];
    v4->_isLocalDevice = [a3 decodeBoolForKey:@"isLocalDevice"];
    v4->_owningClients = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [a3 encodeObject:self->_busUniqueID forKey:@"busUniqueID"];
  isLocalDevice = self->_isLocalDevice;

  [a3 encodeBool:isLocalDevice forKey:@"isLocalDevice"];
}

- (void)dealloc
{
  owningClients = self->_owningClients;
  if (owningClients)
  {
  }

  v4.receiver = self;
  v4.super_class = CoreRCDevice;
  [(CoreRCDevice *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithDevice:self];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CoreRCDevice;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCDevice description](&v8, sel_description)}];
  [v3 appendFormat:@" ID: %@;", -[NSUUID UUIDString](-[CoreRCDevice uniqueID](self, "uniqueID"), "UUIDString")];
  [v3 appendFormat:@" Bus: %@;", -[NSUUID UUIDString](-[CoreRCDevice busUniqueID](self, "busUniqueID"), "UUIDString")];
  v4 = [(CoreRCDevice *)self isLocalDevice];
  v5 = "N";
  if (v4)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@" Local: %s;", v5];
  owningClients = self->_owningClients;
  if (owningClients)
  {
    owningClients = [(NSMutableSet *)owningClients count];
  }

  [v3 appendFormat:@" Owners: %lu;", owningClients];
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

- (id)bus
{
  v3 = [(CoreRCDevice *)self manager];

  return [v3 managedBusForDevice:self];
}

- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];

  return [v9 sendHIDEvent:a3 fromDevice:self toDevice:a4 error:a5];
}

- (BOOL)sendCommand:(unint64_t)a3 target:(id)a4 withDuration:(unint64_t)a5 error:(id *)a6
{
  v11 = [(CoreRCDevice *)self manager];

  return [v11 sendCommand:a3 fromDevice:self toDevice:a4 withDuration:a5 error:a6];
}

- (void)receivedHIDEvent:(id)a3 fromDevice:(id)a4
{
  v7 = [(CoreRCDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCDevice receivedHIDEvent:fromDevice:];
  }

  if ([a3 isRepeat] && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCDevice receivedHIDEvent:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [v7 device:self receivedHIDEvent:a3 fromDevice:a4];
  }
}

- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v9 = [(CoreRCDevice *)self manager];

  return [v9 setExtendedProperty:a3 forKey:a4 ofDevice:self error:a5];
}

- (id)extendedPropertyForKey:(id)a3 error:(id *)a4
{
  v7 = [(CoreRCDevice *)self manager];

  return [v7 extendedPropertyForKey:a3 ofDevice:self error:a4];
}

- (unint64_t)removeAllOwningClients
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [(CoreRCDevice *)self removeAllOwningClients];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  owningClients = self->_owningClients;
  v4 = [(NSMutableSet *)owningClients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(owningClients);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * i) "userInfo")];
      }

      v5 = [(NSMutableSet *)owningClients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_owningClients removeAllObjects];
  result = [(NSMutableSet *)self->_owningClients count];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)removeOwningClient:(id)a3
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = self;
    owningClients = self->_owningClients;
    v7 = a3;
    LogPrintF();
  }

  [(NSMutableSet *)self->_owningClients removeObject:a3, v7, v8, owningClients];
  [objc_msgSend(a3 "userInfo")];
  v5 = self->_owningClients;

  return [(NSMutableSet *)v5 count];
}

- (unint64_t)addOwningClient:(id)a3
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v8 = self;
    owningClients = self->_owningClients;
    v7 = a3;
    LogPrintF();
  }

  [(NSMutableSet *)self->_owningClients addObject:a3, v7, v8, owningClients];
  [objc_msgSend(a3 "userInfo")];
  v5 = self->_owningClients;

  return [(NSMutableSet *)v5 count];
}

- (void)mergePropertiesFromDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(CoreRCDevice *)self isEqual:?])
  {
    if (-[NSUUID isEqual:](-[CoreRCDevice busUniqueID](self, "busUniqueID"), "isEqual:", [a3 busUniqueID]))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [(CoreRCDevice *)self mergeProperties];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [a3 valueForKey:{v11, v14, v15}];
            if (([-[CoreRCDevice valueForKey:](self valueForKey:{v11), "isEqual:", v12}] & 1) == 0)
            {
              [(CoreRCDevice *)self setValue:v12 forKey:v11];
              if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
              {
                v14 = v11;
                v15 = self;
                LogPrintF();
              }

              v8 = 1;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
        if (v8)
        {
          [-[CoreRCDevice bus](self "bus")];
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)receivedHIDEvent:fromDevice:.cold.1()
{
  objc_opt_class();
  objc_opt_class();
  return LogPrintF();
}

@end