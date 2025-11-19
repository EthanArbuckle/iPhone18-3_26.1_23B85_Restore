@interface NBPBBackupMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBackingColor:(BOOL)a3;
- (void)setHasBackupType:(BOOL)a3;
- (void)setHasBcmWindowMaterial:(BOOL)a3;
- (void)setHasBottomEnclosureMaterial:(BOOL)a3;
- (void)setHasCoverGlassColor:(BOOL)a3;
- (void)setHasDiagnosticsOptInEnabled:(BOOL)a3;
- (void)setHasFcmMaterial:(BOOL)a3;
- (void)setHasHousingColor:(BOOL)a3;
- (void)setHasLocationOptInEnabled:(BOOL)a3;
- (void)setHasSizeInBytes:(BOOL)a3;
- (void)setHasTopEnclosureMaterial:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NBPBBackupMetadata

- (void)setHasBottomEnclosureMaterial:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTopEnclosureMaterial:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFcmMaterial:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasBcmWindowMaterial:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCoverGlassColor:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasHousingColor:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBackingColor:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLocationOptInEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasDiagnosticsOptInEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSizeInBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasBackupType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBBackupMetadata;
  v3 = [(NBPBBackupMetadata *)&v7 description];
  v4 = [(NBPBBackupMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  productName = self->_productName;
  if (productName)
  {
    [v4 setObject:productName forKey:@"productName"];
  }

  systemVersion = self->_systemVersion;
  if (systemVersion)
  {
    [v4 setObject:systemVersion forKey:@"systemVersion"];
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion)
  {
    [v4 setObject:systemBuildVersion forKey:@"systemBuildVersion"];
  }

  marketingVersion = self->_marketingVersion;
  if (marketingVersion)
  {
    [v4 setObject:marketingVersion forKey:@"marketingVersion"];
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [v4 setObject:deviceColor forKey:@"deviceColor"];
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor)
  {
    [v4 setObject:deviceEnclosureColor forKey:@"deviceEnclosureColor"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v25 = [NSNumber numberWithInt:self->_bottomEnclosureMaterial];
    [v4 setObject:v25 forKey:@"bottomEnclosureMaterial"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_21:
      if ((has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v26 = [NSNumber numberWithInt:self->_topEnclosureMaterial];
  [v4 setObject:v26 forKey:@"topEnclosureMaterial"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_22:
    if ((has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = [NSNumber numberWithInt:self->_fcmMaterial];
  [v4 setObject:v27 forKey:@"fcmMaterial"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_23:
    if ((has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = [NSNumber numberWithInt:self->_bcmWindowMaterial];
  [v4 setObject:v28 forKey:@"bcmWindowMaterial"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_24:
    if ((has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  v29 = [NSNumber numberWithInt:self->_coverGlassColor];
  [v4 setObject:v29 forKey:@"coverGlassColor"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_25:
    if ((has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_52:
  v30 = [NSNumber numberWithInt:self->_housingColor];
  [v4 setObject:v30 forKey:@"housingColor"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    v15 = [NSNumber numberWithInt:self->_backingColor];
    [v4 setObject:v15 forKey:@"backingColor"];
  }

LABEL_27:
  watchFace = self->_watchFace;
  if (watchFace)
  {
    [v4 setObject:watchFace forKey:@"watchFace"];
  }

  watchFaceColor = self->_watchFaceColor;
  if (watchFaceColor)
  {
    [v4 setObject:watchFaceColor forKey:@"watchFaceColor"];
  }

  v18 = self->_has;
  if ((v18 & 0x800) != 0)
  {
    v31 = [NSNumber numberWithBool:self->_locationOptInEnabled];
    [v4 setObject:v31 forKey:@"locationOptInEnabled"];

    v18 = self->_has;
    if ((v18 & 0x400) == 0)
    {
LABEL_33:
      if ((v18 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_33;
  }

  v32 = [NSNumber numberWithBool:self->_diagnosticsOptInEnabled];
  [v4 setObject:v32 forKey:@"diagnosticsOptInEnabled"];

  v18 = self->_has;
  if ((v18 & 1) == 0)
  {
LABEL_34:
    if ((v18 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_56:
  v33 = [NSNumber numberWithDouble:self->_lastModificationDate];
  [v4 setObject:v33 forKey:@"lastModificationDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    v19 = [NSNumber numberWithLongLong:self->_sizeInBytes];
    [v4 setObject:v19 forKey:@"sizeInBytes"];
  }

LABEL_36:
  activeWatchFaceFileContents = self->_activeWatchFaceFileContents;
  if (activeWatchFaceFileContents)
  {
    [v4 setObject:activeWatchFaceFileContents forKey:@"activeWatchFaceFileContents"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v21 = [NSNumber numberWithInt:self->_backupType];
    [v4 setObject:v21 forKey:@"backupType"];
  }

  deviceCSN = self->_deviceCSN;
  if (deviceCSN)
  {
    [v4 setObject:deviceCSN forKey:@"deviceCSN"];
  }

  watchFaceData = self->_watchFaceData;
  if (watchFaceData)
  {
    [v4 setObject:watchFaceData forKey:@"watchFaceData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v19;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_productName)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_marketingVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_deviceColor)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_deviceEnclosureColor)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    bottomEnclosureMaterial = self->_bottomEnclosureMaterial;
    PBDataWriterWriteInt32Field();
    v4 = v19;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_21:
      if ((has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

  topEnclosureMaterial = self->_topEnclosureMaterial;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_22:
    if ((has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  fcmMaterial = self->_fcmMaterial;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_23:
    if ((has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  bcmWindowMaterial = self->_bcmWindowMaterial;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_24:
    if ((has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  coverGlassColor = self->_coverGlassColor;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_25:
    if ((has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_52:
  housingColor = self->_housingColor;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    backingColor = self->_backingColor;
    PBDataWriterWriteInt32Field();
    v4 = v19;
  }

LABEL_27:
  if (self->_watchFace)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_watchFaceColor)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v7 = self->_has;
  if ((v7 & 0x800) != 0)
  {
    locationOptInEnabled = self->_locationOptInEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v19;
    v7 = self->_has;
    if ((v7 & 0x400) == 0)
    {
LABEL_33:
      if ((v7 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_33;
  }

  diagnosticsOptInEnabled = self->_diagnosticsOptInEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  v7 = self->_has;
  if ((v7 & 1) == 0)
  {
LABEL_34:
    if ((v7 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_56:
  lastModificationDate = self->_lastModificationDate;
  PBDataWriterWriteDoubleField();
  v4 = v19;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    sizeInBytes = self->_sizeInBytes;
    PBDataWriterWriteInt64Field();
    v4 = v19;
  }

LABEL_36:
  if (self->_activeWatchFaceFileContents)
  {
    PBDataWriterWriteDataField();
    v4 = v19;
  }

  if ((*&self->_has & 8) != 0)
  {
    backupType = self->_backupType;
    PBDataWriterWriteInt32Field();
    v4 = v19;
  }

  if (self->_deviceCSN)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_watchFaceData)
  {
    PBDataWriterWriteDataField();
    v4 = v19;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v7;
  }

  if (self->_name)
  {
    [v7 setName:?];
    v4 = v7;
  }

  if (self->_productType)
  {
    [v7 setProductType:?];
    v4 = v7;
  }

  if (self->_productName)
  {
    [v7 setProductName:?];
    v4 = v7;
  }

  if (self->_systemVersion)
  {
    [v7 setSystemVersion:?];
    v4 = v7;
  }

  if (self->_systemBuildVersion)
  {
    [v7 setSystemBuildVersion:?];
    v4 = v7;
  }

  if (self->_marketingVersion)
  {
    [v7 setMarketingVersion:?];
    v4 = v7;
  }

  if (self->_deviceColor)
  {
    [v7 setDeviceColor:?];
    v4 = v7;
  }

  if (self->_deviceEnclosureColor)
  {
    [v7 setDeviceEnclosureColor:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 11) = self->_bottomEnclosureMaterial;
    *(v4 + 90) |= 0x20u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_21:
      if ((has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(v4 + 34) = self->_topEnclosureMaterial;
  *(v4 + 90) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_22:
    if ((has & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 20) = self->_fcmMaterial;
  *(v4 + 90) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_23:
    if ((has & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 10) = self->_bcmWindowMaterial;
  *(v4 + 90) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_24:
    if ((has & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 12) = self->_coverGlassColor;
  *(v4 + 90) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_25:
    if ((has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_52:
  *(v4 + 21) = self->_housingColor;
  *(v4 + 90) |= 0x100u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    *(v4 + 8) = self->_backingColor;
    *(v4 + 90) |= 4u;
  }

LABEL_27:
  if (self->_watchFace)
  {
    [v7 setWatchFace:?];
    v4 = v7;
  }

  if (self->_watchFaceColor)
  {
    [v7 setWatchFaceColor:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(v4 + 177) = self->_locationOptInEnabled;
    *(v4 + 90) |= 0x800u;
    v6 = self->_has;
    if ((v6 & 0x400) == 0)
    {
LABEL_33:
      if ((v6 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_33;
  }

  *(v4 + 176) = self->_diagnosticsOptInEnabled;
  *(v4 + 90) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 1) == 0)
  {
LABEL_34:
    if ((v6 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_56:
  *(v4 + 1) = *&self->_lastModificationDate;
  *(v4 + 90) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    *(v4 + 2) = self->_sizeInBytes;
    *(v4 + 90) |= 2u;
  }

LABEL_36:
  if (self->_activeWatchFaceFileContents)
  {
    [v7 setActiveWatchFaceFileContents:?];
    v4 = v7;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 9) = self->_backupType;
    *(v4 + 90) |= 8u;
  }

  if (self->_deviceCSN)
  {
    [v7 setDeviceCSN:?];
    v4 = v7;
  }

  if (self->_watchFaceData)
  {
    [v7 setWatchFaceData:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = v5[18];
  v5[18] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSString *)self->_productType copyWithZone:a3];
  v11 = v5[14];
  v5[14] = v10;

  v12 = [(NSString *)self->_productName copyWithZone:a3];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSString *)self->_systemVersion copyWithZone:a3];
  v15 = v5[16];
  v5[16] = v14;

  v16 = [(NSString *)self->_systemBuildVersion copyWithZone:a3];
  v17 = v5[15];
  v5[15] = v16;

  v18 = [(NSString *)self->_marketingVersion copyWithZone:a3];
  v19 = v5[11];
  v5[11] = v18;

  v20 = [(NSString *)self->_deviceColor copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSString *)self->_deviceEnclosureColor copyWithZone:a3];
  v23 = v5[9];
  v5[9] = v22;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 11) = self->_bottomEnclosureMaterial;
    *(v5 + 90) |= 0x20u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 34) = self->_topEnclosureMaterial;
  *(v5 + 90) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 20) = self->_fcmMaterial;
  *(v5 + 90) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 10) = self->_bcmWindowMaterial;
  *(v5 + 90) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 12) = self->_coverGlassColor;
  *(v5 + 90) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  *(v5 + 21) = self->_housingColor;
  *(v5 + 90) |= 0x100u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v5 + 8) = self->_backingColor;
    *(v5 + 90) |= 4u;
  }

LABEL_9:
  v25 = [(NSString *)self->_watchFace copyWithZone:a3];
  v26 = v5[19];
  v5[19] = v25;

  v27 = [(NSString *)self->_watchFaceColor copyWithZone:a3];
  v28 = v5[20];
  v5[20] = v27;

  v29 = self->_has;
  if ((v29 & 0x800) != 0)
  {
    *(v5 + 177) = self->_locationOptInEnabled;
    *(v5 + 90) |= 0x800u;
    v29 = self->_has;
    if ((v29 & 0x400) == 0)
    {
LABEL_11:
      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_11;
  }

  *(v5 + 176) = self->_diagnosticsOptInEnabled;
  *(v5 + 90) |= 0x400u;
  v29 = self->_has;
  if ((v29 & 1) == 0)
  {
LABEL_12:
    if ((v29 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  v5[1] = *&self->_lastModificationDate;
  *(v5 + 90) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_13:
    v5[2] = self->_sizeInBytes;
    *(v5 + 90) |= 2u;
  }

LABEL_14:
  v30 = [(NSData *)self->_activeWatchFaceFileContents copyWithZone:a3];
  v31 = v5[3];
  v5[3] = v30;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 9) = self->_backupType;
    *(v5 + 90) |= 8u;
  }

  v32 = [(NSString *)self->_deviceCSN copyWithZone:a3];
  v33 = v5[7];
  v5[7] = v32;

  v34 = [(NSData *)self->_watchFaceData copyWithZone:a3];
  v35 = v5[21];
  v5[21] = v34;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 18))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_97;
    }
  }

  name = self->_name;
  if (name | *(v4 + 12))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_97;
    }
  }

  productType = self->_productType;
  if (productType | *(v4 + 14))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_97;
    }
  }

  productName = self->_productName;
  if (productName | *(v4 + 13))
  {
    if (![(NSString *)productName isEqual:?])
    {
      goto LABEL_97;
    }
  }

  systemVersion = self->_systemVersion;
  if (systemVersion | *(v4 + 16))
  {
    if (![(NSString *)systemVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(v4 + 15))
  {
    if (![(NSString *)systemBuildVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  marketingVersion = self->_marketingVersion;
  if (marketingVersion | *(v4 + 11))
  {
    if (![(NSString *)marketingVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  deviceColor = self->_deviceColor;
  if (deviceColor | *(v4 + 8))
  {
    if (![(NSString *)deviceColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor | *(v4 + 9))
  {
    if (![(NSString *)deviceEnclosureColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  has = self->_has;
  v15 = *(v4 + 90);
  if ((has & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_bottomEnclosureMaterial != *(v4 + 11))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 90) & 0x200) == 0 || self->_topEnclosureMaterial != *(v4 + 34))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 90) & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x80) != 0)
  {
    if ((v15 & 0x80) == 0 || self->_fcmMaterial != *(v4 + 20))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 0x80) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_bcmWindowMaterial != *(v4 + 10))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_coverGlassColor != *(v4 + 12))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 90) & 0x100) == 0 || self->_housingColor != *(v4 + 21))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 90) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_backingColor != *(v4 + 8))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_97;
  }

  watchFace = self->_watchFace;
  if (watchFace | *(v4 + 19) && ![(NSString *)watchFace isEqual:?])
  {
    goto LABEL_97;
  }

  watchFaceColor = self->_watchFaceColor;
  if (watchFaceColor | *(v4 + 20))
  {
    if (![(NSString *)watchFaceColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  v18 = self->_has;
  v19 = *(v4 + 90);
  if ((v18 & 0x800) != 0)
  {
    if ((*(v4 + 90) & 0x800) == 0)
    {
      goto LABEL_97;
    }

    v20 = *(v4 + 177);
    if (self->_locationOptInEnabled)
    {
      if ((*(v4 + 177) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 177))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 90) & 0x800) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 90) & 0x400) == 0)
    {
      goto LABEL_97;
    }

    v21 = *(v4 + 176);
    if (self->_diagnosticsOptInEnabled)
    {
      if ((*(v4 + 176) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 176))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 90) & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if (v18)
  {
    if ((v19 & 1) == 0 || self->_lastModificationDate != *(v4 + 1))
    {
      goto LABEL_97;
    }
  }

  else if (v19)
  {
    goto LABEL_97;
  }

  if ((v18 & 2) != 0)
  {
    if ((v19 & 2) == 0 || self->_sizeInBytes != *(v4 + 2))
    {
      goto LABEL_97;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_97;
  }

  activeWatchFaceFileContents = self->_activeWatchFaceFileContents;
  if (activeWatchFaceFileContents | *(v4 + 3))
  {
    if ([(NSData *)activeWatchFaceFileContents isEqual:?])
    {
      v18 = self->_has;
      goto LABEL_88;
    }

LABEL_97:
    v26 = 0;
    goto LABEL_98;
  }

LABEL_88:
  v23 = *(v4 + 90);
  if ((v18 & 8) != 0)
  {
    if ((v23 & 8) == 0 || self->_backupType != *(v4 + 9))
    {
      goto LABEL_97;
    }
  }

  else if ((v23 & 8) != 0)
  {
    goto LABEL_97;
  }

  deviceCSN = self->_deviceCSN;
  if (deviceCSN | *(v4 + 7) && ![(NSString *)deviceCSN isEqual:?])
  {
    goto LABEL_97;
  }

  watchFaceData = self->_watchFaceData;
  if (watchFaceData | *(v4 + 21))
  {
    v26 = [(NSData *)watchFaceData isEqual:?];
  }

  else
  {
    v26 = 1;
  }

LABEL_98:

  return v26;
}

- (unint64_t)hash
{
  v36 = [(NSData *)self->_uuid hash];
  v35 = [(NSString *)self->_name hash];
  v34 = [(NSString *)self->_productType hash];
  v33 = [(NSString *)self->_productName hash];
  v32 = [(NSString *)self->_systemVersion hash];
  v31 = [(NSString *)self->_systemBuildVersion hash];
  v30 = [(NSString *)self->_marketingVersion hash];
  v29 = [(NSString *)self->_deviceColor hash];
  v28 = [(NSString *)self->_deviceEnclosureColor hash];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v27 = 2654435761 * self->_bottomEnclosureMaterial;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v26 = 2654435761 * self->_topEnclosureMaterial;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v27 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v25 = 2654435761 * self->_fcmMaterial;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v25 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v24 = 2654435761 * self->_bcmWindowMaterial;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v23 = 2654435761 * self->_coverGlassColor;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v22 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v23 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v22 = 2654435761 * self->_housingColor;
  if ((has & 4) != 0)
  {
LABEL_8:
    v4 = 2654435761 * self->_backingColor;
    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
LABEL_16:
  v5 = [(NSString *)self->_watchFace hash];
  v6 = [(NSString *)self->_watchFaceColor hash];
  v9 = self->_has;
  if ((v9 & 0x800) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v11 = 0;
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  v10 = 2654435761 * self->_locationOptInEnabled;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v11 = 2654435761 * self->_diagnosticsOptInEnabled;
  if ((v9 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  lastModificationDate = self->_lastModificationDate;
  if (lastModificationDate < 0.0)
  {
    lastModificationDate = -lastModificationDate;
  }

  *v7.i64 = floor(lastModificationDate + 0.5);
  v13 = (lastModificationDate - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v8, v7).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_26:
  if ((v9 & 2) != 0)
  {
    v16 = 2654435761 * self->_sizeInBytes;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSData *)self->_activeWatchFaceFileContents hash];
  if ((*&self->_has & 8) != 0)
  {
    v18 = 2654435761 * self->_backupType;
  }

  else
  {
    v18 = 0;
  }

  v19 = v35 ^ v36 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v6 ^ v10 ^ v11;
  v20 = v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_deviceCSN hash];
  return v19 ^ v20 ^ [(NSData *)self->_watchFaceData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 18))
  {
    [(NBPBBackupMetadata *)self setUuid:?];
    v4 = v7;
  }

  if (*(v4 + 12))
  {
    [(NBPBBackupMetadata *)self setName:?];
    v4 = v7;
  }

  if (*(v4 + 14))
  {
    [(NBPBBackupMetadata *)self setProductType:?];
    v4 = v7;
  }

  if (*(v4 + 13))
  {
    [(NBPBBackupMetadata *)self setProductName:?];
    v4 = v7;
  }

  if (*(v4 + 16))
  {
    [(NBPBBackupMetadata *)self setSystemVersion:?];
    v4 = v7;
  }

  if (*(v4 + 15))
  {
    [(NBPBBackupMetadata *)self setSystemBuildVersion:?];
    v4 = v7;
  }

  if (*(v4 + 11))
  {
    [(NBPBBackupMetadata *)self setMarketingVersion:?];
    v4 = v7;
  }

  if (*(v4 + 8))
  {
    [(NBPBBackupMetadata *)self setDeviceColor:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(NBPBBackupMetadata *)self setDeviceEnclosureColor:?];
    v4 = v7;
  }

  v5 = *(v4 + 90);
  if ((v5 & 0x20) != 0)
  {
    self->_bottomEnclosureMaterial = *(v4 + 11);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 90);
    if ((v5 & 0x200) == 0)
    {
LABEL_21:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*(v4 + 90) & 0x200) == 0)
  {
    goto LABEL_21;
  }

  self->_topEnclosureMaterial = *(v4 + 34);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 90);
  if ((v5 & 0x80) == 0)
  {
LABEL_22:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_fcmMaterial = *(v4 + 20);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 90);
  if ((v5 & 0x10) == 0)
  {
LABEL_23:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_bcmWindowMaterial = *(v4 + 10);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 90);
  if ((v5 & 0x40) == 0)
  {
LABEL_24:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_coverGlassColor = *(v4 + 12);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 90);
  if ((v5 & 0x100) == 0)
  {
LABEL_25:
    if ((v5 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_52:
  self->_housingColor = *(v4 + 21);
  *&self->_has |= 0x100u;
  if ((*(v4 + 90) & 4) != 0)
  {
LABEL_26:
    self->_backingColor = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_27:
  if (*(v4 + 19))
  {
    [(NBPBBackupMetadata *)self setWatchFace:?];
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    [(NBPBBackupMetadata *)self setWatchFaceColor:?];
    v4 = v7;
  }

  v6 = *(v4 + 90);
  if ((v6 & 0x800) != 0)
  {
    self->_locationOptInEnabled = *(v4 + 177);
    *&self->_has |= 0x800u;
    v6 = *(v4 + 90);
    if ((v6 & 0x400) == 0)
    {
LABEL_33:
      if ((v6 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_56;
    }
  }

  else if ((*(v4 + 90) & 0x400) == 0)
  {
    goto LABEL_33;
  }

  self->_diagnosticsOptInEnabled = *(v4 + 176);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 90);
  if ((v6 & 1) == 0)
  {
LABEL_34:
    if ((v6 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_56:
  self->_lastModificationDate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 90) & 2) != 0)
  {
LABEL_35:
    self->_sizeInBytes = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_36:
  if (*(v4 + 3))
  {
    [(NBPBBackupMetadata *)self setActiveWatchFaceFileContents:?];
    v4 = v7;
  }

  if ((*(v4 + 90) & 8) != 0)
  {
    self->_backupType = *(v4 + 9);
    *&self->_has |= 8u;
  }

  if (*(v4 + 7))
  {
    [(NBPBBackupMetadata *)self setDeviceCSN:?];
    v4 = v7;
  }

  if (*(v4 + 21))
  {
    [(NBPBBackupMetadata *)self setWatchFaceData:?];
    v4 = v7;
  }
}

@end