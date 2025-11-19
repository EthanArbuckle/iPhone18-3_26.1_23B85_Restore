@interface NRPBNumber
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasFloatValue:(BOOL)a3;
- (void)setHasInt32Value:(BOOL)a3;
- (void)setHasInt64Value:(BOOL)a3;
- (void)setHasIsShortOrChar:(BOOL)a3;
- (void)setHasIsUnsigned:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRPBNumber

- (void)setHasInt32Value:(BOOL)a3
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

- (void)setHasFloatValue:(BOOL)a3
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

- (void)setHasBoolValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasInt64Value:(BOOL)a3
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

- (void)setHasIsUnsigned:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsShortOrChar:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBNumber;
  v4 = [(NRPBNumber *)&v8 description];
  v5 = [(NRPBNumber *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_int32Value];
    [v3 setObject:v8 forKey:@"int32Value"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_floatValue;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v9 forKey:@"floatValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
  [v3 setObject:v10 forKey:@"doubleValue"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
  [v3 setObject:v11 forKey:@"BOOLValue"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_int64Value];
  [v3 setObject:v12 forKey:@"int64Value"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUnsigned];
  [v3 setObject:v13 forKey:@"isUnsigned"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isShortOrChar];
    [v3 setObject:v6 forKey:@"isShortOrChar"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    int32Value = self->_int32Value;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  floatValue = self->_floatValue;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  doubleValue = self->_doubleValue;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  BOOLValue = self->_BOOLValue;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  int64Value = self->_int64Value;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  isUnsigned = self->_isUnsigned;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    isShortOrChar = self->_isShortOrChar;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[7] = self->_int32Value;
    *(v4 + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = LODWORD(self->_floatValue);
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 1) = *&self->_doubleValue;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 32) = self->_BOOLValue;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 2) = self->_int64Value;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v4 + 34) = self->_isUnsigned;
  *(v4 + 36) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    *(v4 + 33) = self->_isShortOrChar;
    *(v4 + 36) |= 0x20u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 7) = self->_int32Value;
    *(result + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = LODWORD(self->_floatValue);
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 1) = *&self->_doubleValue;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 32) = self->_BOOLValue;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = self->_int64Value;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 34) = self->_isUnsigned;
  *(result + 36) |= 0x40u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 33) = self->_isShortOrChar;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_int32Value != *(v4 + 7))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_floatValue != *(v4 + 6))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0)
    {
      goto LABEL_38;
    }

    v5 = *(v4 + 32);
    if (self->_BOOLValue)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_int64Value != *(v4 + 2))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 36) & 0x40) == 0)
    {
      goto LABEL_38;
    }

    v8 = *(v4 + 34);
    if (self->_isUnsigned)
    {
      if ((*(v4 + 34) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 34))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 36) & 0x40) != 0)
  {
    goto LABEL_38;
  }

  v6 = (*(v4 + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) != 0)
    {
      if (self->_isShortOrChar)
      {
        if (*(v4 + 33))
        {
          goto LABEL_46;
        }
      }

      else if (!*(v4 + 33))
      {
LABEL_46:
        v6 = 1;
        goto LABEL_39;
      }
    }

LABEL_38:
    v6 = 0;
  }

LABEL_39:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_int32Value;
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
  floatValue = self->_floatValue;
  if (floatValue < 0.0)
  {
    floatValue = -floatValue;
  }

  *v2.i32 = floorf(floatValue + 0.5);
  v6 = (floatValue - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v2 = vbslq_s8(v7, v3, v2);
  v8 = 2654435761u * *v2.i32;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabsf(v6);
  }

LABEL_9:
  if (*&self->_has)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v2.i64 = floor(doubleValue + 0.5);
    v11 = (doubleValue - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v13 = 2654435761 * self->_BOOLValue;
    if ((*&self->_has & 2) != 0)
    {
LABEL_21:
      v14 = 2654435761 * self->_int64Value;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      v15 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v16 = 0;
      return v8 ^ v4 ^ v9 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v15 = 2654435761 * self->_isUnsigned;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = 2654435761 * self->_isShortOrChar;
  return v8 ^ v4 ^ v9 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 8) != 0)
  {
    self->_int32Value = *(v4 + 7);
    *&self->_has |= 8u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_floatValue = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_doubleValue = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_BOOLValue = *(v4 + 32);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_int64Value = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_isUnsigned = *(v4 + 34);
  *&self->_has |= 0x40u;
  if ((*(v4 + 36) & 0x20) != 0)
  {
LABEL_8:
    self->_isShortOrChar = *(v4 + 33);
    *&self->_has |= 0x20u;
  }

LABEL_9:
}

@end