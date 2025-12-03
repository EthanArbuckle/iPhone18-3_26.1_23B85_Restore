@interface IDSLocalPairingPairedDeviceRecord
- (IDSLocalPairingPairedDeviceRecord)initWithCBUUID:(id)d publicIdentityDataClassA:(id)a classC:(id)c classD:(id)classD;
- (IDSLocalPairingPairedDeviceRecord)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLocalPairingPairedDeviceRecord

- (IDSLocalPairingPairedDeviceRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCBUUID"];
  cbuuid = self->_cbuuid;
  self->_cbuuid = v5;

  v9.receiver = self;
  v9.super_class = IDSLocalPairingPairedDeviceRecord;
  v7 = [(IDSLocalPairingRecord *)&v9 initWithCoder:coderCopy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cbuuid = [(IDSLocalPairingPairedDeviceRecord *)self cbuuid];
  [coderCopy encodeObject:cbuuid forKey:@"kCBUUID"];

  v6.receiver = self;
  v6.super_class = IDSLocalPairingPairedDeviceRecord;
  [(IDSLocalPairingRecord *)&v6 encodeWithCoder:coderCopy];
}

- (IDSLocalPairingPairedDeviceRecord)initWithCBUUID:(id)d publicIdentityDataClassA:(id)a classC:(id)c classD:(id)classD
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingPairedDeviceRecord;
  v12 = [(IDSLocalPairingRecord *)&v15 initWithIdentityDataClassA:a classC:c classD:classD];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cbuuid, d);
  }

  return v13;
}

- (id)description
{
  v17 = 0;
  v3 = [(IDSLocalPairingPairedDeviceRecord *)self publicIdentityClassA:&v17];
  v4 = v17;
  v16 = 0;
  v5 = [(IDSLocalPairingPairedDeviceRecord *)self publicIdentityClassC:&v16];
  v6 = v16;
  v15 = 0;
  v7 = [(IDSLocalPairingPairedDeviceRecord *)self publicIdentityClassD:&v15];
  v8 = v15;
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  cbuuid = [(IDSLocalPairingPairedDeviceRecord *)self cbuuid];
  v13 = [v9 stringWithFormat:@"<%@: %p cbuuid: %@ classA: %@, errorClassA: %@, classC: %@, errorClassC: %@, classD: %@, errorClassD: %@>", v11, self, cbuuid, v3, v4, v5, v6, v7, v8];

  return v13;
}

@end