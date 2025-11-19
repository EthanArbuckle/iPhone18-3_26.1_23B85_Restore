@interface OTEscrowRecordMetadataClientMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSecureBackupMetadataTimestamp:(BOOL)a3;
- (void)setHasSecureBackupNumericPassphraseLength:(BOOL)a3;
- (void)setHasSecureBackupUsesComplexPassphrase:(BOOL)a3;
- (void)setHasSecureBackupUsesNumericPassphrase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTEscrowRecordMetadataClientMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 104);
  if ((v5 & 2) != 0)
  {
    self->_secureBackupMetadataTimestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 104);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v4 + 104) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_secureBackupNumericPassphraseLength = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 104);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  self->_secureBackupUsesComplexPassphrase = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 104) & 0x10) != 0)
  {
LABEL_5:
    self->_secureBackupUsesNumericPassphrase = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_6:
  v6 = v4;
  if (*(v4 + 6))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceColor:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceEnclosureColor:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceMid:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceModel:?];
    v4 = v6;
  }

  if (*(v4 + 10))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceModelClass:?];
    v4 = v6;
  }

  if (*(v4 + 11))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceModelVersion:?];
    v4 = v6;
  }

  if (*(v4 + 12))
  {
    [(OTEscrowRecordMetadataClientMetadata *)self setDeviceName:?];
    v4 = v6;
  }

  if (*(v4 + 104))
  {
    self->_devicePlatform = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v16 = 2654435761u * self->_secureBackupMetadataTimestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v14 = 2654435761u * self->_secureBackupNumericPassphraseLength;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = 2654435761u * self->_secureBackupUsesComplexPassphrase;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v4 = 2654435761u * self->_secureBackupUsesNumericPassphrase;
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  v5 = [(NSString *)self->_deviceColor hash];
  v6 = [(NSString *)self->_deviceEnclosureColor hash];
  v7 = [(NSString *)self->_deviceMid hash];
  v8 = [(NSString *)self->_deviceModel hash];
  v9 = [(NSString *)self->_deviceModelClass hash];
  v10 = [(NSString *)self->_deviceModelVersion hash];
  v11 = [(NSString *)self->_deviceName hash];
  if (*&self->_has)
  {
    v12 = 2654435761u * self->_devicePlatform;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  v5 = *(v4 + 104);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 104) & 2) == 0 || self->_secureBackupMetadataTimestamp != *(v4 + 2))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 104) & 2) != 0)
  {
LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 104) & 4) == 0 || self->_secureBackupNumericPassphraseLength != *(v4 + 3))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 104) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 104) & 8) == 0 || self->_secureBackupUsesComplexPassphrase != *(v4 + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 104) & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 104) & 0x10) == 0 || self->_secureBackupUsesNumericPassphrase != *(v4 + 5))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 104) & 0x10) != 0)
  {
    goto LABEL_40;
  }

  deviceColor = self->_deviceColor;
  if (deviceColor | *(v4 + 6) && ![(NSString *)deviceColor isEqual:?])
  {
    goto LABEL_40;
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor | *(v4 + 7))
  {
    if (![(NSString *)deviceEnclosureColor isEqual:?])
    {
      goto LABEL_40;
    }
  }

  deviceMid = self->_deviceMid;
  if (deviceMid | *(v4 + 8))
  {
    if (![(NSString *)deviceMid isEqual:?])
    {
      goto LABEL_40;
    }
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(v4 + 9))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_40;
    }
  }

  deviceModelClass = self->_deviceModelClass;
  if (deviceModelClass | *(v4 + 10))
  {
    if (![(NSString *)deviceModelClass isEqual:?])
    {
      goto LABEL_40;
    }
  }

  deviceModelVersion = self->_deviceModelVersion;
  if (deviceModelVersion | *(v4 + 11))
  {
    if (![(NSString *)deviceModelVersion isEqual:?])
    {
      goto LABEL_40;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 12))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v13 = (*(v4 + 104) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_devicePlatform != *(v4 + 1))
    {
      goto LABEL_40;
    }

    v13 = 1;
  }

LABEL_41:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_secureBackupMetadataTimestamp;
    *(v5 + 104) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_secureBackupNumericPassphraseLength;
  *(v5 + 104) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v5 + 32) = self->_secureBackupUsesComplexPassphrase;
  *(v5 + 104) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_secureBackupUsesNumericPassphrase;
    *(v5 + 104) |= 0x10u;
  }

