@interface HDCodableMedicalDate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUnderlyingDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMedicalDate

- (void)setHasUnderlyingDate:(BOOL)a3
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
  v8.super_class = HDCodableMedicalDate;
  v4 = [(HDCodableMedicalDate *)&v8 description];
  v5 = [(HDCodableMedicalDate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_form];
    [v3 setObject:v5 forKey:@"form"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_underlyingDate];
    [v3 setObject:v6 forKey:@"underlyingDate"];
  }

  originalTimeZoneString = self->_originalTimeZoneString;
  if (originalTimeZoneString)
  {
    [v3 setObject:originalTimeZoneString forKey:@"originalTimeZoneString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    form = self->_form;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    underlyingDate = self->_underlyingDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_originalTimeZoneString)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_form;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = *&self->_underlyingDate;
    *(v4 + 32) |= 2u;
  }

  if (self->_originalTimeZoneString)
  {
    v6 = v4;
    [v4 setOriginalTimeZoneString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_form;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_underlyingDate;
    *(v5 + 32) |= 2u;
  }

  v8 = [(NSString *)self->_originalTimeZoneString copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_form != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_underlyingDate != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  originalTimeZoneString = self->_originalTimeZoneString;
  if (originalTimeZoneString | *(v4 + 3))
  {
    v7 = [(NSString *)originalTimeZoneString isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_form;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSString *)self->_originalTimeZoneString hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  underlyingDate = self->_underlyingDate;
  if (underlyingDate < 0.0)
  {
    underlyingDate = -underlyingDate;
  }

  *v6.i64 = floor(underlyingDate + 0.5);
  v10 = (underlyingDate - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v12 ^ v8 ^ [(NSString *)self->_originalTimeZoneString hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_form = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_underlyingDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(HDCodableMedicalDate *)self setOriginalTimeZoneString:?];
    v4 = v6;
  }
}

@end