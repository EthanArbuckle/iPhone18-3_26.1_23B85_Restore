@interface IDSLocalPairingAddPairedDeviceInfo
- (IDSLocalPairingAddPairedDeviceInfo)initWithCBUUID:(id)d pairingProtocolVersion:(int64_t)version BTOutOfBandKey:(id)key;
- (IDSLocalPairingAddPairedDeviceInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLocalPairingAddPairedDeviceInfo

- (IDSLocalPairingAddPairedDeviceInfo)initWithCBUUID:(id)d pairingProtocolVersion:(int64_t)version BTOutOfBandKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingAddPairedDeviceInfo;
  v11 = [(IDSLocalPairingAddPairedDeviceInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cbuuid, d);
    v12->_pairingProtocolVersion = version;
    objc_storeStrong(&v12->_BTOutOfBandKey, key);
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
  cbuuid = [(IDSLocalPairingAddPairedDeviceInfo *)self cbuuid];
  pairingProtocolVersion = [(IDSLocalPairingAddPairedDeviceInfo *)self pairingProtocolVersion];
  bTOutOfBandKey = [(IDSLocalPairingAddPairedDeviceInfo *)self BTOutOfBandKey];
  v8 = [bTOutOfBandKey length];
  supportsIPsecWithSPPLink = [(IDSLocalPairingAddPairedDeviceInfo *)self supportsIPsecWithSPPLink];
  shouldPairDirectlyOverIPsec = [(IDSLocalPairingAddPairedDeviceInfo *)self shouldPairDirectlyOverIPsec];
  bluetoothMACAddress = [(IDSLocalPairingAddPairedDeviceInfo *)self bluetoothMACAddress];
  v12 = [v14 stringWithFormat:@"<%@: %p cbuuid: %@, pairingProtocolVersion: %ld, BTOutOfBandKey.length: %ld, supportsIPsecWithSPPLink: %ld, shouldPairDirectlyOverIPsec: %ld, bluetoothMACAddress.length: %ld, pairingType: %ld>", v4, self, cbuuid, pairingProtocolVersion, v8, supportsIPsecWithSPPLink, shouldPairDirectlyOverIPsec, objc_msgSend(bluetoothMACAddress, "length"), -[IDSLocalPairingAddPairedDeviceInfo pairingType](self, "pairingType")];

  return v12;
}

- (IDSLocalPairingAddPairedDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kcbuuid"];
  v6 = [coderCopy decodeIntegerForKey:@"kPairingProtocolVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBTOutOfBandKey"];
  v8 = [(IDSLocalPairingAddPairedDeviceInfo *)self initWithCBUUID:v5 pairingProtocolVersion:v6 BTOutOfBandKey:v7];
  -[IDSLocalPairingAddPairedDeviceInfo setSupportsIPsecWithSPPLink:](v8, "setSupportsIPsecWithSPPLink:", [coderCopy decodeBoolForKey:@"kSupportsIPsecWithSPPLink"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBluetoothMACAddress"];
  [(IDSLocalPairingAddPairedDeviceInfo *)v8 setBluetoothMACAddress:v9];

  -[IDSLocalPairingAddPairedDeviceInfo setShouldPairDirectlyOverIPsec:](v8, "setShouldPairDirectlyOverIPsec:", [coderCopy decodeBoolForKey:@"kShouldPairDirectlyOverIPsec"]);
  v10 = [coderCopy decodeIntegerForKey:@"kPairingType"];

  [(IDSLocalPairingAddPairedDeviceInfo *)v8 setPairingType:v10];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cbuuid = [(IDSLocalPairingAddPairedDeviceInfo *)self cbuuid];
  [coderCopy encodeObject:cbuuid forKey:@"kcbuuid"];

  [coderCopy encodeInteger:-[IDSLocalPairingAddPairedDeviceInfo pairingProtocolVersion](self forKey:{"pairingProtocolVersion"), @"kPairingProtocolVersion"}];
  bTOutOfBandKey = [(IDSLocalPairingAddPairedDeviceInfo *)self BTOutOfBandKey];
  [coderCopy encodeObject:bTOutOfBandKey forKey:@"kBTOutOfBandKey"];

  [coderCopy encodeBool:-[IDSLocalPairingAddPairedDeviceInfo supportsIPsecWithSPPLink](self forKey:{"supportsIPsecWithSPPLink"), @"kSupportsIPsecWithSPPLink"}];
  [coderCopy encodeBool:-[IDSLocalPairingAddPairedDeviceInfo shouldPairDirectlyOverIPsec](self forKey:{"shouldPairDirectlyOverIPsec"), @"kShouldPairDirectlyOverIPsec"}];
  bluetoothMACAddress = [(IDSLocalPairingAddPairedDeviceInfo *)self bluetoothMACAddress];
  [coderCopy encodeObject:bluetoothMACAddress forKey:@"kBluetoothMACAddress"];

  [coderCopy encodeInteger:-[IDSLocalPairingAddPairedDeviceInfo pairingType](self forKey:{"pairingType"), @"kPairingType"}];
}

@end