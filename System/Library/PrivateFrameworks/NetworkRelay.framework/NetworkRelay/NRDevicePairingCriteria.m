@interface NRDevicePairingCriteria
- (NRDevicePairingCriteria)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDevicePairingCriteria

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"Type %zu Transport %u", -[NRDevicePairingCriteria deviceType](self, "deviceType"), -[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")];
  v4 = [(NRDevicePairingCriteria *)self rssi];

  if (v4)
  {
    v5 = [(NRDevicePairingCriteria *)self rssi];
    [v3 appendFormat:@" RSSI %@", v5];
  }

  v6 = [(NRDevicePairingCriteria *)self migrationPairing];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  [v3 appendFormat:@" migrationPairing %s", v7];
  if ([(NRDevicePairingCriteria *)self migrationPairing])
  {
    v8 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];

    if (v8)
    {
      v9 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
      [v3 appendFormat:@" nrDeviceIdentifiers %@", v9];
    }
  }

  if ([(NRDevicePairingCriteria *)self psm])
  {
    [v3 appendFormat:@" psm %u", -[NRDevicePairingCriteria psm](self, "psm")];
  }

  v10 = [(NRDevicePairingCriteria *)self serviceUUID];

  if (v10)
  {
    v11 = [(NRDevicePairingCriteria *)self serviceUUID];
    [v3 appendFormat:@" service %@", v11];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInt64:-[NRDevicePairingCriteria deviceType](self forKey:{"deviceType"), @"deviceType"}];
  [v7 encodeInt32:-[NRDevicePairingCriteria pairingTransport](self forKey:{"pairingTransport"), @"pairingTransport"}];
  v4 = [(NRDevicePairingCriteria *)self rssi];
  [v7 encodeObject:v4 forKey:@"rssi"];

  [v7 encodeBool:-[NRDevicePairingCriteria migrationPairing](self forKey:{"migrationPairing"), @"migrationPairing"}];
  v5 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  [v7 encodeObject:v5 forKey:@"nrDeviceIdentifiers"];

  [v7 encodeInt32:-[NRDevicePairingCriteria psm](self forKey:{"psm"), @"psm"}];
  v6 = [(NRDevicePairingCriteria *)self serviceUUID];
  [v7 encodeObject:v6 forKey:@"serviceUUID"];

  [v7 encodeInt64:-[NRDevicePairingCriteria bluetoothRole](self forKey:{"bluetoothRole"), @"bluetoothRole"}];
}

- (NRDevicePairingCriteria)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  -[NRDevicePairingCriteria setDeviceType:](v5, "setDeviceType:", [v4 decodeInt64ForKey:@"deviceType"]);
  -[NRDevicePairingCriteria setPairingTransport:](v6, "setPairingTransport:", [v4 decodeInt32ForKey:@"pairingTransport"]);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
  [(NRDevicePairingCriteria *)v6 setRssi:v7];

  -[NRDevicePairingCriteria setMigrationPairing:](v6, "setMigrationPairing:", [v4 decodeBoolForKey:@"migrationPairing"]);
  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nrDeviceIdentifiers"];
  [(NRDevicePairingCriteria *)v6 setNrDeviceIdentifiers:v8];

  -[NRDevicePairingCriteria setPsm:](v6, "setPsm:", [v4 decodeInt32ForKey:@"psm"]);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceUUID"];
  [(NRDevicePairingCriteria *)v6 setServiceUUID:v9];

  -[NRDevicePairingCriteria setBluetoothRole:](v6, "setBluetoothRole:", [v4 decodeInt64ForKey:@"bluetoothRole"]);
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDeviceType:{-[NRDevicePairingCriteria deviceType](self, "deviceType")}];
  [v4 setPairingTransport:{-[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")}];
  v5 = [(NRDevicePairingCriteria *)self rssi];
  [v4 setRssi:v5];

  [v4 setMigrationPairing:{-[NRDevicePairingCriteria migrationPairing](self, "migrationPairing")}];
  v6 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  v7 = [v6 copy];
  [v4 setNrDeviceIdentifiers:v7];

  [v4 setPsm:{-[NRDevicePairingCriteria psm](self, "psm")}];
  v8 = [(NRDevicePairingCriteria *)self serviceUUID];
  v9 = [v8 copy];
  [v4 setServiceUUID:v9];

  [v4 setBluetoothRole:{-[NRDevicePairingCriteria bluetoothRole](self, "bluetoothRole")}];
  return v4;
}

@end