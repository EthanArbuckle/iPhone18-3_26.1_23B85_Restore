@interface BLTPBSetRemoteGlobalSpokenSettingEnabledRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSettingEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetRemoteGlobalSpokenSettingEnabledRequest

- (void)setHasSettingEnabled:(BOOL)enabled
{
  if (enabled)
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
  v8.super_class = BLTPBSetRemoteGlobalSpokenSettingEnabledRequest;
  v4 = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetRemoteGlobalSpokenSettingEnabledRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_settingEnabled];
    [dictionary setObject:v5 forKey:@"settingEnabled"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_settingDate];
    [dictionary setObject:v6 forKey:@"settingDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    settingEnabled = self->_settingEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    settingDate = self->_settingDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[16] = self->_settingEnabled;
    toCopy[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_settingDate;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 16) = self->_settingEnabled;
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = *&self->_settingDate;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(equalCopy + 16);
    if (self->_settingEnabled)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_9;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_settingDate == *(equalCopy + 1))
    {
      v5 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_settingEnabled;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    return v8 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
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

  return v8 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_settingEnabled = *(fromCopy + 16);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
  }

  if (v5)
  {
    self->_settingDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end