LABEL_6:
  v8 = [(NSString *)self->_deviceColor copyWithZone:a3];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  v10 = [(NSString *)self->_deviceEnclosureColor copyWithZone:a3];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_deviceMid copyWithZone:a3];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  v14 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v15 = *(v6 + 72);
  *(v6 + 72) = v14;

  v16 = [(NSString *)self->_deviceModelClass copyWithZone:a3];
  v17 = *(v6 + 80);
  *(v6 + 80) = v16;

  v18 = [(NSString *)self->_deviceModelVersion copyWithZone:a3];
  v19 = *(v6 + 88);
  *(v6 + 88) = v18;

  v20 = [(NSString *)self->_deviceName copyWithZone:a3];
  v21 = *(v6 + 96);
  *(v6 + 96) = v20;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_devicePlatform;
    *(v6 + 104) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_secureBackupMetadataTimestamp;
    *(v4 + 104) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_secureBackupNumericPassphraseLength;
  *(v4 + 104) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  v4[4] = self->_secureBackupUsesComplexPassphrase;
  *(v4 + 104) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v4[5] = self->_secureBackupUsesNumericPassphrase;
    *(v4 + 104) |= 0x10u;
  }

LABEL_6:
  v6 = v4;
  if (self->_deviceColor)
  {
    [v4 setDeviceColor:?];
    v4 = v6;
  }

  if (self->_deviceEnclosureColor)
  {
    [v6 setDeviceEnclosureColor:?];
    v4 = v6;
  }

  if (self->_deviceMid)
  {
    [v6 setDeviceMid:?];
    v4 = v6;
  }

  if (self->_deviceModel)
  {
    [v6 setDeviceModel:?];
    v4 = v6;
  }

  if (self->_deviceModelClass)
  {
    [v6 setDeviceModelClass:?];
    v4 = v6;
  }

  if (self->_deviceModelVersion)
  {
    [v6 setDeviceModelVersion:?];
    v4 = v6;
  }

  if (self->_deviceName)
  {
    [v6 setDeviceName:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[1] = self->_devicePlatform;
    *(v4 + 104) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    secureBackupMetadataTimestamp = self->_secureBackupMetadataTimestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  secureBackupNumericPassphraseLength = self->_secureBackupNumericPassphraseLength;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  secureBackupUsesComplexPassphrase = self->_secureBackupUsesComplexPassphrase;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    secureBackupUsesNumericPassphrase = self->_secureBackupUsesNumericPassphrase;
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
  if (self->_deviceColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceEnclosureColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceMid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModelClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    devicePlatform = self->_devicePlatform;
    PBDataWriterWriteUint64Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupMetadataTimestamp];
    [v3 setObject:v15 forKey:@"secure_backup_metadata_timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupNumericPassphraseLength];
  [v3 setObject:v16 forKey:@"secure_backup_numeric_passphrase_length"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupUsesComplexPassphrase];
  [v3 setObject:v17 forKey:@"secure_backup_uses_complex_passphrase"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secureBackupUsesNumericPassphrase];
    [v3 setObject:v5 forKey:@"secure_backup_uses_numeric_passphrase"];
  }

LABEL_6:
  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [v3 setObject:deviceColor forKey:@"device_color"];
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor)
  {
    [v3 setObject:deviceEnclosureColor forKey:@"device_enclosure_color"];
  }

  deviceMid = self->_deviceMid;
  if (deviceMid)
  {
    [v3 setObject:deviceMid forKey:@"device_mid"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"device_model"];
  }

  deviceModelClass = self->_deviceModelClass;
  if (deviceModelClass)
  {
    [v3 setObject:deviceModelClass forKey:@"device_model_class"];
  }

  deviceModelVersion = self->_deviceModelVersion;
  if (deviceModelVersion)
  {
    [v3 setObject:deviceModelVersion forKey:@"device_model_version"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"device_name"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_devicePlatform];
    [v3 setObject:v13 forKey:@"device_platform"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowRecordMetadataClientMetadata;
  v4 = [(OTEscrowRecordMetadataClientMetadata *)&v8 description];
  v5 = [(OTEscrowRecordMetadataClientMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasSecureBackupUsesNumericPassphrase:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSecureBackupUsesComplexPassphrase:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSecureBackupNumericPassphraseLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSecureBackupMetadataTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end