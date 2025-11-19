@interface HDCodableDevice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableDevice

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableDevice;
  v4 = [(HDCodableDevice *)&v8 description];
  v5 = [(HDCodableDevice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  manufacturer = self->_manufacturer;
  if (manufacturer)
  {
    [v4 setObject:manufacturer forKey:@"manufacturer"];
  }

  model = self->_model;
  if (model)
  {
    [v4 setObject:model forKey:@"model"];
  }

  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion)
  {
    [v4 setObject:hardwareVersion forKey:@"hardwareVersion"];
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    [v4 setObject:firmwareVersion forKey:@"firmwareVersion"];
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion)
  {
    [v4 setObject:softwareVersion forKey:@"softwareVersion"];
  }

  localIdentifier = self->_localIdentifier;
  if (localIdentifier)
  {
    [v4 setObject:localIdentifier forKey:@"localIdentifier"];
  }

  fDAUDI = self->_fDAUDI;
  if (fDAUDI)
  {
    [v4 setObject:fDAUDI forKey:@"FDAUDI"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v14 forKey:@"creationDate"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v16 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"syncIdentity"];
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v4 setObject:bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_manufacturer)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hardwareVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_firmwareVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_softwareVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_localIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_fDAUDI)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_bluetoothIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_manufacturer)
  {
    [v5 setManufacturer:?];
    v4 = v5;
  }

  if (self->_model)
  {
    [v5 setModel:?];
    v4 = v5;
  }

  if (self->_hardwareVersion)
  {
    [v5 setHardwareVersion:?];
    v4 = v5;
  }

  if (self->_firmwareVersion)
  {
    [v5 setFirmwareVersion:?];
    v4 = v5;
  }

  if (self->_softwareVersion)
  {
    [v5 setSoftwareVersion:?];
    v4 = v5;
  }

  if (self->_localIdentifier)
  {
    [v5 setLocalIdentifier:?];
    v4 = v5;
  }

  if (self->_fDAUDI)
  {
    [v5 setFDAUDI:?];
    v4 = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_creationDate;
    *(v4 + 104) |= 1u;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    v4 = v5;
  }

  if (self->_bluetoothIdentifier)
  {
    [v5 setBluetoothIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_manufacturer copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_model copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_hardwareVersion copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_firmwareVersion copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSString *)self->_softwareVersion copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_localIdentifier copyWithZone:a3];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(NSString *)self->_fDAUDI copyWithZone:a3];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v22 = [(NSData *)self->_uuid copyWithZone:a3];
  v23 = *(v5 + 96);
  *(v5 + 96) = v22;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 104) |= 1u;
  }

  v24 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSString *)self->_bluetoothIdentifier copyWithZone:a3];
  v27 = *(v5 + 16);
  *(v5 + 16) = v26;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  name = self->_name;
  if (name | *(v4 + 9))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_29;
    }
  }

  manufacturer = self->_manufacturer;
  if (manufacturer | *(v4 + 7))
  {
    if (![(NSString *)manufacturer isEqual:?])
    {
      goto LABEL_29;
    }
  }

  model = self->_model;
  if (model | *(v4 + 8))
  {
    if (![(NSString *)model isEqual:?])
    {
      goto LABEL_29;
    }
  }

  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion | *(v4 + 5))
  {
    if (![(NSString *)hardwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion | *(v4 + 4))
  {
    if (![(NSString *)firmwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion | *(v4 + 10))
  {
    if (![(NSString *)softwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  localIdentifier = self->_localIdentifier;
  if (localIdentifier | *(v4 + 6))
  {
    if (![(NSString *)localIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  fDAUDI = self->_fDAUDI;
  if (fDAUDI | *(v4 + 3))
  {
    if (![(NSString *)fDAUDI isEqual:?])
    {
      goto LABEL_29;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 12))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v14 = *(v4 + 104);
  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_creationDate != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 104))
  {
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 11) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_29;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier | *(v4 + 2))
  {
    v17 = [(NSString *)bluetoothIdentifier isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_30:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_manufacturer hash];
  v5 = [(NSString *)self->_model hash];
  v6 = [(NSString *)self->_hardwareVersion hash];
  v7 = [(NSString *)self->_firmwareVersion hash];
  v8 = [(NSString *)self->_softwareVersion hash];
  v9 = [(NSString *)self->_localIdentifier hash];
  v10 = [(NSString *)self->_fDAUDI hash];
  v11 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v12.i64 = floor(creationDate + 0.5);
    v16 = (creationDate - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  return v18 ^ [(NSString *)self->_bluetoothIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 9))
  {
    [(HDCodableDevice *)self setName:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(HDCodableDevice *)self setManufacturer:?];
    v4 = v7;
  }

  if (*(v4 + 8))
  {
    [(HDCodableDevice *)self setModel:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(HDCodableDevice *)self setHardwareVersion:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(HDCodableDevice *)self setFirmwareVersion:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(HDCodableDevice *)self setSoftwareVersion:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(HDCodableDevice *)self setLocalIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(HDCodableDevice *)self setFDAUDI:?];
    v4 = v7;
  }

  if (*(v4 + 12))
  {
    [(HDCodableDevice *)self setUuid:?];
    v4 = v7;
  }

  if (v4[13])
  {
    self->_creationDate = v4[1];
    *&self->_has |= 1u;
  }

  syncIdentity = self->_syncIdentity;
  v6 = *(v4 + 11);
  if (syncIdentity)
  {
    if (!v6)
    {
      goto LABEL_27;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_27;
    }

    syncIdentity = [(HDCodableDevice *)self setSyncIdentity:?];
  }

  v4 = v7;
LABEL_27:
  if (*(v4 + 2))
  {
    syncIdentity = [(HDCodableDevice *)self setBluetoothIdentifier:?];
    v4 = v7;
  }

  MEMORY[0x2821F96F8](syncIdentity, v4);
}

@end