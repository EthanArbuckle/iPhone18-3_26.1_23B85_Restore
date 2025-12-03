@interface NSSAboutInfoRespMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBatteryCurrentCapacity:(BOOL)capacity;
- (void)setHasBatteryIsCharging:(BOOL)charging;
- (void)setHasNumberOfApps:(BOOL)apps;
- (void)setHasNumberOfPhotos:(BOOL)photos;
- (void)setHasNumberOfSongs:(BOOL)songs;
- (void)setHasPurgeableSpace:(BOOL)space;
- (void)setHasUserDeletableSpace:(BOOL)space;
- (void)writeTo:(id)to;
@end

@implementation NSSAboutInfoRespMsg

- (void)setHasNumberOfApps:(BOOL)apps
{
  if (apps)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfSongs:(BOOL)songs
{
  if (songs)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumberOfPhotos:(BOOL)photos
{
  if (photos)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasBatteryCurrentCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasBatteryIsCharging:(BOOL)charging
{
  if (charging)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasPurgeableSpace:(BOOL)space
{
  if (space)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasUserDeletableSpace:(BOOL)space
{
  if (space)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSAboutInfoRespMsg;
  v4 = [(NSSAboutInfoRespMsg *)&v8 description];
  dictionaryRepresentation = [(NSSAboutInfoRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_availableStorageInBytes];
    [dictionary setObject:v7 forKey:@"availableStorageInBytes"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfApps];
  [dictionary setObject:v8 forKey:@"numberOfApps"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfSongs];
  [dictionary setObject:v9 forKey:@"numberOfSongs"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfPhotos];
  [dictionary setObject:v10 forKey:@"numberOfPhotos"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_batteryCurrentCapacity];
  [dictionary setObject:v11 forKey:@"batteryCurrentCapacity"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_batteryIsCharging];
  [dictionary setObject:v12 forKey:@"batteryIsCharging"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_purgeableSpace];
  [dictionary setObject:v13 forKey:@"purgeableSpace"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_userDeletableSpace];
    [dictionary setObject:v5 forKey:@"userDeletableSpace"];
  }

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    availableStorageInBytes = self->_availableStorageInBytes;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  numberOfApps = self->_numberOfApps;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  numberOfSongs = self->_numberOfSongs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  numberOfPhotos = self->_numberOfPhotos;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  batteryCurrentCapacity = self->_batteryCurrentCapacity;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  batteryIsCharging = self->_batteryIsCharging;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  purgeableSpace = self->_purgeableSpace;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    userDeletableSpace = self->_userDeletableSpace;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_availableStorageInBytes;
    *(toCopy + 68) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_numberOfApps;
  *(toCopy + 68) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[5] = self->_numberOfSongs;
  *(toCopy + 68) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[4] = self->_numberOfPhotos;
  *(toCopy + 68) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[2] = self->_batteryCurrentCapacity;
  *(toCopy + 68) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 64) = self->_batteryIsCharging;
  *(toCopy + 68) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  toCopy[6] = self->_purgeableSpace;
  *(toCopy + 68) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    toCopy[7] = self->_userDeletableSpace;
    *(toCopy + 68) |= 0x40u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_availableStorageInBytes;
    *(result + 68) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_numberOfApps;
  *(result + 68) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 5) = self->_numberOfSongs;
  *(result + 68) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 4) = self->_numberOfPhotos;
  *(result + 68) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 2) = self->_batteryCurrentCapacity;
  *(result + 68) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 64) = self->_batteryIsCharging;
  *(result + 68) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 6) = self->_purgeableSpace;
  *(result + 68) |= 0x20u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 7) = self->_userDeletableSpace;
  *(result + 68) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_availableStorageInBytes != *(equalCopy + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_numberOfApps != *(equalCopy + 3))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0 || self->_numberOfSongs != *(equalCopy + 5))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0 || self->_numberOfPhotos != *(equalCopy + 4))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 68) & 8) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_batteryCurrentCapacity != *(equalCopy + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(equalCopy + 68) & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v6 = 0;
    goto LABEL_44;
  }

  if ((*(equalCopy + 68) & 0x80) == 0)
  {
    goto LABEL_43;
  }

  v5 = *(equalCopy + 64);
  if (self->_batteryIsCharging)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_43;
  }

LABEL_29:
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 68) & 0x20) == 0 || self->_purgeableSpace != *(equalCopy + 6))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 68) & 0x20) != 0)
  {
    goto LABEL_43;
  }

  v6 = (*(equalCopy + 68) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 68) & 0x40) == 0 || self->_userDeletableSpace != *(equalCopy + 7))
    {
      goto LABEL_43;
    }

    v6 = 1;
  }

LABEL_44:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_availableStorageInBytes;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_numberOfApps;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_numberOfSongs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_numberOfPhotos;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_batteryCurrentCapacity;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_batteryIsCharging;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_purgeableSpace;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_userDeletableSpace;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 68);
  if (v5)
  {
    self->_availableStorageInBytes = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 68) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numberOfApps = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_numberOfSongs = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_numberOfPhotos = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_batteryCurrentCapacity = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_batteryIsCharging = *(fromCopy + 64);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_purgeableSpace = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 68) & 0x40) != 0)
  {
LABEL_9:
    self->_userDeletableSpace = *(fromCopy + 7);
    *&self->_has |= 0x40u;
  }

LABEL_10:
}

@end