@interface HDCodableUserDomainConceptLocalizedStringProperty
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableUserDomainConceptLocalizedStringProperty

- (void)setHasType:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableUserDomainConceptLocalizedStringProperty;
  v4 = [(HDCodableUserDomainConceptLocalizedStringProperty *)&v8 description];
  v5 = [(HDCodableUserDomainConceptLocalizedStringProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v10 forKey:@"type"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [v3 setObject:v11 forKey:@"version"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];
  }

LABEL_5:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v3 setObject:v8 forKey:@"deleted"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  version = self->_version;
  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_4:
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_type;
    *(v4 + 52) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[3] = self->_version;
  *(v4 + 52) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = *&self->_timestamp;
    *(v4 + 52) |= 1u;
  }

LABEL_5:
  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  if (self->_locale)
  {
    [v6 setLocale:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 48) = self->_deleted;
    *(v4 + 52) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 52) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(v5 + 24) = self->_version;
  *(v5 + 52) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_locale copyWithZone:a3];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 48) = self->_deleted;
    *(v6 + 52) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(v4 + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_version != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_23;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 5) && ![(NSString *)stringValue isEqual:?])
  {
    goto LABEL_23;
  }

  locale = self->_locale;
  if (locale | *(v4 + 4))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v8 = (*(v4 + 52) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0)
    {
LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }

    if (self->_deleted)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_23;
    }

    v8 = 1;
  }

LABEL_24:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_version;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_11:
  v11 = [(NSString *)self->_stringValue hash];
  v12 = [(NSString *)self->_locale hash];
  if ((*&self->_has & 8) != 0)
  {
    v13 = 2654435761 * self->_deleted;
  }

  else
  {
    v13 = 0;
  }

  return v6 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 52);
  if ((v5 & 2) != 0)
  {
    self->_type = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 52);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(v4 + 3);
  *&self->_has |= 4u;
  if (*(v4 + 52))
  {
LABEL_4:
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 5))
  {
    [(HDCodableUserDomainConceptLocalizedStringProperty *)self setStringValue:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(HDCodableUserDomainConceptLocalizedStringProperty *)self setLocale:?];
    v4 = v6;
  }

  if ((*(v4 + 52) & 8) != 0)
  {
    self->_deleted = *(v4 + 48);
    *&self->_has |= 8u;
  }
}

@end