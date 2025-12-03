@interface DAEventDevicesPresent
- (DAEventDevicesPresent)initWithMigration:(BOOL)migration;
- (DAEventDevicesPresent)initWithPresent:(BOOL)present;
- (DAEventDevicesPresent)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEventDevicesPresent

- (DAEventDevicesPresent)initWithPresent:(BOOL)present
{
  v4 = [(DAEvent *)self initWithEventType:50];
  v5 = v4;
  if (v4)
  {
    v4->_devicesPresent = present;
    v6 = v4;
  }

  return v5;
}

- (DAEventDevicesPresent)initWithMigration:(BOOL)migration
{
  v4 = [(DAEvent *)self initWithEventType:15];
  v5 = v4;
  if (v4)
  {
    v4->_devicesMigrated = migration;
    v6 = v4;
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v6.receiver = self;
  v6.super_class = DAEventDevicesPresent;
  [(DAEvent *)&v6 encodeWithXPCObject:objectCopy];
  if (self->_devicesPresent)
  {
    xpc_dictionary_set_BOOL(objectCopy, "dvPr", 1);
  }

  if (self->_devicesMigrated)
  {
    xpc_dictionary_set_BOOL(objectCopy, "dvMg", 1);
  }

  devices = self->_devices;
  CUXPCEncodeNSArrayOfObjects();
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  self->_devicesPresent;
  CUAppendF();
  v5 = v4;

  self->_devicesMigrated;
  CUAppendF();
  v6 = v5;

  devices = self->_devices;
  if (devices)
  {
    v12 = devices;
    CUAppendF();
    v8 = v6;

    v6 = v8;
  }

  v9 = &stru_285B4C350;
  if (v6)
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (DAEventDevicesPresent)initWithXPCObject:(id)object error:(id *)error
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v15.receiver = v4;
  v15.super_class = DAEventDevicesPresent;
  v12 = OUTLINED_FUNCTION_1_1(v5, sel_initWithXPCObject_error_, v6, v7, v8, v9, v10, v11, v15);
  if (v12 && CUXPCDecodeBool() && CUXPCDecodeBool())
  {
    objc_opt_class();
    OUTLINED_FUNCTION_0_1();
    CUXPCDecodeNSArrayOfClass();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end