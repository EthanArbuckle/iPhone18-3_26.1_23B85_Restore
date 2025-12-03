@interface CARInputDevice
- (CARInputDevice)initWithServiceClient:(__IOHIDServiceClient *)client UUID:(id)d;
- (void)_setSenderID:(unint64_t)d;
- (void)_setUUID:(id)d;
@end

@implementation CARInputDevice

- (CARInputDevice)initWithServiceClient:(__IOHIDServiceClient *)client UUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CARInputDevice;
  v7 = [(CARInputDevice *)&v12 init];
  if (v7)
  {
    v8 = IOHIDServiceClientGetRegistryID(client);
    v7->_senderID = [v8 unsignedLongValue];
    v9 = [dCopy copy];
    UUID = v7->_UUID;
    v7->_UUID = v9;
  }

  return v7;
}

- (void)_setUUID:(id)d
{
  dCopy = d;
  uUID = [(CARInputDevice *)self UUID];
  v5 = [uUID isEqualToString:dCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [dCopy copy];
    UUID = self->_UUID;
    self->_UUID = v6;
  }
}

- (void)_setSenderID:(unint64_t)d
{
  if ([(CARInputDevice *)self senderID]!= d)
  {
    self->_senderID = d;
  }
}

@end