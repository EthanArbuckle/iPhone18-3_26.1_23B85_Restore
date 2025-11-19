@interface BLTPBSectionInfoSettings
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScheduledDeliverySetting:(BOOL)a3;
- (void)setHasTimeSensitiveSetting:(BOOL)a3;
- (void)setHasUserConfiguredTimeSensitiveSetting:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSectionInfoSettings

- (void)setHasTimeSensitiveSetting:(BOOL)a3
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

- (void)setHasUserConfiguredTimeSensitiveSetting:(BOOL)a3
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

- (void)setHasScheduledDeliverySetting:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSectionInfoSettings;
  v4 = [(BLTPBSectionInfoSettings *)&v8 description];
  v5 = [(BLTPBSectionInfoSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_announceSetting];
    [v3 setObject:v4 forKey:@"announceSetting"];
  }

  muteAssertion = self->_muteAssertion;
  if (muteAssertion)
  {
    v6 = [(BLTPBMuteAssertion *)muteAssertion dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"muteAssertion"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_timeSensitiveSetting];
    [v3 setObject:v10 forKey:@"timeSensitiveSetting"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_userConfiguredTimeSensitiveSetting];
  [v3 setObject:v11 forKey:@"userConfiguredTimeSensitiveSetting"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_scheduledDeliverySetting];
    [v3 setObject:v8 forKey:@"scheduledDeliverySetting"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    announceSetting = self->_announceSetting;
    PBDataWriterWriteInt32Field();
  }

  if (self->_muteAssertion)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    timeSensitiveSetting = self->_timeSensitiveSetting;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  userConfiguredTimeSensitiveSetting = self->_userConfiguredTimeSensitiveSetting;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    scheduledDeliverySetting = self->_scheduledDeliverySetting;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_announceSetting;
    *(v4 + 36) |= 1u;
  }

  if (self->_muteAssertion)
  {
    v6 = v4;
    [v4 setMuteAssertion:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[7] = self->_timeSensitiveSetting;
    *(v4 + 36) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 32) = self->_userConfiguredTimeSensitiveSetting;
  *(v4 + 36) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v4[6] = self->_scheduledDeliverySetting;
    *(v4 + 36) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_announceSetting;
    *(v5 + 36) |= 1u;
  }

  v7 = [(BLTPBMuteAssertion *)self->_muteAssertion copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 32) = self->_userConfiguredTimeSensitiveSetting;
    *(v6 + 36) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 28) = self->_timeSensitiveSetting;
  *(v6 + 36) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 24) = self->_scheduledDeliverySetting;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_announceSetting != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_22;
  }

  muteAssertion = self->_muteAssertion;
  if (muteAssertion | *(v4 + 2))
  {
    if (![(BLTPBMuteAssertion *)muteAssertion isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_timeSensitiveSetting != *(v4 + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(v4 + 32);
  if (self->_userConfiguredTimeSensitiveSetting)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_22;
  }

LABEL_17:
  v8 = (*(v4 + 36) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_scheduledDeliverySetting != *(v4 + 6))
    {
      goto LABEL_22;
    }

    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_announceSetting;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BLTPBMuteAssertion *)self->_muteAssertion hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_timeSensitiveSetting;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_userConfiguredTimeSensitiveSetting;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_scheduledDeliverySetting;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[9])
  {
    self->_announceSetting = v4[2];
    *&self->_has |= 1u;
  }

  muteAssertion = self->_muteAssertion;
  v7 = *(v5 + 2);
  if (muteAssertion)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    [(BLTPBMuteAssertion *)muteAssertion mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v9 = v5;
    [(BLTPBSectionInfoSettings *)self setMuteAssertion:?];
  }

  v5 = v9;
LABEL_9:
  v8 = *(v5 + 36);
  if ((v8 & 4) != 0)
  {
    self->_timeSensitiveSetting = v5[7];
    *&self->_has |= 4u;
    v8 = *(v5 + 36);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v5[9] & 8) == 0)
  {
    goto LABEL_11;
  }

  self->_userConfiguredTimeSensitiveSetting = *(v5 + 32);
  *&self->_has |= 8u;
  if ((v5[9] & 2) != 0)
  {
LABEL_12:
    self->_scheduledDeliverySetting = v5[6];
    *&self->_has |= 2u;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

@end