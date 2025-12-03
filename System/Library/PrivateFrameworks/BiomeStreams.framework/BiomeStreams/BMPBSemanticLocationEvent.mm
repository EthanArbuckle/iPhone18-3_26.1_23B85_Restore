@interface BMPBSemanticLocationEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaceType:(id)type;
- (int)StringAsUserSpecificPlaceType:(id)type;
- (int)placeType;
- (int)userSpecificPlaceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStarting:(BOOL)starting;
- (void)setHasUserSpecificPlaceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BMPBSemanticLocationEvent

- (void)setHasStarting:(BOOL)starting
{
  if (starting)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)userSpecificPlaceType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_userSpecificPlaceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUserSpecificPlaceType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsUserSpecificPlaceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unkown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Home"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Work"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"School"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Gym"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)placeType
{
  if (*&self->_has)
  {
    return self->_placeType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPlaceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AreaOfInterest"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PointOfInterest"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Address"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSemanticLocationEvent;
  v4 = [(BMPBSemanticLocationEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSemanticLocationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [dictionary setObject:v5 forKey:@"starting"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  userSpecificPlaceType = self->_userSpecificPlaceType;
  if (userSpecificPlaceType >= 5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_userSpecificPlaceType];
  }

  else
  {
    v7 = off_1E6E53BC8[userSpecificPlaceType];
  }

  [dictionary setObject:v7 forKey:@"userSpecificPlaceType"];

  if (*&self->_has)
  {
LABEL_10:
    placeType = self->_placeType;
    if (placeType >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_placeType];
    }

    else
    {
      v9 = off_1E6E53BF0[placeType];
    }

    [dictionary setObject:v9 forKey:@"placeType"];
  }

LABEL_14:
  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier)
  {
    [dictionary setObject:loiIdentifier forKey:@"loiIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  userSpecificPlaceType = self->_userSpecificPlaceType;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    placeType = self->_placeType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_loiIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[24] = self->_starting;
    toCopy[28] |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 5) = self->_userSpecificPlaceType;
  toCopy[28] |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 4) = self->_placeType;
    toCopy[28] |= 1u;
  }

LABEL_5:
  if (self->_loiIdentifier)
  {
    v6 = toCopy;
    [toCopy setLoiIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_userSpecificPlaceType;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_starting;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 16) = self->_placeType;
    *(v5 + 28) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_loiIdentifier copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 28) & 4) == 0)
  {
    goto LABEL_22;
  }

  v6 = *(equalCopy + 24);
  if (self->_starting)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_userSpecificPlaceType != *(equalCopy + 5))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_placeType != *(equalCopy + 4))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_22;
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier | *(equalCopy + 1))
  {
    v8 = [(NSString *)loiIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_loiIdentifier hash:v3];
  }

  v6 = 2654435761 * self->_starting;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_userSpecificPlaceType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_placeType;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_loiIdentifier hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_starting = *(fromCopy + 24);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_userSpecificPlaceType = *(fromCopy + 5);
  *&self->_has |= 2u;
  if (*(fromCopy + 28))
  {
LABEL_4:
    self->_placeType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(BMPBSemanticLocationEvent *)self setLoiIdentifier:?];
    fromCopy = v6;
  }
}

@end