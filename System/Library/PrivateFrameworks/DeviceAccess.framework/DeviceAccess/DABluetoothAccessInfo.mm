@interface DABluetoothAccessInfo
- (DABluetoothAccessInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
@end

@implementation DABluetoothAccessInfo

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

  bluetoothDevices = self->_bluetoothDevices;
  if (bluetoothDevices)
  {
    v6 = bluetoothDevices;
    v17 = CUPrintNSObjectOneLine();
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  bluetoothScanCompanyIdentifiers = self->_bluetoothScanCompanyIdentifiers;
  if (bluetoothScanCompanyIdentifiers)
  {
    v9 = bluetoothScanCompanyIdentifiers;
    v18 = CUPrintNSObjectOneLine();
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  bluetoothScanServices = self->_bluetoothScanServices;
  if (bluetoothScanServices)
  {
    v12 = bluetoothScanServices;
    v19 = CUPrintNSObjectOneLine();
    CUAppendF();
    v13 = v4;

    v4 = v13;
  }

  v14 = &stru_285B4C350;
  if (v4)
  {
    v14 = v4;
  }

  v15 = v14;

  return v15;
}

- (DABluetoothAccessInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = DABluetoothAccessInfo;
  v7 = [(DABluetoothAccessInfo *)&v17 init];
  if (!v7)
  {
    if (error)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v11, v12, v13, v14, v15, v16, v10);
      *error = v8 = 0;
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_7;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

@end