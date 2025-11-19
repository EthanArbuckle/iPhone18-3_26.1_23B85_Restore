@interface BLTPBSetRemoteGlobalSettingsRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGlobalSummarizationSetting:(BOOL)a3;
- (void)setHasSettingDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSetRemoteGlobalSettingsRequest

- (void)setHasSettingDate:(BOOL)a3
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

- (void)setHasGlobalSummarizationSetting:(BOOL)a3
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
  v8.super_class = BLTPBSetRemoteGlobalSettingsRequest;
  v4 = [(BLTPBSetRemoteGlobalSettingsRequest *)&v8 description];
  v5 = [(BLTPBSetRemoteGlobalSettingsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_globalScheduledDeliverySetting];
    [v3 setObject:v7 forKey:@"globalScheduledDeliverySetting"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_settingDate];
  [v3 setObject:v8 forKey:@"settingDate"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_globalSummarizationSetting];
    [v3 setObject:v5 forKey:@"globalSummarizationSetting"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    globalScheduledDeliverySetting = self->_globalScheduledDeliverySetting;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  settingDate = self->_settingDate;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    globalSummarizationSetting = self->_globalSummarizationSetting;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_globalScheduledDeliverySetting;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = *&self->_settingDate;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[2] = self->_globalSummarizationSetting;
    *(v4 + 32) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_globalScheduledDeliverySetting;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = *&self->_settingDate;
  *(result + 32) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_globalSummarizationSetting;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_globalScheduledDeliverySetting != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_settingDate != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_globalSummarizationSetting != *(v4 + 2))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_globalScheduledDeliverySetting;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  settingDate = self->_settingDate;
  if (settingDate < 0.0)
  {
    settingDate = -settingDate;
  }

  *v2.i64 = floor(settingDate + 0.5);
  v6 = (settingDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761u * self->_globalSummarizationSetting;
  }

  else
  {
    v9 = 0;
  }

  return v8 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_globalScheduledDeliverySetting = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_settingDate = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 2) != 0)
  {
LABEL_4:
    self->_globalSummarizationSetting = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end