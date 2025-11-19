@interface DABluetoothPairingInfo
- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)a3 pairedCTKD:(BOOL)a4 appConfirmsAuth:(BOOL)a5 pairingRequired:(BOOL)a6;
- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)a3 pairingType:(int64_t)a4;
- (DABluetoothPairingInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DABluetoothPairingInfo

- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)a3 pairingType:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = DABluetoothPairingInfo;
  v8 = [(DABluetoothPairingInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_accept = 0;
    objc_storeStrong(&v8->_bluetoothIdentifier, a3);
    passkey = v9->_passkey;
    v9->_pairingType = a4;
    v9->_passkey = 0;

    v11 = v9;
  }

  return v9;
}

- (DABluetoothPairingInfo)initWithBluetoothIdentifier:(id)a3 pairedCTKD:(BOOL)a4 appConfirmsAuth:(BOOL)a5 pairingRequired:(BOOL)a6
{
  v11 = a3;
  v17.receiver = self;
  v17.super_class = DABluetoothPairingInfo;
  v12 = [(DABluetoothPairingInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_accept = 0;
    objc_storeStrong(&v12->_bluetoothIdentifier, a3);
    passkey = v13->_passkey;
    v13->_pairingType = 0;
    v13->_passkey = 0;

    v13->_pairedWithCTKD = a4;
    v13->_appConfirmsAuth = a5;
    v13->_pairingRequired = a6;
    v15 = v13;
  }

  return v13;
}

- (void)encodeWithXPCObject:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_accept)
  {
    xpc_dictionary_set_BOOL(v4, "btPA", 1);
  }

  v6 = [(NSNumber *)self->_passkey intValue];
  if (v6)
  {
    xpc_dictionary_set_int64(v5, "btPk", v6);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(v5, "btPT", pairingType);
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    v9 = v5;
    [(NSUUID *)bluetoothIdentifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v9, "devi", uuid);
  }

  if (self->_pairedWithCTKD)
  {
    xpc_dictionary_set_BOOL(v5, "btPC", 1);
  }

  v10 = *MEMORY[0x277D85DE8];
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

  bluetoothIdentifier = self->_bluetoothIdentifier;
  CUAppendF();
  v5 = v4;

  self->_pairingType;
  CUAppendF();
  v6 = v5;

  passkey = self->_passkey;
  CUAppendF();
  v7 = v6;

  self->_accept;
  CUAppendF();
  v8 = v7;

  self->_pairedWithCTKD;
  CUAppendF();
  v9 = v8;

  v10 = &stru_285B4C350;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (DABluetoothPairingInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!self || !CUXPCDecodeBool() || CUXPCDecodeSInt64RangedEx() == 5)
  {
    goto LABEL_11;
  }

  v6 = CUXPCDecodeSInt64RangedEx();
  if (v6 == 6)
  {
    self->_pairingType = 0;
  }

  else if (v6 == 5)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_10;
  }

  if (!CUXPCDecodeNSUUID() || !CUXPCDecodeBool())
  {
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
  passkey = self->_passkey;
  self->_passkey = v7;

  v9 = self;
LABEL_10:

  return v9;
}

@end