@interface DAEventDevicesPresent
- (DAEventDevicesPresent)initWithMigration:(BOOL)a3;
- (DAEventDevicesPresent)initWithPresent:(BOOL)a3;
- (DAEventDevicesPresent)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAEventDevicesPresent

- (DAEventDevicesPresent)initWithPresent:(BOOL)a3
{
  v4 = [(DAEvent *)self initWithEventType:50];
  v5 = v4;
  if (v4)
  {
    v4->_devicesPresent = a3;
    v6 = v4;
  }

  return v5;
}

- (DAEventDevicesPresent)initWithMigration:(BOOL)a3
{
  v4 = [(DAEvent *)self initWithEventType:15];
  v5 = v4;
  if (v4)
  {
    v4->_devicesMigrated = a3;
    v6 = v4;
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DAEventDevicesPresent;
  [(DAEvent *)&v6 encodeWithXPCObject:v4];
  if (self->_devicesPresent)
  {
    xpc_dictionary_set_BOOL(v4, "dvPr", 1);
  }

  if (self->_devicesMigrated)
  {
    xpc_dictionary_set_BOOL(v4, "dvMg", 1);
  }

  devices = self->_devices;
  CUXPCEncodeNSArrayOfObjects();
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
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

- (DAEventDevicesPresent)initWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, a3);
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