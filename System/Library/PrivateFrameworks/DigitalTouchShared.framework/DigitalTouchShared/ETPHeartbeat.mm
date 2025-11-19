@interface ETPHeartbeat
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasHeartbreakTime:(BOOL)a3;
- (void)setHasNormalizedCenterX:(BOOL)a3;
- (void)setHasNormalizedCenterY:(BOOL)a3;
- (void)setHasRotation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ETPHeartbeat

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasNormalizedCenterX:(BOOL)a3
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

- (void)setHasNormalizedCenterY:(BOOL)a3
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

- (void)setHasRotation:(BOOL)a3
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

- (void)setHasHeartbreakTime:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPHeartbeat;
  v4 = [(ETPHeartbeat *)&v8 description];
  v5 = [(ETPHeartbeat *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    *&v4 = self->_beatsPerMinute;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v8 forKey:@"beatsPerMinute"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [v3 setObject:v9 forKey:@"duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *&v4 = self->_normalizedCenterX;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v10 forKey:@"normalizedCenterX"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *&v4 = self->_normalizedCenterY;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v11 forKey:@"normalizedCenterY"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *&v4 = self->_rotation;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v12 forKey:@"rotation"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *&v4 = self->_heartbreakTime;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"heartbreakTime"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    PBDataWriterWriteFloatField();
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = LODWORD(self->_beatsPerMinute);
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_duration;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = LODWORD(self->_normalizedCenterX);
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = LODWORD(self->_normalizedCenterY);
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 7) = LODWORD(self->_rotation);
  *(result + 32) |= 0x20u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 4) = LODWORD(self->_heartbreakTime);
  *(result + 32) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_beatsPerMinute != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_duration != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_normalizedCenterX != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_normalizedCenterY != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0 || self->_rotation != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_heartbreakTime != *(v4 + 4))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    beatsPerMinute = self->_beatsPerMinute;
    if (beatsPerMinute >= 0.0)
    {
      v6 = beatsPerMinute;
    }

    else
    {
      v6 = -beatsPerMinute;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v9 = 2654435761 * self->_duration;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  normalizedCenterX = self->_normalizedCenterX;
  if (normalizedCenterX >= 0.0)
  {
    v11 = normalizedCenterX;
  }

  else
  {
    v11 = -normalizedCenterX;
  }

  *v2.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
  v14 = 2654435761u * *v2.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_19:
  if ((*&self->_has & 0x10) != 0)
  {
    normalizedCenterY = self->_normalizedCenterY;
    if (normalizedCenterY >= 0.0)
    {
      v17 = normalizedCenterY;
    }

    else
    {
      v17 = -normalizedCenterY;
    }

    *v2.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    rotation = self->_rotation;
    if (rotation >= 0.0)
    {
      v22 = rotation;
    }

    else
    {
      v22 = -rotation;
    }

    *v2.i64 = floor(v22 + 0.5);
    v23 = (v22 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v20 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v20 += v23;
      }
    }

    else
    {
      v20 -= fabs(v23);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    heartbreakTime = self->_heartbreakTime;
    if (heartbreakTime >= 0.0)
    {
      v27 = heartbreakTime;
    }

    else
    {
      v27 = -heartbreakTime;
    }

    *v2.i64 = floor(v27 + 0.5);
    v28 = (v27 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v3, v2).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v25 += v28;
      }
    }

    else
    {
      v25 -= fabs(v28);
    }
  }

  else
  {
    v25 = 0;
  }

  return v9 ^ v4 ^ v14 ^ v15 ^ v20 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_beatsPerMinute = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_normalizedCenterX = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_normalizedCenterY = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_rotation = *(v4 + 7);
  *&self->_has |= 0x20u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_7:
    self->_heartbreakTime = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end