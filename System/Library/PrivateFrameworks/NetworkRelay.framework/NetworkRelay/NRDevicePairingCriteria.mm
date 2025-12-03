@interface NRDevicePairingCriteria
- (NRDevicePairingCriteria)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingCriteria

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"Type %zu Transport %u", -[NRDevicePairingCriteria deviceType](self, "deviceType"), -[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")];
  rssi = [(NRDevicePairingCriteria *)self rssi];

  if (rssi)
  {
    rssi2 = [(NRDevicePairingCriteria *)self rssi];
    [v3 appendFormat:@" RSSI %@", rssi2];
  }

  migrationPairing = [(NRDevicePairingCriteria *)self migrationPairing];
  v7 = "NO";
  if (migrationPairing)
  {
    v7 = "YES";
  }

  [v3 appendFormat:@" migrationPairing %s", v7];
  if ([(NRDevicePairingCriteria *)self migrationPairing])
  {
    nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];

    if (nrDeviceIdentifiers)
    {
      nrDeviceIdentifiers2 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
      [v3 appendFormat:@" nrDeviceIdentifiers %@", nrDeviceIdentifiers2];
    }
  }

  if ([(NRDevicePairingCriteria *)self psm])
  {
    [v3 appendFormat:@" psm %u", -[NRDevicePairingCriteria psm](self, "psm")];
  }

  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];

  if (serviceUUID)
  {
    serviceUUID2 = [(NRDevicePairingCriteria *)self serviceUUID];
    [v3 appendFormat:@" service %@", serviceUUID2];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDevicePairingCriteria deviceType](self forKey:{"deviceType"), @"deviceType"}];
  [coderCopy encodeInt32:-[NRDevicePairingCriteria pairingTransport](self forKey:{"pairingTransport"), @"pairingTransport"}];
  rssi = [(NRDevicePairingCriteria *)self rssi];
  [coderCopy encodeObject:rssi forKey:@"rssi"];

  [coderCopy encodeBool:-[NRDevicePairingCriteria migrationPairing](self forKey:{"migrationPairing"), @"migrationPairing"}];
  nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  [coderCopy encodeObject:nrDeviceIdentifiers forKey:@"nrDeviceIdentifiers"];

  [coderCopy encodeInt32:-[NRDevicePairingCriteria psm](self forKey:{"psm"), @"psm"}];
  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];
  [coderCopy encodeObject:serviceUUID forKey:@"serviceUUID"];

  [coderCopy encodeInt64:-[NRDevicePairingCriteria bluetoothRole](self forKey:{"bluetoothRole"), @"bluetoothRole"}];
}

- (NRDevicePairingCriteria)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = NRDevicePairingCriteria;
  v5 = [(NRDevicePairingCriteria *)&v26 init];
  if (!v5)
  {
    v12 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
        goto LABEL_7;
      }
    }

    v15 = nrCopyLogObj_1529();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v16, v17, v18, v19, v20, "");

LABEL_7:
    v21 = _os_log_pack_size();
    MEMORY[0x28223BE20](v21, v22);
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "[NRDevicePairingCriteria initWithCoder:]";
    v25 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v25);
  }

  v6 = v5;
  -[NRDevicePairingCriteria setDeviceType:](v5, "setDeviceType:", [coderCopy decodeInt64ForKey:@"deviceType"]);
  -[NRDevicePairingCriteria setPairingTransport:](v6, "setPairingTransport:", [coderCopy decodeInt32ForKey:@"pairingTransport"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
  [(NRDevicePairingCriteria *)v6 setRssi:v7];

  -[NRDevicePairingCriteria setMigrationPairing:](v6, "setMigrationPairing:", [coderCopy decodeBoolForKey:@"migrationPairing"]);
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nrDeviceIdentifiers"];
  [(NRDevicePairingCriteria *)v6 setNrDeviceIdentifiers:v8];

  -[NRDevicePairingCriteria setPsm:](v6, "setPsm:", [coderCopy decodeInt32ForKey:@"psm"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceUUID"];
  [(NRDevicePairingCriteria *)v6 setServiceUUID:v9];

  -[NRDevicePairingCriteria setBluetoothRole:](v6, "setBluetoothRole:", [coderCopy decodeInt64ForKey:@"bluetoothRole"]);
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDeviceType:{-[NRDevicePairingCriteria deviceType](self, "deviceType")}];
  [v4 setPairingTransport:{-[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")}];
  rssi = [(NRDevicePairingCriteria *)self rssi];
  [v4 setRssi:rssi];

  [v4 setMigrationPairing:{-[NRDevicePairingCriteria migrationPairing](self, "migrationPairing")}];
  nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  v7 = [nrDeviceIdentifiers copy];
  [v4 setNrDeviceIdentifiers:v7];

  [v4 setPsm:{-[NRDevicePairingCriteria psm](self, "psm")}];
  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];
  v9 = [serviceUUID copy];
  [v4 setServiceUUID:v9];

  [v4 setBluetoothRole:{-[NRDevicePairingCriteria bluetoothRole](self, "bluetoothRole")}];
  return v4;
}

@end