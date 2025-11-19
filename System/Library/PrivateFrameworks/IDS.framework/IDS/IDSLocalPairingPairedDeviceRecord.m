@interface IDSLocalPairingPairedDeviceRecord
- (IDSLocalPairingPairedDeviceRecord)initWithCBUUID:(id)a3 publicIdentityDataClassA:(id)a4 classC:(id)a5 classD:(id)a6;
- (IDSLocalPairingPairedDeviceRecord)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSLocalPairingPairedDeviceRecord

- (IDSLocalPairingPairedDeviceRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCBUUID"];
  cbuuid = self->_cbuuid;
  self->_cbuuid = v5;

  v9.receiver = self;
  v9.super_class = IDSLocalPairingPairedDeviceRecord;
  v7 = [(IDSLocalPairingRecord *)&v9 initWithCoder:v4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSLocalPairingPairedDeviceRecord *)self cbuuid];
  [v4 encodeObject:v5 forKey:@"kCBUUID"];

  v6.receiver = self;
  v6.super_class = IDSLocalPairingPairedDeviceRecord;
  [(IDSLocalPairingRecord *)&v6 encodeWithCoder:v4];
}

- (IDSLocalPairingPairedDeviceRecord)initWithCBUUID:(id)a3 publicIdentityDataClassA:(id)a4 classC:(id)a5 classD:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingPairedDeviceRecord;
  v12 = [(IDSLocalPairingRecord *)&v15 initWithIdentityDataClassA:a4 classC:a5 classD:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cbuuid, a3);
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
  v12 = [(IDSLocalPairingPairedDeviceRecord *)self cbuuid];
  v13 = [v9 stringWithFormat:@"<%@: %p cbuuid: %@ classA: %@, errorClassA: %@, classC: %@, errorClassC: %@, classD: %@, errorClassD: %@>", v11, self, v12, v3, v4, v5, v6, v7, v8];

  return v13;
}

@end