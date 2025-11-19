@interface DAEventDeviceWiFiAwarePairingRequest
- (DAEventDeviceWiFiAwarePairingRequest)initWithEventType:(int64_t)a3 pairingInfo:(id)a4;
- (DAEventDeviceWiFiAwarePairingRequest)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAEventDeviceWiFiAwarePairingRequest

- (DAEventDeviceWiFiAwarePairingRequest)initWithEventType:(int64_t)a3 pairingInfo:(id)a4
{
  v6 = a4;
  v7 = [(DAEvent *)self initWithEventType:56];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pairingInfo, a4);
    v9 = v8;
  }

  return v8;
}

- (void)encodeWithXPCObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = DAEventDeviceWiFiAwarePairingRequest;
  v4 = a3;
  [(DAEvent *)&v6 encodeWithXPCObject:v4];
  pairingInfo = self->_pairingInfo;
  CUXPCEncodeObject();
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

  pairingInfo = self->_pairingInfo;
  CUAppendF();
  v5 = v4;

  v6 = &stru_285B4C350;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (DAEventDeviceWiFiAwarePairingRequest)initWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, a3);
  v15.receiver = v4;
  v15.super_class = DAEventDeviceWiFiAwarePairingRequest;
  v12 = OUTLINED_FUNCTION_1_1(v5, sel_initWithXPCObject_error_, v6, v7, v8, v9, v10, v11, v15);
  if (v12 && (objc_opt_class(), OUTLINED_FUNCTION_0_1(), CUXPCDecodeObject()))
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