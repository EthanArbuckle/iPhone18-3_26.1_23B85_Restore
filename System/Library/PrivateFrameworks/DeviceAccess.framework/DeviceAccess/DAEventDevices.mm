@interface DAEventDevices
- (DAEventDevices)initWithCoder:(id)coder;
- (DAEventDevices)initWithEventType:(int64_t)type devices:(id)devices;
- (DAEventDevices)initWithEventType:(int64_t)type devices:(id)devices error:(id)error;
- (DAEventDevices)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEventDevices

- (DAEventDevices)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DAEventDevices;
  coderCopy = coder;
  v4 = [(DAEvent *)&v7 initWithCoder:coderCopy];
  if (v4)
  {
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();

    v5 = v4;
  }

  else
  {
    [DAEventDevice initWithCoder:coderCopy];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DAEventDevices;
  [(DAEvent *)&v6 encodeWithCoder:coderCopy];
  devices = self->_devices;
  if (devices)
  {
    [coderCopy encodeObject:devices forKey:@"devi"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  v6.receiver = self;
  v6.super_class = DAEventDevices;
  objectCopy = object;
  [(DAEvent *)&v6 encodeWithXPCObject:objectCopy];
  devices = self->_devices;
  CUXPCEncodeNSArrayOfObjects();
}

- (DAEventDevices)initWithEventType:(int64_t)type devices:(id)devices
{
  devicesCopy = devices;
  v8 = [(DAEvent *)self initWithEventType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_devices, devices);
    v10 = v9;
  }

  return v9;
}

- (DAEventDevices)initWithEventType:(int64_t)type devices:(id)devices error:(id)error
{
  devicesCopy = devices;
  v14.receiver = self;
  v14.super_class = DAEventDevices;
  v10 = [(DAEvent *)&v14 initWithEventType:type error:error];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_devices, devices);
    v12 = v11;
  }

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 12;
  }

  v16 = v5;
  v15.receiver = self;
  v15.super_class = DAEventDevices;
  v6 = [(DAEvent *)&v15 descriptionWithLevel:?];
  v7 = [v6 mutableCopy];

  if ((level & 0x8000000) == 0)
  {
    objc_opt_class();
    CUAppendF();
    v8 = v7;

    v7 = v8;
  }

  devices = self->_devices;
  if (devices)
  {
    v14 = devices;
    CUAppendF();
    v10 = v7;

    v7 = v10;
  }

  v11 = &stru_285B4C350;
  if (v7)
  {
    v11 = v7;
  }

  v12 = v11;

  return v12;
}

- (DAEventDevices)initWithXPCObject:(id)object error:(id *)error
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v15.receiver = v4;
  v15.super_class = DAEventDevices;
  v12 = OUTLINED_FUNCTION_1_1(v5, sel_initWithXPCObject_error_, v6, v7, v8, v9, v10, v11, v15);
  if (v12 && (objc_opt_class(), OUTLINED_FUNCTION_0_1(), CUXPCDecodeNSArrayOfClass()))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end