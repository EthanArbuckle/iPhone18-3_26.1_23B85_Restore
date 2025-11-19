@interface DAEventDevices
- (DAEventDevices)initWithCoder:(id)a3;
- (DAEventDevices)initWithEventType:(int64_t)a3 devices:(id)a4;
- (DAEventDevices)initWithEventType:(int64_t)a3 devices:(id)a4 error:(id)a5;
- (DAEventDevices)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAEventDevices

- (DAEventDevices)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DAEventDevices;
  v3 = a3;
  v4 = [(DAEvent *)&v7 initWithCoder:v3];
  if (v4)
  {
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();

    v5 = v4;
  }

  else
  {
    [DAEventDevice initWithCoder:v3];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DAEventDevices;
  [(DAEvent *)&v6 encodeWithCoder:v4];
  devices = self->_devices;
  if (devices)
  {
    [v4 encodeObject:devices forKey:@"devi"];
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = DAEventDevices;
  v4 = a3;
  [(DAEvent *)&v6 encodeWithXPCObject:v4];
  devices = self->_devices;
  CUXPCEncodeNSArrayOfObjects();
}

- (DAEventDevices)initWithEventType:(int64_t)a3 devices:(id)a4
{
  v7 = a4;
  v8 = [(DAEvent *)self initWithEventType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_devices, a4);
    v10 = v9;
  }

  return v9;
}

- (DAEventDevices)initWithEventType:(int64_t)a3 devices:(id)a4 error:(id)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = DAEventDevices;
  v10 = [(DAEvent *)&v14 initWithEventType:a3 error:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_devices, a4);
    v12 = v11;
  }

  return v11;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
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

  if ((a3 & 0x8000000) == 0)
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

- (DAEventDevices)initWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, a3);
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