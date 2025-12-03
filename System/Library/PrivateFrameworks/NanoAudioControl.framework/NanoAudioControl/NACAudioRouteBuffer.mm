@interface NACAudioRouteBuffer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRouteType:(id)type;
- (int)routeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPicked:(BOOL)picked;
- (void)setHasSupportsVolumeControl:(BOOL)control;
- (void)writeTo:(id)to;
@end

@implementation NACAudioRouteBuffer

- (void)setHasSupportsVolumeControl:(BOOL)control
{
  if (control)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPicked:(BOOL)picked
{
  if (picked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)routeType
{
  if (*&self->_has)
  {
    return self->_routeType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRouteType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Speaker"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Headphones"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"AirPods"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Powerbeats"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BeatsSolo"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"BeatsStudio"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"BeatsX"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CarPlay"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"AppleTV"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"HomePod"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"AirTunes"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"HomePodPair"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"TV"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"PowerbeatsPro"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Beats419"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"Beats364"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"B298"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"B515"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"B372"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"B520"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"B520Pair"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"B507"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"B688"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"B494"])
  {
    v4 = 24;
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
  v8.super_class = NACAudioRouteBuffer;
  v4 = [(NACAudioRouteBuffer *)&v8 description];
  dictionaryRepresentation = [(NACAudioRouteBuffer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  routeName = self->_routeName;
  if (routeName)
  {
    [v4 setObject:routeName forKey:@"routeName"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_picked];
    [v4 setObject:v9 forKey:@"picked"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    routeType = self->_routeType;
    if (routeType >= 0x19)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_routeType];
    }

    else
    {
      v11 = off_27992BC90[routeType];
    }

    [v4 setObject:v11 forKey:@"routeType"];

    goto LABEL_15;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsVolumeControl];
  [v4 setObject:v8 forKey:@"supportsVolumeControl"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (has)
  {
    goto LABEL_11;
  }

LABEL_15:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_routeName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    supportsVolumeControl = self->_supportsVolumeControl;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  picked = self->_picked;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_8:
    routeType = self->_routeType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueIdentifier)
  {
    [toCopy setUniqueIdentifier:?];
    toCopy = v6;
  }

  if (self->_routeName)
  {
    [v6 setRouteName:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 33) = self->_supportsVolumeControl;
    *(toCopy + 36) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 32) = self->_picked;
  *(toCopy + 36) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 4) = self->_routeType;
    *(toCopy + 36) |= 1u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_routeName copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 32) = self->_picked;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 33) = self->_supportsVolumeControl;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 16) = self->_routeType;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_25;
    }
  }

  routeName = self->_routeName;
  if (routeName | *(equalCopy + 1))
  {
    if (![(NSString *)routeName isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_25;
    }

    v8 = *(equalCopy + 33);
    if (self->_supportsVolumeControl)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_25;
    }

    v9 = *(equalCopy + 32);
    if (self->_picked)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_25;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_routeType == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v7 = 0;
  }

LABEL_26:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  v4 = [(NSString *)self->_routeName hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_supportsVolumeControl;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_picked;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_routeType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NACAudioRouteBuffer *)self setUniqueIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(NACAudioRouteBuffer *)self setRouteName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_supportsVolumeControl = *(fromCopy + 33);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_picked = *(fromCopy + 32);
  *&self->_has |= 2u;
  if (*(fromCopy + 36))
  {
LABEL_8:
    self->_routeType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_9:
}

@end