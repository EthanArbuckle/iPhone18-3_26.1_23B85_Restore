@interface HKCodableCellHeaderViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDetailsVisibility:(BOOL)a3;
- (void)setHasForceDayGranularity:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableCellHeaderViewModel

- (void)setHasForceDayGranularity:(BOOL)a3
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

- (void)setHasDetailsVisibility:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableCellHeaderViewModel;
  v4 = [(HKCodableCellHeaderViewModel *)&v8 description];
  v5 = [(HKCodableCellHeaderViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  titleText = self->_titleText;
  if (titleText)
  {
    [v3 setObject:titleText forKey:@"titleText"];
  }

  systemImageName = self->_systemImageName;
  if (systemImageName)
  {
    [v4 setObject:systemImageName forKey:@"systemImageName"];
  }

  foregroundColor = self->_foregroundColor;
  if (foregroundColor)
  {
    v8 = [(HKCodableColorRepresentation *)foregroundColor dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"foregroundColor"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_detailDate];
    [v4 setObject:v10 forKey:@"detailDate"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceDayGranularity];
    [v4 setObject:v11 forKey:@"forceDayGranularity"];
  }

  detailText = self->_detailText;
  if (detailText)
  {
    [v4 setObject:detailText forKey:@"detailText"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_detailsVisibility];
    [v4 setObject:v13 forKey:@"detailsVisibility"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_titleText)
  {
    [HKCodableCellHeaderViewModel writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  if (self->_systemImageName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_foregroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  v6 = v7;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v6 = v7;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = v7;
  }

  if (self->_detailText)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setTitleText:self->_titleText];
  if (self->_systemImageName)
  {
    [v6 setSystemImageName:?];
  }

  if (self->_foregroundColor)
  {
    [v6 setForegroundColor:?];
  }

  has = self->_has;
  v5 = v6;
  if (has)
  {
    *(v6 + 1) = *&self->_detailDate;
    *(v6 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 56) = self->_forceDayGranularity;
    *(v6 + 60) |= 4u;
  }

  if (self->_detailText)
  {
    [v6 setDetailText:?];
    v5 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_detailsVisibility;
    *(v5 + 60) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_titleText copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_systemImageName copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(HKCodableColorRepresentation *)self->_foregroundColor copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_detailDate;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 56) = self->_forceDayGranularity;
    *(v5 + 60) |= 4u;
  }

  v13 = [(NSString *)self->_detailText copyWithZone:a3];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_detailsVisibility;
    *(v5 + 60) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  titleText = self->_titleText;
  if (titleText | *(v4 + 6))
  {
    if (![(NSString *)titleText isEqual:?])
    {
      goto LABEL_23;
    }
  }

  systemImageName = self->_systemImageName;
  if (systemImageName | *(v4 + 5))
  {
    if (![(NSString *)systemImageName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  foregroundColor = self->_foregroundColor;
  if (foregroundColor | *(v4 + 4))
  {
    if (![(HKCodableColorRepresentation *)foregroundColor isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_detailDate != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0)
    {
      goto LABEL_23;
    }

    if (self->_forceDayGranularity)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_23;
  }

  detailText = self->_detailText;
  if (!(detailText | *(v4 + 3)))
  {
    goto LABEL_18;
  }

  if (![(NSString *)detailText isEqual:?])
  {
LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  has = self->_has;
LABEL_18:
  v10 = (*(v4 + 60) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_detailsVisibility != *(v4 + 2))
    {
      goto LABEL_23;
    }

    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_titleText hash];
  v4 = [(NSString *)self->_systemImageName hash];
  v5 = [(HKCodableColorRepresentation *)self->_foregroundColor hash];
  if (*&self->_has)
  {
    detailDate = self->_detailDate;
    if (detailDate < 0.0)
    {
      detailDate = -detailDate;
    }

    *v6.i64 = floor(detailDate + 0.5);
    v10 = (detailDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_forceDayGranularity;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_detailText hash];
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_detailsVisibility;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 6))
  {
    [(HKCodableCellHeaderViewModel *)self setTitleText:?];
    v4 = v8;
  }

  if (*(v4 + 5))
  {
    [(HKCodableCellHeaderViewModel *)self setSystemImageName:?];
    v4 = v8;
  }

  foregroundColor = self->_foregroundColor;
  v6 = *(v4 + 4);
  if (foregroundColor)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    foregroundColor = [(HKCodableColorRepresentation *)foregroundColor mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    foregroundColor = [(HKCodableCellHeaderViewModel *)self setForegroundColor:?];
  }

  v4 = v8;
LABEL_11:
  v7 = *(v4 + 60);
  if (v7)
  {
    self->_detailDate = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 60);
  }

  if ((v7 & 4) != 0)
  {
    self->_forceDayGranularity = *(v4 + 56);
    *&self->_has |= 4u;
  }

  if (*(v4 + 3))
  {
    foregroundColor = [(HKCodableCellHeaderViewModel *)self setDetailText:?];
    v4 = v8;
  }

  if ((*(v4 + 60) & 2) != 0)
  {
    self->_detailsVisibility = *(v4 + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](foregroundColor, v4);
}

@end