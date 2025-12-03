@interface MXSessionMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUserInterfaceIdiom:(id)idiom;
- (int)userInterfaceIdiom;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDataSharingOptInStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation MXSessionMetadata

- (void)setHasDataSharingOptInStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)userInterfaceIdiom
{
  if (*&self->_has)
  {
    return self->_userInterfaceIdiom;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsUserInterfaceIdiom:(id)idiom
{
  idiomCopy = idiom;
  if ([idiomCopy isEqualToString:@"USER_INTERFACE_IDIOM_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([idiomCopy isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([idiomCopy isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([idiomCopy isEqualToString:@"CAR"])
  {
    v4 = 3;
  }

  else if ([idiomCopy isEqualToString:@"ZEUS"])
  {
    v4 = 4;
  }

  else if ([idiomCopy isEqualToString:@"WATCH"])
  {
    v4 = 5;
  }

  else if ([idiomCopy isEqualToString:@"HORSEMAN"])
  {
    v4 = 6;
  }

  else if ([idiomCopy isEqualToString:@"CAMEO"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXSessionMetadata;
  v4 = [(MXSessionMetadata *)&v8 description];
  dictionaryRepresentation = [(MXSessionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    dictionaryRepresentation = [(MXDeviceInfo *)deviceInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"device_info"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_dataSharingOptInStatus];
    [dictionary setObject:v7 forKey:@"data_sharing_opt_in_status"];

    has = self->_has;
  }

  if (has)
  {
    userInterfaceIdiom = self->_userInterfaceIdiom;
    if (userInterfaceIdiom >= 8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_userInterfaceIdiom];
    }

    else
    {
      v9 = off_27991BD38[userInterfaceIdiom];
    }

    [dictionary setObject:v9 forKey:@"user_interface_idiom"];
  }

  language = self->_language;
  if (language)
  {
    [dictionary setObject:language forKey:@"language"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    userInterfaceIdiom = self->_userInterfaceIdiom;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_deviceInfo)
  {
    [toCopy setDeviceInfo:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 28) = self->_dataSharingOptInStatus;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_userInterfaceIdiom;
    *(toCopy + 32) |= 1u;
  }

  if (self->_language)
  {
    [v6 setLanguage:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MXDeviceInfo *)self->_deviceInfo copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_dataSharingOptInStatus;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_userInterfaceIdiom;
    *(v5 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_language copyWithZone:zone];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo | *(equalCopy + 1))
  {
    if (![(MXDeviceInfo *)deviceInfo isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(equalCopy + 32);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 32) & 2) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(equalCopy + 28);
  if (self->_dataSharingOptInStatus)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_18;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_userInterfaceIdiom != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_18;
  }

  language = self->_language;
  if (language | *(equalCopy + 2))
  {
    v9 = [(NSString *)language isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(MXDeviceInfo *)self->_deviceInfo hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_dataSharingOptInStatus;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_language hash];
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_userInterfaceIdiom;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_language hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceInfo = self->_deviceInfo;
  v6 = *(fromCopy + 1);
  v8 = fromCopy;
  if (deviceInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MXDeviceInfo *)deviceInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MXSessionMetadata *)self setDeviceInfo:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if ((v7 & 2) != 0)
  {
    self->_dataSharingOptInStatus = *(fromCopy + 28);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 32);
  }

  if (v7)
  {
    self->_userInterfaceIdiom = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(MXSessionMetadata *)self setLanguage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end