@interface MSPSharedTripVirtualContact
- (MSPSharedTripVirtualContact)initWithVirtualReceiverHandle:(id)a3;
- (id)_deviceHandleForVersion:(unint64_t)a3;
- (id)displayName;
@end

@implementation MSPSharedTripVirtualContact

- (MSPSharedTripVirtualContact)initWithVirtualReceiverHandle:(id)a3
{
  v5 = a3;
  v6 = [(MSPSharedTripVirtualContact *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_virtualReceiverHandle, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceHandlesByVersion = v7->_deviceHandlesByVersion;
    v7->_deviceHandlesByVersion = v8;
  }

  return v7;
}

- (id)displayName
{
  virtualReceiverName = self->_virtualReceiverName;
  if (!virtualReceiverName)
  {
    v4 = MSPSharedTripVirtualReceiverHandleGetName(self->_virtualReceiverHandle);
    v5 = self->_virtualReceiverName;
    self->_virtualReceiverName = v4;

    virtualReceiverName = self->_virtualReceiverName;
  }

  return virtualReceiverName;
}

- (id)_deviceHandleForVersion:(unint64_t)a3
{
  deviceHandlesByVersion = self->_deviceHandlesByVersion;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)deviceHandlesByVersion objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = MSPSharedTripVirturalReceiverDeviceHandleMake(self->_virtualReceiverHandle, a3);
    v8 = self->_deviceHandlesByVersion;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

@end