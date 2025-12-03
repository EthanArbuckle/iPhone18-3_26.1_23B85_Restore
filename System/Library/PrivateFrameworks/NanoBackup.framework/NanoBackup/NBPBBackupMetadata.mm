@interface NBPBBackupMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBackingColor:(BOOL)color;
- (void)setHasBackupType:(BOOL)type;
- (void)setHasBcmWindowMaterial:(BOOL)material;
- (void)setHasBottomEnclosureMaterial:(BOOL)material;
- (void)setHasCoverGlassColor:(BOOL)color;
- (void)setHasDiagnosticsOptInEnabled:(BOOL)enabled;
- (void)setHasFcmMaterial:(BOOL)material;
- (void)setHasHousingColor:(BOOL)color;
- (void)setHasLocationOptInEnabled:(BOOL)enabled;
- (void)setHasSizeInBytes:(BOOL)bytes;
- (void)setHasTopEnclosureMaterial:(BOOL)material;
- (void)writeTo:(id)to;
@end

@implementation NBPBBackupMetadata

- (void)setHasBottomEnclosureMaterial:(BOOL)material
{
  if (material)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTopEnclosureMaterial:(BOOL)material
{
  if (material)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFcmMaterial:(BOOL)material
{
  if (material)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasBcmWindowMaterial:(BOOL)material
{
  if (material)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCoverGlassColor:(BOOL)color
{
  if (color)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasHousingColor:(BOOL)color
{
  if (color)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBackingColor:(BOOL)color
{
  if (color)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLocationOptInEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasDiagnosticsOptInEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSizeInBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasBackupType:(BOOL)type
{
  if (type)
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
  dictionaryRepresentation = [(NBPBBackupMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v19 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v19;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_productName)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_marketingVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_deviceColor)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_deviceEnclosureColor)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    bottomEnclosureMaterial = self->_bottomEnclosureMaterial;
    PBDataWriterWriteInt32Field();
    toCopy = v19;
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
  toCopy = v19;
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
  toCopy = v19;
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
  toCopy = v19;
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
  toCopy = v19;
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
  toCopy = v19;
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    backingColor = self->_backingColor;
    PBDataWriterWriteInt32Field();
    toCopy = v19;
  }

LABEL_27:
  if (self->_watchFace)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_watchFaceColor)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  v7 = self->_has;
  if ((v7 & 0x800) != 0)
  {
    locationOptInEnabled = self->_locationOptInEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v19;
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
  toCopy = v19;
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
  toCopy = v19;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    sizeInBytes = self->_sizeInBytes;
    PBDataWriterWriteInt64Field();
    toCopy = v19;
  }

LABEL_36:
  if (self->_activeWatchFaceFileContents)
  {
    PBDataWriterWriteDataField();
    toCopy = v19;
  }

  if ((*&self->_has & 8) != 0)
  {
    backupType = self->_backupType;
    PBDataWriterWriteInt32Field();
    toCopy = v19;
  }

  if (self->_deviceCSN)
  {
    PBDataWriterWriteStringField();
    toCopy = v19;
  }

  if (self->_watchFaceData)
  {
    PBDataWriterWriteDataField();
    toCopy = v19;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v7;
  }

  if (self->_name)
  {
    [v7 setName:?];
    toCopy = v7;
  }

  if (self->_productType)
  {
    [v7 setProductType:?];
    toCopy = v7;
  }

  if (self->_productName)
  {
    [v7 setProductName:?];
    toCopy = v7;
  }

  if (self->_systemVersion)
  {
    [v7 setSystemVersion:?];
    toCopy = v7;
  }

  if (self->_systemBuildVersion)
  {
    [v7 setSystemBuildVersion:?];
    toCopy = v7;
  }

  if (self->_marketingVersion)
  {
    [v7 setMarketingVersion:?];
    toCopy = v7;
  }

  if (self->_deviceColor)
  {
    [v7 setDeviceColor:?];
    toCopy = v7;
  }

  if (self->_deviceEnclosureColor)
  {
    [v7 setDeviceEnclosureColor:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 11) = self->_bottomEnclosureMaterial;
    *(toCopy + 90) |= 0x20u;
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

  *(toCopy + 34) = self->_topEnclosureMaterial;
  *(toCopy + 90) |= 0x200u;
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
  *(toCopy + 20) = self->_fcmMaterial;
  *(toCopy + 90) |= 0x80u;
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
  *(toCopy + 10) = self->_bcmWindowMaterial;
  *(toCopy + 90) |= 0x10u;
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
  *(toCopy + 12) = self->_coverGlassColor;
  *(toCopy + 90) |= 0x40u;
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
  *(toCopy + 21) = self->_housingColor;
  *(toCopy + 90) |= 0x100u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    *(toCopy + 8) = self->_backingColor;
    *(toCopy + 90) |= 4u;
  }

LABEL_27:
  if (self->_watchFace)
  {
    [v7 setWatchFace:?];
    toCopy = v7;
  }

  if (self->_watchFaceColor)
  {
    [v7 setWatchFaceColor:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(toCopy + 177) = self->_locationOptInEnabled;
    *(toCopy + 90) |= 0x800u;
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

  *(toCopy + 176) = self->_diagnosticsOptInEnabled;
  *(toCopy + 90) |= 0x400u;
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
  *(toCopy + 1) = *&self->_lastModificationDate;
  *(toCopy + 90) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_35:
    *(toCopy + 2) = self->_sizeInBytes;
    *(toCopy + 90) |= 2u;
  }

LABEL_36:
  if (self->_activeWatchFaceFileContents)
  {
    [v7 setActiveWatchFaceFileContents:?];
    toCopy = v7;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 9) = self->_backupType;
    *(toCopy + 90) |= 8u;
  }

  if (self->_deviceCSN)
  {
    [v7 setDeviceCSN:?];
    toCopy = v7;
  }

  if (self->_watchFaceData)
  {
    [v7 setWatchFaceData:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:zone];
  v7 = v5[18];
  v5[18] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSString *)self->_productType copyWithZone:zone];
  v11 = v5[14];
  v5[14] = v10;

  v12 = [(NSString *)self->_productName copyWithZone:zone];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSString *)self->_systemVersion copyWithZone:zone];
  v15 = v5[16];
  v5[16] = v14;

  v16 = [(NSString *)self->_systemBuildVersion copyWithZone:zone];
  v17 = v5[15];
  v5[15] = v16;

  v18 = [(NSString *)self->_marketingVersion copyWithZone:zone];
  v19 = v5[11];
  v5[11] = v18;

  v20 = [(NSString *)self->_deviceColor copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSString *)self->_deviceEnclosureColor copyWithZone:zone];
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
  v25 = [(NSString *)self->_watchFace copyWithZone:zone];
  v26 = v5[19];
  v5[19] = v25;

  v27 = [(NSString *)self->_watchFaceColor copyWithZone:zone];
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
  v30 = [(NSData *)self->_activeWatchFaceFileContents copyWithZone:zone];
  v31 = v5[3];
  v5[3] = v30;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 9) = self->_backupType;
    *(v5 + 90) |= 8u;
  }

  v32 = [(NSString *)self->_deviceCSN copyWithZone:zone];
  v33 = v5[7];
  v5[7] = v32;

  v34 = [(NSData *)self->_watchFaceData copyWithZone:zone];
  v35 = v5[21];
  v5[21] = v34;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 18))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_97;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 12))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_97;
    }
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 14))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_97;
    }
  }

  productName = self->_productName;
  if (productName | *(equalCopy + 13))
  {
    if (![(NSString *)productName isEqual:?])
    {
      goto LABEL_97;
    }
  }

  systemVersion = self->_systemVersion;
  if (systemVersion | *(equalCopy + 16))
  {
    if (![(NSString *)systemVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(equalCopy + 15))
  {
    if (![(NSString *)systemBuildVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  marketingVersion = self->_marketingVersion;
  if (marketingVersion | *(equalCopy + 11))
  {
    if (![(NSString *)marketingVersion isEqual:?])
    {
      goto LABEL_97;
    }
  }

  deviceColor = self->_deviceColor;
  if (deviceColor | *(equalCopy + 8))
  {
    if (![(NSString *)deviceColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor | *(equalCopy + 9))
  {
    if (![(NSString *)deviceEnclosureColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  has = self->_has;
  v15 = *(equalCopy + 90);
  if ((has & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_bottomEnclosureMaterial != *(equalCopy + 11))
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
    if ((*(equalCopy + 90) & 0x200) == 0 || self->_topEnclosureMaterial != *(equalCopy + 34))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 90) & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x80) != 0)
  {
    if ((v15 & 0x80) == 0 || self->_fcmMaterial != *(equalCopy + 20))
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
    if ((v15 & 0x10) == 0 || self->_bcmWindowMaterial != *(equalCopy + 10))
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
    if ((v15 & 0x40) == 0 || self->_coverGlassColor != *(equalCopy + 12))
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
    if ((*(equalCopy + 90) & 0x100) == 0 || self->_housingColor != *(equalCopy + 21))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 90) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_backingColor != *(equalCopy + 8))
    {
      goto LABEL_97;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_97;
  }

  watchFace = self->_watchFace;
  if (watchFace | *(equalCopy + 19) && ![(NSString *)watchFace isEqual:?])
  {
    goto LABEL_97;
  }

  watchFaceColor = self->_watchFaceColor;
  if (watchFaceColor | *(equalCopy + 20))
  {
    if (![(NSString *)watchFaceColor isEqual:?])
    {
      goto LABEL_97;
    }
  }

  v18 = self->_has;
  v19 = *(equalCopy + 90);
  if ((v18 & 0x800) != 0)
  {
    if ((*(equalCopy + 90) & 0x800) == 0)
    {
      goto LABEL_97;
    }

    v20 = *(equalCopy + 177);
    if (self->_locationOptInEnabled)
    {
      if ((*(equalCopy + 177) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(equalCopy + 177))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 90) & 0x800) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 90) & 0x400) == 0)
    {
      goto LABEL_97;
    }

    v21 = *(equalCopy + 176);
    if (self->_diagnosticsOptInEnabled)
    {
      if ((*(equalCopy + 176) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(equalCopy + 176))
    {
      goto LABEL_97;
    }
  }

  else if ((*(equalCopy + 90) & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if (v18)
  {
    if ((v19 & 1) == 0 || self->_lastModificationDate != *(equalCopy + 1))
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
    if ((v19 & 2) == 0 || self->_sizeInBytes != *(equalCopy + 2))
    {
      goto LABEL_97;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_97;
  }

  activeWatchFaceFileContents = self->_activeWatchFaceFileContents;
  if (activeWatchFaceFileContents | *(equalCopy + 3))
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
  v23 = *(equalCopy + 90);
  if ((v18 & 8) != 0)
  {
    if ((v23 & 8) == 0 || self->_backupType != *(equalCopy + 9))
    {
      goto LABEL_97;
    }
  }

  else if ((v23 & 8) != 0)
  {
    goto LABEL_97;
  }

  deviceCSN = self->_deviceCSN;
  if (deviceCSN | *(equalCopy + 7) && ![(NSString *)deviceCSN isEqual:?])
  {
    goto LABEL_97;
  }

  watchFaceData = self->_watchFaceData;
  if (watchFaceData | *(equalCopy + 21))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 18))
  {
    [(NBPBBackupMetadata *)self setUuid:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(NBPBBackupMetadata *)self setName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 14))
  {
    [(NBPBBackupMetadata *)self setProductType:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(NBPBBackupMetadata *)self setProductName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 16))
  {
    [(NBPBBackupMetadata *)self setSystemVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 15))
  {
    [(NBPBBackupMetadata *)self setSystemBuildVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 11))
  {
    [(NBPBBackupMetadata *)self setMarketingVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 8))
  {
    [(NBPBBackupMetadata *)self setDeviceColor:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(NBPBBackupMetadata *)self setDeviceEnclosureColor:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 90);
  if ((v5 & 0x20) != 0)
  {
    self->_bottomEnclosureMaterial = *(fromCopy + 11);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 90);
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

  else if ((*(fromCopy + 90) & 0x200) == 0)
  {
    goto LABEL_21;
  }

  self->_topEnclosureMaterial = *(fromCopy + 34);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 90);
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
  self->_fcmMaterial = *(fromCopy + 20);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 90);
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
  self->_bcmWindowMaterial = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 90);
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
  self->_coverGlassColor = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 90);
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
  self->_housingColor = *(fromCopy + 21);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 90) & 4) != 0)
  {
LABEL_26:
    self->_backingColor = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

LABEL_27:
  if (*(fromCopy + 19))
  {
    [(NBPBBackupMetadata *)self setWatchFace:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 20))
  {
    [(NBPBBackupMetadata *)self setWatchFaceColor:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 90);
  if ((v6 & 0x800) != 0)
  {
    self->_locationOptInEnabled = *(fromCopy + 177);
    *&self->_has |= 0x800u;
    v6 = *(fromCopy + 90);
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

  else if ((*(fromCopy + 90) & 0x400) == 0)
  {
    goto LABEL_33;
  }

  self->_diagnosticsOptInEnabled = *(fromCopy + 176);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 90);
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
  self->_lastModificationDate = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 90) & 2) != 0)
  {
LABEL_35:
    self->_sizeInBytes = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_36:
  if (*(fromCopy + 3))
  {
    [(NBPBBackupMetadata *)self setActiveWatchFaceFileContents:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 90) & 8) != 0)
  {
    self->_backupType = *(fromCopy + 9);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 7))
  {
    [(NBPBBackupMetadata *)self setDeviceCSN:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 21))
  {
    [(NBPBBackupMetadata *)self setWatchFaceData:?];
    fromCopy = v7;
  }
}

@end