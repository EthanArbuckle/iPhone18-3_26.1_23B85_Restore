@interface MASDPlainAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MASDPlainAsset

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MASDPlainAsset;
  v4 = [(MASDPlainAsset *)&v8 description];
  dictionaryRepresentation = [(MASDPlainAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
  [dictionary setObject:v4 forKey:@"type"];

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationTime];
  [dictionary setObject:v6 forKey:@"creationTime"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUpdatedTime];
  [dictionary setObject:v7 forKey:@"lastUpdatedTime"];

  lastUpdateOSVersion = self->_lastUpdateOSVersion;
  if (lastUpdateOSVersion)
  {
    [dictionary setObject:lastUpdateOSVersion forKey:@"lastUpdateOSVersion"];
  }

  lastUpdateAlgorithmVersion = self->_lastUpdateAlgorithmVersion;
  if (lastUpdateAlgorithmVersion)
  {
    [dictionary setObject:lastUpdateAlgorithmVersion forKey:@"lastUpdateAlgorithmVersion"];
  }

  assetData = self->_assetData;
  if (assetData)
  {
    [dictionary setObject:assetData forKey:@"assetData"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_assetState];
    [dictionary setObject:v11 forKey:@"assetState"];
  }

  enrollmentIdentifier = self->_enrollmentIdentifier;
  if (enrollmentIdentifier)
  {
    [dictionary setObject:enrollmentIdentifier forKey:@"enrollmentIdentifier"];
  }

  creatorAttest = self->_creatorAttest;
  if (creatorAttest)
  {
    [dictionary setObject:creatorAttest forKey:@"creatorAttest"];
  }

  serverAttest = self->_serverAttest;
  if (serverAttest)
  {
    [dictionary setObject:serverAttest forKey:@"serverAttest"];
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [dictionary setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v10 = toCopy;
  PBDataWriterWriteInt64Field();
  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  creationTime = self->_creationTime;
  PBDataWriterWriteDoubleField();
  lastUpdatedTime = self->_lastUpdatedTime;
  PBDataWriterWriteDoubleField();
  if (!self->_lastUpdateOSVersion)
  {
    [MASDPlainAsset writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_lastUpdateAlgorithmVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetData)
  {
    PBDataWriterWriteDataField();
  }

  v8 = v10;
  if (*&self->_has)
  {
    assetState = self->_assetState;
    PBDataWriterWriteInt64Field();
    v8 = v10;
  }

  if (self->_enrollmentIdentifier)
  {
    PBDataWriterWriteStringField();
    v8 = v10;
  }

  if (self->_creatorAttest)
  {
    PBDataWriterWriteDataField();
    v8 = v10;
  }

  if (self->_serverAttest)
  {
    PBDataWriterWriteDataField();
    v8 = v10;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v8 = v10;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v8 = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_type;
  v6 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v6;
  }

  toCopy[2] = *&self->_creationTime;
  toCopy[3] = *&self->_lastUpdatedTime;
  [toCopy setLastUpdateOSVersion:self->_lastUpdateOSVersion];
  if (self->_lastUpdateAlgorithmVersion)
  {
    [v6 setLastUpdateAlgorithmVersion:?];
  }

  if (self->_assetData)
  {
    [v6 setAssetData:?];
  }

  v5 = v6;
  if (*&self->_has)
  {
    v6[1] = self->_assetState;
    *(v6 + 112) |= 1u;
  }

  if (self->_enrollmentIdentifier)
  {
    [v6 setEnrollmentIdentifier:?];
    v5 = v6;
  }

  if (self->_creatorAttest)
  {
    [v6 setCreatorAttest:?];
    v5 = v6;
  }

  if (self->_serverAttest)
  {
    [v6 setServerAttest:?];
    v5 = v6;
  }

  if (self->_deviceIdentifier)
  {
    [v6 setDeviceIdentifier:?];
    v5 = v6;
  }

  if (self->_deviceName)
  {
    [v6 setDeviceName:?];
    v5 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 32) = self->_type;
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  *(v5 + 16) = self->_creationTime;
  *(v5 + 24) = self->_lastUpdatedTime;
  v8 = [(NSString *)self->_lastUpdateOSVersion copyWithZone:zone];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v10 = [(NSString *)self->_lastUpdateAlgorithmVersion copyWithZone:zone];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(NSData *)self->_assetData copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_assetState;
    *(v5 + 112) |= 1u;
  }

  v14 = [(NSString *)self->_enrollmentIdentifier copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSData *)self->_creatorAttest copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSData *)self->_serverAttest copyWithZone:zone];
  v19 = *(v5 + 104);
  *(v5 + 104) = v18;

  v20 = [(NSString *)self->_deviceIdentifier copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(NSString *)self->_deviceName copyWithZone:zone];
  v23 = *(v5 + 64);
  *(v5 + 64) = v22;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  if (self->_type != *(equalCopy + 4))
  {
    goto LABEL_28;
  }

  label = self->_label;
  if (label | *(equalCopy + 10))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if (self->_creationTime != *(equalCopy + 2))
  {
    goto LABEL_28;
  }

  if (self->_lastUpdatedTime != *(equalCopy + 3))
  {
    goto LABEL_28;
  }

  lastUpdateOSVersion = self->_lastUpdateOSVersion;
  if (lastUpdateOSVersion | *(equalCopy + 12))
  {
    if (![(NSString *)lastUpdateOSVersion isEqual:?])
    {
      goto LABEL_28;
    }
  }

  lastUpdateAlgorithmVersion = self->_lastUpdateAlgorithmVersion;
  if (lastUpdateAlgorithmVersion | *(equalCopy + 11))
  {
    if (![(NSString *)lastUpdateAlgorithmVersion isEqual:?])
    {
      goto LABEL_28;
    }
  }

  assetData = self->_assetData;
  if (assetData | *(equalCopy + 5))
  {
    if (![(NSData *)assetData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v9 = *(equalCopy + 112);
  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_assetState != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 112))
  {
LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  enrollmentIdentifier = self->_enrollmentIdentifier;
  if (enrollmentIdentifier | *(equalCopy + 9) && ![(NSString *)enrollmentIdentifier isEqual:?])
  {
    goto LABEL_28;
  }

  creatorAttest = self->_creatorAttest;
  if (creatorAttest | *(equalCopy + 6))
  {
    if (![(NSData *)creatorAttest isEqual:?])
    {
      goto LABEL_28;
    }
  }

  serverAttest = self->_serverAttest;
  if (serverAttest | *(equalCopy + 13))
  {
    if (![(NSData *)serverAttest isEqual:?])
    {
      goto LABEL_28;
    }
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)deviceIdentifier isEqual:?])
    {
      goto LABEL_28;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 8))
  {
    v15 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_29:

  return v15;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSString *)self->_label hash];
  creationTime = self->_creationTime;
  if (creationTime < 0.0)
  {
    creationTime = -creationTime;
  }

  *v6.i64 = floor(creationTime + 0.5);
  v9 = (creationTime - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vnegq_f64(v10);
  v12 = vbslq_s8(v11, v7, v6);
  v13 = 2654435761u * *v12.i64;
  v14 = v13 + v9;
  if (v9 <= 0.0)
  {
    v14 = 2654435761u * *v12.i64;
  }

  v15 = v13 - fabs(v9);
  if (v9 < 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  lastUpdatedTime = self->_lastUpdatedTime;
  if (lastUpdatedTime < 0.0)
  {
    lastUpdatedTime = -lastUpdatedTime;
  }

  *v5.i64 = floor(lastUpdatedTime + 0.5);
  v18 = (lastUpdatedTime - *v5.i64) * 1.84467441e19;
  *v12.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v5.i64[0] = vbslq_s8(v11, v12, v5).i64[0];
  v19 = 2654435761u * *v5.i64;
  v20 = v19 + v18;
  if (v18 <= 0.0)
  {
    v20 = 2654435761u * *v5.i64;
  }

  v21 = v19 - fabs(v18);
  if (v18 < 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = [(NSString *)self->_lastUpdateOSVersion hash];
  v24 = [(NSString *)self->_lastUpdateAlgorithmVersion hash];
  v25 = [(NSData *)self->_assetData hash];
  if (*&self->_has)
  {
    v26 = 2654435761 * self->_assetState;
  }

  else
  {
    v26 = 0;
  }

  v27 = v4 ^ (2654435761 * type) ^ v16 ^ v22 ^ v23;
  v28 = v24 ^ v25 ^ v26 ^ [(NSString *)self->_enrollmentIdentifier hash];
  v29 = v28 ^ [(NSData *)self->_creatorAttest hash];
  v30 = v29 ^ [(NSData *)self->_serverAttest hash];
  v31 = v30 ^ [(NSString *)self->_deviceIdentifier hash];
  return v27 ^ v31 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_type = *(fromCopy + 4);
  v5 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(MASDPlainAsset *)self setLabel:?];
    fromCopy = v5;
  }

  self->_creationTime = *(fromCopy + 2);
  self->_lastUpdatedTime = *(fromCopy + 3);
  if (*(fromCopy + 12))
  {
    [(MASDPlainAsset *)self setLastUpdateOSVersion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 11))
  {
    [(MASDPlainAsset *)self setLastUpdateAlgorithmVersion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(MASDPlainAsset *)self setAssetData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 112))
  {
    self->_assetState = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 9))
  {
    [(MASDPlainAsset *)self setEnrollmentIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(MASDPlainAsset *)self setCreatorAttest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 13))
  {
    [(MASDPlainAsset *)self setServerAttest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(MASDPlainAsset *)self setDeviceIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(MASDPlainAsset *)self setDeviceName:?];
    fromCopy = v5;
  }
}

@end