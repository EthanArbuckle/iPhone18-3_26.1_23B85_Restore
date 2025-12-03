@interface HDCodableDevice
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableDevice

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableDevice;
  v4 = [(HDCodableDevice *)&v8 description];
  dictionaryRepresentation = [(HDCodableDevice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
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
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier)
  {
    [v4 setObject:bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_manufacturer)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hardwareVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_firmwareVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_softwareVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_localIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_fDAUDI)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_bluetoothIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_manufacturer)
  {
    [v5 setManufacturer:?];
    toCopy = v5;
  }

  if (self->_model)
  {
    [v5 setModel:?];
    toCopy = v5;
  }

  if (self->_hardwareVersion)
  {
    [v5 setHardwareVersion:?];
    toCopy = v5;
  }

  if (self->_firmwareVersion)
  {
    [v5 setFirmwareVersion:?];
    toCopy = v5;
  }

  if (self->_softwareVersion)
  {
    [v5 setSoftwareVersion:?];
    toCopy = v5;
  }

  if (self->_localIdentifier)
  {
    [v5 setLocalIdentifier:?];
    toCopy = v5;
  }

  if (self->_fDAUDI)
  {
    [v5 setFDAUDI:?];
    toCopy = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_creationDate;
    *(toCopy + 104) |= 1u;
  }

  if (self->_syncIdentity)
  {
    [v5 setSyncIdentity:?];
    toCopy = v5;
  }

  if (self->_bluetoothIdentifier)
  {
    [v5 setBluetoothIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_manufacturer copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_model copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_hardwareVersion copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_firmwareVersion copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSString *)self->_softwareVersion copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_localIdentifier copyWithZone:zone];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(NSString *)self->_fDAUDI copyWithZone:zone];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v22 = [(NSData *)self->_uuid copyWithZone:zone];
  v23 = *(v5 + 96);
  *(v5 + 96) = v22;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 104) |= 1u;
  }

  v24 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSString *)self->_bluetoothIdentifier copyWithZone:zone];
  v27 = *(v5 + 16);
  *(v5 + 16) = v26;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  name = self->_name;
  if (name | *(equalCopy + 9))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_29;
    }
  }

  manufacturer = self->_manufacturer;
  if (manufacturer | *(equalCopy + 7))
  {
    if (![(NSString *)manufacturer isEqual:?])
    {
      goto LABEL_29;
    }
  }

  model = self->_model;
  if (model | *(equalCopy + 8))
  {
    if (![(NSString *)model isEqual:?])
    {
      goto LABEL_29;
    }
  }

  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion | *(equalCopy + 5))
  {
    if (![(NSString *)hardwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion | *(equalCopy + 4))
  {
    if (![(NSString *)firmwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion | *(equalCopy + 10))
  {
    if (![(NSString *)softwareVersion isEqual:?])
    {
      goto LABEL_29;
    }
  }

  localIdentifier = self->_localIdentifier;
  if (localIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)localIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  fDAUDI = self->_fDAUDI;
  if (fDAUDI | *(equalCopy + 3))
  {
    if (![(NSString *)fDAUDI isEqual:?])
    {
      goto LABEL_29;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 12))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v14 = *(equalCopy + 104);
  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_creationDate != *(equalCopy + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 104))
  {
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 11) && ![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
  {
    goto LABEL_29;
  }

  bluetoothIdentifier = self->_bluetoothIdentifier;
  if (bluetoothIdentifier | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(HDCodableDevice *)self setName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableDevice *)self setManufacturer:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 8))
  {
    [(HDCodableDevice *)self setModel:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(HDCodableDevice *)self setHardwareVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(HDCodableDevice *)self setFirmwareVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 10))
  {
    [(HDCodableDevice *)self setSoftwareVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(HDCodableDevice *)self setLocalIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 3))
  {
    [(HDCodableDevice *)self setFDAUDI:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(HDCodableDevice *)self setUuid:?];
    fromCopy = v7;
  }

  if (fromCopy[13])
  {
    self->_creationDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  syncIdentity = self->_syncIdentity;
  v6 = *(fromCopy + 11);
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

  fromCopy = v7;
LABEL_27:
  if (*(fromCopy + 2))
  {
    syncIdentity = [(HDCodableDevice *)self setBluetoothIdentifier:?];
    fromCopy = v7;
  }

  MEMORY[0x2821F96F8](syncIdentity, fromCopy);
}

@end