@interface BMPBHealthKitWorkoutEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsFirstPartyDonation:(BOOL)donation;
- (void)setHasIsIndoor:(BOOL)indoor;
- (void)setHasIsUpdate:(BOOL)update;
- (void)writeTo:(id)to;
@end

@implementation BMPBHealthKitWorkoutEvent

- (void)setHasIsFirstPartyDonation:(BOOL)donation
{
  if (donation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsIndoor:(BOOL)indoor
{
  if (indoor)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)eventType
{
  if (*&self->_has)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Start"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Stop"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Resume"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Pause"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHealthKitWorkoutEvent;
  v4 = [(BMPBHealthKitWorkoutEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBHealthKitWorkoutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFirstPartyDonation];
    [dictionary setObject:v5 forKey:@"isFirstPartyDonation"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isIndoor];
    [dictionary setObject:v6 forKey:@"isIndoor"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [dictionary setObject:activityType forKey:@"activityType"];
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    if (eventType >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v9 = off_1E6E53848[eventType];
    }

    [dictionary setObject:v9 forKey:@"eventType"];
  }

  activityUUID = self->_activityUUID;
  if (activityUUID)
  {
    [dictionary setObject:activityUUID forKey:@"activityUUID"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUpdate];
    [dictionary setObject:v11 forKey:@"isUpdate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    isFirstPartyDonation = self->_isFirstPartyDonation;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isIndoor = self->_isIndoor;
    PBDataWriterWriteBOOLField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_activityUUID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    isUpdate = self->_isUpdate;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[28] = self->_isFirstPartyDonation;
    toCopy[32] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[29] = self->_isIndoor;
    toCopy[32] |= 4u;
  }

  v6 = toCopy;
  if (self->_activityType)
  {
    [toCopy setActivityType:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_eventType;
    toCopy[32] |= 1u;
  }

  if (self->_activityUUID)
  {
    [v6 setActivityUUID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    toCopy[30] = self->_isUpdate;
    toCopy[32] |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[28] = self->_isFirstPartyDonation;
    v5[32] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v5[29] = self->_isIndoor;
    v5[32] |= 4u;
  }

  v8 = [(NSString *)self->_activityType copyWithZone:zone];
  v9 = *(v6 + 1);
  *(v6 + 1) = v8;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_eventType;
    v6[32] |= 1u;
  }

  v10 = [(NSString *)self->_activityUUID copyWithZone:zone];
  v11 = *(v6 + 2);
  *(v6 + 2) = v10;

  if ((*&self->_has & 8) != 0)
  {
    v6[30] = self->_isUpdate;
    v6[32] |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_33;
    }

    v9 = *(equalCopy + 28);
    if (self->_isFirstPartyDonation)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_33;
    }

    v10 = *(equalCopy + 29);
    if (self->_isIndoor)
    {
      if ((*(equalCopy + 29) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 29))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_33;
  }

  activityType = self->_activityType;
  if (activityType | *(equalCopy + 1))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 32);
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_33;
  }

  activityUUID = self->_activityUUID;
  if (activityUUID | *(equalCopy + 2))
  {
    if (![(NSString *)activityUUID isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v12 = (*(equalCopy + 32) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) != 0)
    {
      if (self->_isUpdate)
      {
        if (*(equalCopy + 30))
        {
          goto LABEL_36;
        }
      }

      else if (!*(equalCopy + 30))
      {
LABEL_36:
        v12 = 1;
        goto LABEL_34;
      }
    }

LABEL_33:
    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_isFirstPartyDonation;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isIndoor;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_activityType hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_eventType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_activityUUID hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_isUpdate;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_isFirstPartyDonation = *(fromCopy + 28);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if ((v5 & 4) != 0)
  {
    self->_isIndoor = *(fromCopy + 29);
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BMPBHealthKitWorkoutEvent *)self setActivityType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 32))
  {
    self->_eventType = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBHealthKitWorkoutEvent *)self setActivityUUID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 32) & 8) != 0)
  {
    self->_isUpdate = *(fromCopy + 30);
    *&self->_has |= 8u;
  }
}

@end