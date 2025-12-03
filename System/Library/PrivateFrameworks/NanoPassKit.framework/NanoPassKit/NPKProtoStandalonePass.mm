@interface NPKProtoStandalonePass
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPassType:(id)type;
- (int)passType;
- (unint64_t)hash;
- (void)addUserInfos:(id)infos;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRemotePass:(BOOL)pass;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePass

- (int)passType
{
  if (*&self->_has)
  {
    return self->_passType;
  }

  else
  {
    return 100;
  }
}

- (int)StringAsPassType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Barcode"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"Payment"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"Any"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (void)addUserInfos:(id)infos
{
  infosCopy = infos;
  userInfos = self->_userInfos;
  v8 = infosCopy;
  if (!userInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userInfos;
    self->_userInfos = v6;

    infosCopy = v8;
    userInfos = self->_userInfos;
  }

  [(NSMutableArray *)userInfos addObject:infosCopy];
}

- (void)setHasRemotePass:(BOOL)pass
{
  if (pass)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePass;
  v4 = [(NPKProtoStandalonePass *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePass *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    passType = self->_passType;
    if (passType)
    {
      if (passType == 100)
      {
        v5 = @"Barcode";
      }

      else if (passType == 110)
      {
        v5 = @"Payment";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_passType];
      }
    }

    else
    {
      v5 = @"Any";
    }

    [dictionary setObject:v5 forKey:@"passType"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [dictionary setObject:serialNumber forKey:@"serialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [dictionary setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [dictionary setObject:imageData forKey:@"imageData"];
  }

  localizedName = self->_localizedName;
  if (localizedName)
  {
    [dictionary setObject:localizedName forKey:@"localizedName"];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [dictionary setObject:localizedDescription forKey:@"localizedDescription"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [dictionary setObject:organizationName forKey:@"organizationName"];
  }

  if ([(NSMutableArray *)self->_userInfos count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_userInfos, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_userInfos;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"userInfos"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_remotePass];
    [dictionary setObject:v19 forKey:@"remotePass"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    passType = self->_passType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_userInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    remotePass = self->_remotePass;
    PBDataWriterWriteBOOLField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_passType;
    *(toCopy + 84) |= 1u;
  }

  v10 = toCopy;
  if (self->_imageData)
  {
    [toCopy setImageData:?];
  }

  if (self->_serialNumber)
  {
    [v10 setSerialNumber:?];
  }

  if (self->_passTypeIdentifier)
  {
    [v10 setPassTypeIdentifier:?];
  }

  if (self->_localizedName)
  {
    [v10 setLocalizedName:?];
  }

  if (self->_localizedDescription)
  {
    [v10 setLocalizedDescription:?];
  }

  if (self->_organizationName)
  {
    [v10 setOrganizationName:?];
  }

  if ([(NPKProtoStandalonePass *)self userInfosCount])
  {
    [v10 clearUserInfos];
    userInfosCount = [(NPKProtoStandalonePass *)self userInfosCount];
    if (userInfosCount)
    {
      v6 = userInfosCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoStandalonePass *)self userInfosAtIndex:i];
        [v10 addUserInfos:v8];
      }
    }
  }

  v9 = v10;
  if ((*&self->_has & 2) != 0)
  {
    v10[80] = self->_remotePass;
    v10[84] |= 2u;
  }

  if (self->_deviceName)
  {
    [v10 setDeviceName:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_passType;
    *(v5 + 84) |= 1u;
  }

  v7 = [(NSData *)self->_imageData copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v10 = *(v6 + 64);
  *(v6 + 64) = v9;

  v11 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v12 = *(v6 + 56);
  *(v6 + 56) = v11;

  v13 = [(NSString *)self->_localizedName copyWithZone:zone];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  v15 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  v17 = [(NSString *)self->_organizationName copyWithZone:zone];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = self->_userInfos;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v29 + 1) + 8 * v23) copyWithZone:{zone, v29}];
        [v6 addUserInfos:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 80) = self->_remotePass;
    *(v6 + 84) |= 2u;
  }

  v25 = [(NSString *)self->_deviceName copyWithZone:zone, v29];
  v26 = *(v6 + 8);
  *(v6 + 8) = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_passType != *(equalCopy + 12))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_26;
  }

  imageData = self->_imageData;
  if (imageData | *(equalCopy + 2) && ![(NSData *)imageData isEqual:?])
  {
    goto LABEL_26;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 8))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_26;
    }
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)passTypeIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  localizedName = self->_localizedName;
  if (localizedName | *(equalCopy + 4))
  {
    if (![(NSString *)localizedName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(equalCopy + 3))
  {
    if (![(NSString *)localizedDescription isEqual:?])
    {
      goto LABEL_26;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 5))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  userInfos = self->_userInfos;
  if (userInfos | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)userInfos isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v13 = *(equalCopy + 84);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 84) & 2) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 84) & 2) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(equalCopy + 80);
  if (self->_remotePass)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_26;
  }

LABEL_23:
  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 1))
  {
    v15 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_27:

  return v15;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_passType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_imageData hash];
  v5 = [(NSString *)self->_serialNumber hash];
  v6 = [(NSString *)self->_passTypeIdentifier hash];
  v7 = [(NSString *)self->_localizedName hash];
  v8 = [(NSString *)self->_localizedDescription hash];
  v9 = [(NSString *)self->_organizationName hash];
  v10 = [(NSMutableArray *)self->_userInfos hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_remotePass;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[21])
  {
    self->_passType = fromCopy[12];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoStandalonePass *)self setImageData:?];
  }

  if (*(v5 + 8))
  {
    [(NPKProtoStandalonePass *)self setSerialNumber:?];
  }

  if (*(v5 + 7))
  {
    [(NPKProtoStandalonePass *)self setPassTypeIdentifier:?];
  }

  if (*(v5 + 4))
  {
    [(NPKProtoStandalonePass *)self setLocalizedName:?];
  }

  if (*(v5 + 3))
  {
    [(NPKProtoStandalonePass *)self setLocalizedDescription:?];
  }

  if (*(v5 + 5))
  {
    [(NPKProtoStandalonePass *)self setOrganizationName:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 9);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoStandalonePass *)self addUserInfos:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(v5 + 84) & 2) != 0)
  {
    self->_remotePass = *(v5 + 80);
    *&self->_has |= 2u;
  }

  if (*(v5 + 1))
  {
    [(NPKProtoStandalonePass *)self setDeviceName:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end