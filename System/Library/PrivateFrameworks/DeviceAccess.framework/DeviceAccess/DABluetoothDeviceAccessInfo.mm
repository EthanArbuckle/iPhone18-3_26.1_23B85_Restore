@interface DABluetoothDeviceAccessInfo
- (DABluetoothDeviceAccessInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DABluetoothDeviceAccessInfo

- (void)encodeWithXPCObject:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  identifier = self->_identifier;
  if (identifier)
  {
    [(NSUUID *)identifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "id", uuid);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)descriptionWithLevel:(int)a3
{
  CUAppendF();
  v4 = 0;
  v5 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    v18 = v4;
    v7 = identifier;
    v16 = CUPrintNSObjectOneLine();
    CUAppendF();
    v8 = v18;

    v5 = v8;
  }

  bluetoothServices = self->_bluetoothServices;
  if (bluetoothServices)
  {
    v10 = bluetoothServices;
    v17 = CUPrintNSObjectOneLine();
    CUAppendF();
    v11 = v5;

    v5 = v11;
  }

  CUAppendF();
  v12 = v5;

  v13 = &stru_285B4C350;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  return v14;
}

- (DABluetoothDeviceAccessInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = DABluetoothDeviceAccessInfo;
  v7 = [(DABluetoothDeviceAccessInfo *)&v17 init];
  if (!v7)
  {
    if (a4)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v11, v12, v13, v14, v15, v16, v10);
      *a4 = v8 = 0;
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_7;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

@end