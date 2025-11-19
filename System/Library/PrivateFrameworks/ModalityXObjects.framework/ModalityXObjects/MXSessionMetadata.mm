@interface MXSessionMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUserInterfaceIdiom:(id)a3;
- (int)userInterfaceIdiom;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataSharingOptInStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXSessionMetadata

- (void)setHasDataSharingOptInStatus:(BOOL)a3
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

- (int)StringAsUserInterfaceIdiom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"USER_INTERFACE_IDIOM_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CAR"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ZEUS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HORSEMAN"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CAMEO"])
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
  v5 = [(MXSessionMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v5 = [(MXDeviceInfo *)deviceInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"device_info"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_dataSharingOptInStatus];
    [v3 setObject:v7 forKey:@"data_sharing_opt_in_status"];

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

    [v3 setObject:v9 forKey:@"user_interface_idiom"];
  }

  language = self->_language;
  if (language)
  {
    [v3 setObject:language forKey:@"language"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    userInterfaceIdiom = self->_userInterfaceIdiom;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_deviceInfo)
  {
    [v4 setDeviceInfo:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 28) = self->_dataSharingOptInStatus;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_userInterfaceIdiom;
    *(v4 + 32) |= 1u;
  }

  if (self->_language)
  {
    [v6 setLanguage:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MXDeviceInfo *)self->_deviceInfo copyWithZone:a3];
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

  v9 = [(NSString *)self->_language copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo | *(v4 + 1))
  {
    if (![(MXDeviceInfo *)deviceInfo isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(v4 + 32);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 32) & 2) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(v4 + 28);
  if (self->_dataSharingOptInStatus)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_18;
  }

LABEL_6:
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_userInterfaceIdiom != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_18;
  }

  language = self->_language;
  if (language | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  deviceInfo = self->_deviceInfo;
  v6 = *(v4 + 1);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 32);
  if ((v7 & 2) != 0)
  {
    self->_dataSharingOptInStatus = *(v4 + 28);
    *&self->_has |= 2u;
    v7 = *(v4 + 32);
  }

  if (v7)
  {
    self->_userInterfaceIdiom = *(v4 + 6);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(MXSessionMetadata *)self setLanguage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end