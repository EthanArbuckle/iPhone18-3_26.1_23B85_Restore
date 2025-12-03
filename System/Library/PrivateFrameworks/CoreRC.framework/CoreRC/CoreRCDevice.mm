@interface CoreRCDevice
- (BOOL)isEqual:(id)equal;
- (BOOL)sendCommand:(unint64_t)command target:(id)target withDuration:(unint64_t)duration error:(id *)error;
- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error;
- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error;
- (CoreRCDevice)initWithBus:(id)bus local:(BOOL)local;
- (CoreRCDevice)initWithCoder:(id)coder;
- (CoreRCDevice)initWithDevice:(id)device;
- (id)bus;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)extendedPropertyForKey:(id)key error:(id *)error;
- (unint64_t)addOwningClient:(id)client;
- (unint64_t)removeAllOwningClients;
- (unint64_t)removeOwningClient:(id)client;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)mergePropertiesFromDevice:(id)device;
- (void)receivedHIDEvent:(id)event fromDevice:(id)device;
@end

@implementation CoreRCDevice

- (CoreRCDevice)initWithDevice:(id)device
{
  if (device)
  {
    v8.receiver = self;
    v8.super_class = CoreRCDevice;
    v4 = [(CoreRCDevice *)&v8 init];
    v5 = v4;
    if (v4)
    {
      v6 = [(CoreRCDevice *)v4 zone];
      v5->_busUniqueID = [objc_msgSend(device "busUniqueID")];
      v5->_uniqueID = [objc_msgSend(device "uniqueID")];
      v5->_isLocalDevice = [device isLocalDevice];
      v5->_owningClients = 0;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreRCDevice)initWithBus:(id)bus local:(BOOL)local
{
  v8.receiver = self;
  v8.super_class = CoreRCDevice;
  v6 = [(CoreRCDevice *)&v8 init];
  if (v6)
  {
    v6->_busUniqueID = [objc_msgSend(bus "uniqueID")];
    v6->_uniqueID = objc_opt_new();
    v6->_isLocalDevice = local;
    v6->_owningClients = objc_opt_new();
  }

  return v6;
}

- (CoreRCDevice)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CoreRCDevice;
  v4 = [(CoreRCDevice *)&v6 init];
  if (v4)
  {
    v4->_uniqueID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    v4->_busUniqueID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"busUniqueID"];
    v4->_isLocalDevice = [coder decodeBoolForKey:@"isLocalDevice"];
    v4->_owningClients = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_uniqueID forKey:@"uniqueID"];
  [coder encodeObject:self->_busUniqueID forKey:@"busUniqueID"];
  isLocalDevice = self->_isLocalDevice;

  [coder encodeBool:isLocalDevice forKey:@"isLocalDevice"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithDevice:self];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CoreRCDevice;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCDevice description](&v8, sel_description)}];
  [v3 appendFormat:@" ID: %@;", -[NSUUID UUIDString](-[CoreRCDevice uniqueID](self, "uniqueID"), "UUIDString")];
  [v3 appendFormat:@" Bus: %@;", -[NSUUID UUIDString](-[CoreRCDevice busUniqueID](self, "busUniqueID"), "UUIDString")];
  isLocalDevice = [(CoreRCDevice *)self isLocalDevice];
  v5 = "N";
  if (isLocalDevice)
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

- (id)bus
{
  manager = [(CoreRCDevice *)self manager];

  return [manager managedBusForDevice:self];
}

- (BOOL)sendHIDEvent:(id)event target:(id)target error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];

  return [manager sendHIDEvent:event fromDevice:self toDevice:target error:error];
}

- (BOOL)sendCommand:(unint64_t)command target:(id)target withDuration:(unint64_t)duration error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];

  return [manager sendCommand:command fromDevice:self toDevice:target withDuration:duration error:error];
}

- (void)receivedHIDEvent:(id)event fromDevice:(id)device
{
  delegate = [(CoreRCDevice *)self delegate];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCDevice receivedHIDEvent:fromDevice:];
  }

  if ([event isRepeat] && gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreRCDevice receivedHIDEvent:fromDevice:];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate device:self receivedHIDEvent:event fromDevice:device];
  }
}

- (BOOL)setExtendedProperty:(id)property forKey:(id)key error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];

  return [manager setExtendedProperty:property forKey:key ofDevice:self error:error];
}

- (id)extendedPropertyForKey:(id)key error:(id *)error
{
  manager = [(CoreRCDevice *)self manager];

  return [manager extendedPropertyForKey:key ofDevice:self error:error];
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

- (unint64_t)removeOwningClient:(id)client
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    selfCopy = self;
    owningClients = self->_owningClients;
    clientCopy = client;
    LogPrintF();
  }

  [(NSMutableSet *)self->_owningClients removeObject:client, clientCopy, selfCopy, owningClients];
  [objc_msgSend(client "userInfo")];
  v5 = self->_owningClients;

  return [(NSMutableSet *)v5 count];
}

- (unint64_t)addOwningClient:(id)client
{
  if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    selfCopy = self;
    owningClients = self->_owningClients;
    clientCopy = client;
    LogPrintF();
  }

  [(NSMutableSet *)self->_owningClients addObject:client, clientCopy, selfCopy, owningClients];
  [objc_msgSend(client "userInfo")];
  v5 = self->_owningClients;

  return [(NSMutableSet *)v5 count];
}

- (void)mergePropertiesFromDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(CoreRCDevice *)self isEqual:?])
  {
    if (-[NSUUID isEqual:](-[CoreRCDevice busUniqueID](self, "busUniqueID"), "isEqual:", [device busUniqueID]))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      mergeProperties = [(CoreRCDevice *)self mergeProperties];
      v6 = [mergeProperties countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(mergeProperties);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = [device valueForKey:{v11, v14, selfCopy}];
            if (([-[CoreRCDevice valueForKey:](self valueForKey:{v11), "isEqual:", v12}] & 1) == 0)
            {
              [(CoreRCDevice *)self setValue:v12 forKey:v11];
              if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
              {
                v14 = v11;
                selfCopy = self;
                LogPrintF();
              }

              v8 = 1;
            }
          }

          v7 = [mergeProperties countByEnumeratingWithState:&v16 objects:v20 count:16];
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