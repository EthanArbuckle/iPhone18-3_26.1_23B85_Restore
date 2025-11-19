@interface HKCodableAudiogramSensitivityTest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMasked:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableAudiogramSensitivityTest

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

- (void)setHasMasked:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableAudiogramSensitivityTest;
  v4 = [(HKCodableAudiogramSensitivityTest *)&v8 description];
  v5 = [(HKCodableAudiogramSensitivityTest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  sensitivity = self->_sensitivity;
  if (sensitivity)
  {
    v5 = [(HKCodableQuantity *)sensitivity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sensitivity"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_type];
    [v3 setObject:v11 forKey:@"type"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_masked];
  [v3 setObject:v12 forKey:@"masked"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_side];
    [v3 setObject:v7 forKey:@"side"];
  }

LABEL_7:
  clampingRange = self->_clampingRange;
  if (clampingRange)
  {
    v9 = [(HKCodableAudiogramSensitivityPointClampingRange *)clampingRange dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"clampingRange"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sensitivity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_6:
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

LABEL_7:
  if (self->_clampingRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sensitivity)
  {
    [v4 setSensitivity:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_type;
    *(v4 + 44) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 40) = self->_masked;
  *(v4 + 44) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = self->_side;
    *(v4 + 44) |= 1u;
  }

LABEL_7:
  if (self->_clampingRange)
  {
    [v6 setClampingRange:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_sensitivity copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 40) = self->_masked;
    *(v5 + 44) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_type;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_side;
    *(v5 + 44) |= 1u;
  }

LABEL_5:
  v9 = [(HKCodableAudiogramSensitivityPointClampingRange *)self->_clampingRange copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  sensitivity = self->_sensitivity;
  if (sensitivity | *(v4 + 4))
  {
    if (![(HKCodableQuantity *)sensitivity isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_23;
  }

  if (self->_masked)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_23;
  }

LABEL_11:
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_side != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_23;
  }

  clampingRange = self->_clampingRange;
  if (clampingRange | *(v4 + 3))
  {
    v7 = [(HKCodableAudiogramSensitivityPointClampingRange *)clampingRange isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_24:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_sensitivity hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(HKCodableAudiogramSensitivityPointClampingRange *)self->_clampingRange hash];
  }

  v4 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_masked;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_side;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(HKCodableAudiogramSensitivityPointClampingRange *)self->_clampingRange hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sensitivity = self->_sensitivity;
  v6 = *(v4 + 4);
  v10 = v4;
  if (sensitivity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)sensitivity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableAudiogramSensitivityTest *)self setSensitivity:?];
  }

  v4 = v10;
LABEL_7:
  v7 = *(v4 + 44);
  if ((v7 & 2) != 0)
  {
    self->_type = *(v4 + 2);
    *&self->_has |= 2u;
    v7 = *(v4 + 44);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_masked = *(v4 + 40);
  *&self->_has |= 4u;
  if (*(v4 + 44))
  {
LABEL_10:
    self->_side = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_11:
  clampingRange = self->_clampingRange;
  v9 = *(v4 + 3);
  if (clampingRange)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    clampingRange = [(HKCodableAudiogramSensitivityPointClampingRange *)clampingRange mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    clampingRange = [(HKCodableAudiogramSensitivityTest *)self setClampingRange:?];
  }

  v4 = v10;
LABEL_20:

  MEMORY[0x1EEE66BB8](clampingRange, v4);
}

@end