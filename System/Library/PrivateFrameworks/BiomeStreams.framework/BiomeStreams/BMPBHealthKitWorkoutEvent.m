@interface BMPBHealthKitWorkoutEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)a3;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsFirstPartyDonation:(BOOL)a3;
- (void)setHasIsIndoor:(BOOL)a3;
- (void)setHasIsUpdate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBHealthKitWorkoutEvent

- (void)setHasIsFirstPartyDonation:(BOOL)a3
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

- (void)setHasIsIndoor:(BOOL)a3
{
  if (a3)
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

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Start"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Resume"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Pause"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsUpdate:(BOOL)a3
{
  if (a3)
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
  v5 = [(BMPBHealthKitWorkoutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFirstPartyDonation];
    [v3 setObject:v5 forKey:@"isFirstPartyDonation"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isIndoor];
    [v3 setObject:v6 forKey:@"isIndoor"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [v3 setObject:activityType forKey:@"activityType"];
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

    [v3 setObject:v9 forKey:@"eventType"];
  }

  activityUUID = self->_activityUUID;
  if (activityUUID)
  {
    [v3 setObject:activityUUID forKey:@"activityUUID"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUpdate];
    [v3 setObject:v11 forKey:@"isUpdate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[28] = self->_isFirstPartyDonation;
    v4[32] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[29] = self->_isIndoor;
    v4[32] |= 4u;
  }

  v6 = v4;
  if (self->_activityType)
  {
    [v4 setActivityType:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_eventType;
    v4[32] |= 1u;
  }

  if (self->_activityUUID)
  {
    [v6 setActivityUUID:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    v4[30] = self->_isUpdate;
    v4[32] |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_activityType copyWithZone:a3];
  v9 = *(v6 + 1);
  *(v6 + 1) = v8;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_eventType;
    v6[32] |= 1u;
  }

  v10 = [(NSString *)self->_activityUUID copyWithZone:a3];
  v11 = *(v6 + 2);
  *(v6 + 2) = v10;

  if ((*&self->_has & 8) != 0)
  {
    v6[30] = self->_isUpdate;
    v6[32] |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_33;
    }

    v9 = *(v4 + 28);
    if (self->_isFirstPartyDonation)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_33;
    }

    v10 = *(v4 + 29);
    if (self->_isIndoor)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_33;
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 1))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v8 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_eventType != *(v4 + 6))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_33;
  }

  activityUUID = self->_activityUUID;
  if (activityUUID | *(v4 + 2))
  {
    if (![(NSString *)activityUUID isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  v12 = (*(v4 + 32) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) != 0)
    {
      if (self->_isUpdate)
      {
        if (*(v4 + 30))
        {
          goto LABEL_36;
        }
      }

      else if (!*(v4 + 30))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_isFirstPartyDonation = *(v4 + 28);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 4) != 0)
  {
    self->_isIndoor = *(v4 + 29);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(BMPBHealthKitWorkoutEvent *)self setActivityType:?];
    v4 = v6;
  }

  if (*(v4 + 32))
  {
    self->_eventType = *(v4 + 6);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(BMPBHealthKitWorkoutEvent *)self setActivityUUID:?];
    v4 = v6;
  }

  if ((*(v4 + 32) & 8) != 0)
  {
    self->_isUpdate = *(v4 + 30);
    *&self->_has |= 8u;
  }
}

@end