@interface IDSLocalPairingAddPairedDeviceInfo
- (IDSLocalPairingAddPairedDeviceInfo)initWithCBUUID:(id)a3 pairingProtocolVersion:(int64_t)a4 BTOutOfBandKey:(id)a5;
- (IDSLocalPairingAddPairedDeviceInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSLocalPairingAddPairedDeviceInfo

- (IDSLocalPairingAddPairedDeviceInfo)initWithCBUUID:(id)a3 pairingProtocolVersion:(int64_t)a4 BTOutOfBandKey:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingAddPairedDeviceInfo;
  v11 = [(IDSLocalPairingAddPairedDeviceInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cbuuid, a3);
    v12->_pairingProtocolVersion = a4;
    objc_storeStrong(&v12->_BTOutOfBandKey, a5);
    v12->_supportsIPsecWithSPPLink = 0;
    bluetoothMACAddress = v12->_bluetoothMACAddress;
    v12->_bluetoothMACAddress = 0;

    v12->_shouldPairDirectlyOverIPsec = 0;
    v12->_pairingType = 0;
  }

  return v12;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IDSLocalPairingAddPairedDeviceInfo *)self cbuuid];
  v6 = [(IDSLocalPairingAddPairedDeviceInfo *)self pairingProtocolVersion];
  v7 = [(IDSLocalPairingAddPairedDeviceInfo *)self BTOutOfBandKey];
  v8 = [v7 length];
  v9 = [(IDSLocalPairingAddPairedDeviceInfo *)self supportsIPsecWithSPPLink];
  v10 = [(IDSLocalPairingAddPairedDeviceInfo *)self shouldPairDirectlyOverIPsec];
  v11 = [(IDSLocalPairingAddPairedDeviceInfo *)self bluetoothMACAddress];
  v12 = [v14 stringWithFormat:@"<%@: %p cbuuid: %@, pairingProtocolVersion: %ld, BTOutOfBandKey.length: %ld, supportsIPsecWithSPPLink: %ld, shouldPairDirectlyOverIPsec: %ld, bluetoothMACAddress.length: %ld, pairingType: %ld>", v4, self, v5, v6, v8, v9, v10, objc_msgSend(v11, "length"), -[IDSLocalPairingAddPairedDeviceInfo pairingType](self, "pairingType")];

  return v12;
}

- (IDSLocalPairingAddPairedDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kcbuuid"];
  v6 = [v4 decodeIntegerForKey:@"kPairingProtocolVersion"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBTOutOfBandKey"];
  v8 = [(IDSLocalPairingAddPairedDeviceInfo *)self initWithCBUUID:v5 pairingProtocolVersion:v6 BTOutOfBandKey:v7];
  -[IDSLocalPairingAddPairedDeviceInfo setSupportsIPsecWithSPPLink:](v8, "setSupportsIPsecWithSPPLink:", [v4 decodeBoolForKey:@"kSupportsIPsecWithSPPLink"]);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBluetoothMACAddress"];
  [(IDSLocalPairingAddPairedDeviceInfo *)v8 setBluetoothMACAddress:v9];

  -[IDSLocalPairingAddPairedDeviceInfo setShouldPairDirectlyOverIPsec:](v8, "setShouldPairDirectlyOverIPsec:", [v4 decodeBoolForKey:@"kShouldPairDirectlyOverIPsec"]);
  v10 = [v4 decodeIntegerForKey:@"kPairingType"];

  [(IDSLocalPairingAddPairedDeviceInfo *)v8 setPairingType:v10];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(IDSLocalPairingAddPairedDeviceInfo *)self cbuuid];
  [v7 encodeObject:v4 forKey:@"kcbuuid"];

  [v7 encodeInteger:-[IDSLocalPairingAddPairedDeviceInfo pairingProtocolVersion](self forKey:{"pairingProtocolVersion"), @"kPairingProtocolVersion"}];
  v5 = [(IDSLocalPairingAddPairedDeviceInfo *)self BTOutOfBandKey];
  [v7 encodeObject:v5 forKey:@"kBTOutOfBandKey"];

  [v7 encodeBool:-[IDSLocalPairingAddPairedDeviceInfo supportsIPsecWithSPPLink](self forKey:{"supportsIPsecWithSPPLink"), @"kSupportsIPsecWithSPPLink"}];
  [v7 encodeBool:-[IDSLocalPairingAddPairedDeviceInfo shouldPairDirectlyOverIPsec](self forKey:{"shouldPairDirectlyOverIPsec"), @"kShouldPairDirectlyOverIPsec"}];
  v6 = [(IDSLocalPairingAddPairedDeviceInfo *)self bluetoothMACAddress];
  [v7 encodeObject:v6 forKey:@"kBluetoothMACAddress"];

  [v7 encodeInteger:-[IDSLocalPairingAddPairedDeviceInfo pairingType](self forKey:{"pairingType"), @"kPairingType"}];
}

@end