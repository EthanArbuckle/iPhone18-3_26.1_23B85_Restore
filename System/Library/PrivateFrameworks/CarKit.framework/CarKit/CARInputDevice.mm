@interface CARInputDevice
- (CARInputDevice)initWithServiceClient:(__IOHIDServiceClient *)a3 UUID:(id)a4;
- (void)_setSenderID:(unint64_t)a3;
- (void)_setUUID:(id)a3;
@end

@implementation CARInputDevice

- (CARInputDevice)initWithServiceClient:(__IOHIDServiceClient *)a3 UUID:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CARInputDevice;
  v7 = [(CARInputDevice *)&v12 init];
  if (v7)
  {
    v8 = IOHIDServiceClientGetRegistryID(a3);
    v7->_senderID = [v8 unsignedLongValue];
    v9 = [v6 copy];
    UUID = v7->_UUID;
    v7->_UUID = v9;
  }

  return v7;
}

- (void)_setUUID:(id)a3
{
  v8 = a3;
  v4 = [(CARInputDevice *)self UUID];
  v5 = [v4 isEqualToString:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 copy];
    UUID = self->_UUID;
    self->_UUID = v6;
  }
}

- (void)_setSenderID:(unint64_t)a3
{
  if ([(CARInputDevice *)self senderID]!= a3)
  {
    self->_senderID = a3;
  }
}

@end