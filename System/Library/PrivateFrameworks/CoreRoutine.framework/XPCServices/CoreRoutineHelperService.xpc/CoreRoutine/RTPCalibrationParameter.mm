@interface RTPCalibrationParameter
- (BOOL)isEqual:(id)a3;
- (double)highThresholdAfterCalibration;
- (double)highThresholdBeforeCalibration;
- (double)highestScore;
- (double)lowThresholdAfterCalibration;
- (double)lowThresholdBeforeCalibration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHighThresholdBeforeCalibration:(BOOL)a3;
- (void)setHasHighestScore:(BOOL)a3;
- (void)setHasLowThresholdAfterCalibration:(BOOL)a3;
- (void)setHasLowThresholdBeforeCalibration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RTPCalibrationParameter

- (double)lowThresholdBeforeCalibration
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_lowThresholdBeforeCalibration;
  }

  else
  {
    return 0.6;
  }
}

- (void)setHasLowThresholdBeforeCalibration:(BOOL)a3
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

- (double)highThresholdBeforeCalibration
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_highThresholdBeforeCalibration;
  }

  else
  {
    return 0.8;
  }
}

- (void)setHasHighThresholdBeforeCalibration:(BOOL)a3
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

- (double)lowThresholdAfterCalibration
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_lowThresholdAfterCalibration;
  }

  else
  {
    return 0.9;
  }
}

- (void)setHasLowThresholdAfterCalibration:(BOOL)a3
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

- (double)highThresholdAfterCalibration
{
  if (*&self->_has)
  {
    return self->_highThresholdAfterCalibration;
  }

  else
  {
    return 0.95;
  }
}

- (double)highestScore
{
  result = 1.0;
  if ((*&self->_has & 4) != 0)
  {
    return self->_highestScore;
  }

  return result;
}

- (void)setHasHighestScore:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = RTPCalibrationParameter;
  v3 = [(RTPCalibrationParameter *)&v7 description];
  v4 = [(RTPCalibrationParameter *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_lowThresholdBeforeCalibration];
    [v3 setObject:v7 forKey:@"low_threshold_before_calibration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithDouble:self->_highThresholdBeforeCalibration];
  [v3 setObject:v8 forKey:@"high_threshold_before_calibration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithDouble:self->_lowThresholdAfterCalibration];
  [v3 setObject:v9 forKey:@"low_threshold_after_calibration"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithDouble:self->_highThresholdAfterCalibration];
  [v3 setObject:v10 forKey:@"high_threshold_after_calibration"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithDouble:self->_highestScore];
    [v3 setObject:v5 forKey:@"highest_score"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    lowThresholdBeforeCalibration = self->_lowThresholdBeforeCalibration;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  highThresholdBeforeCalibration = self->_highThresholdBeforeCalibration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  lowThresholdAfterCalibration = self->_lowThresholdAfterCalibration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  highThresholdAfterCalibration = self->_highThresholdAfterCalibration;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    highestScore = self->_highestScore;
    PBDataWriterWriteDoubleField();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[5] = *&self->_lowThresholdBeforeCalibration;
    *(v4 + 48) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = *&self->_highThresholdBeforeCalibration;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[4] = *&self->_lowThresholdAfterCalibration;
  *(v4 + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v4[1] = *&self->_highThresholdAfterCalibration;
  *(v4 + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v4[3] = *&self->_highestScore;
    *(v4 + 48) |= 4u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = *&self->_lowThresholdBeforeCalibration;
    *(result + 48) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = *&self->_highThresholdBeforeCalibration;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = *&self->_lowThresholdAfterCalibration;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 1) = *&self->_highThresholdAfterCalibration;
  *(result + 48) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = *&self->_highestScore;
  *(result + 48) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_lowThresholdBeforeCalibration != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_highThresholdBeforeCalibration != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_lowThresholdAfterCalibration != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_highThresholdAfterCalibration != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_highestScore != *(v4 + 3))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    lowThresholdBeforeCalibration = self->_lowThresholdBeforeCalibration;
    if (lowThresholdBeforeCalibration < 0.0)
    {
      lowThresholdBeforeCalibration = -lowThresholdBeforeCalibration;
    }

    *v2.i64 = floor(lowThresholdBeforeCalibration + 0.5);
    v6 = (lowThresholdBeforeCalibration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    highThresholdBeforeCalibration = self->_highThresholdBeforeCalibration;
    if (highThresholdBeforeCalibration < 0.0)
    {
      highThresholdBeforeCalibration = -highThresholdBeforeCalibration;
    }

    *v2.i64 = floor(highThresholdBeforeCalibration + 0.5);
    v10 = (highThresholdBeforeCalibration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 8) != 0)
  {
    lowThresholdAfterCalibration = self->_lowThresholdAfterCalibration;
    if (lowThresholdAfterCalibration < 0.0)
    {
      lowThresholdAfterCalibration = -lowThresholdAfterCalibration;
    }

    *v2.i64 = floor(lowThresholdAfterCalibration + 0.5);
    v14 = (lowThresholdAfterCalibration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*&self->_has)
  {
    highThresholdAfterCalibration = self->_highThresholdAfterCalibration;
    if (highThresholdAfterCalibration < 0.0)
    {
      highThresholdAfterCalibration = -highThresholdAfterCalibration;
    }

    *v2.i64 = floor(highThresholdAfterCalibration + 0.5);
    v18 = (highThresholdAfterCalibration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    highestScore = self->_highestScore;
    if (highestScore < 0.0)
    {
      highestScore = -highestScore;
    }

    *v2.i64 = floor(highestScore + 0.5);
    v22 = (highestScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v3, v2).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v8 ^ v4 ^ v12 ^ v16 ^ v20;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 0x10) != 0)
  {
    self->_lowThresholdBeforeCalibration = *(v4 + 5);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_highThresholdBeforeCalibration = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_lowThresholdAfterCalibration = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_highThresholdAfterCalibration = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_6:
    self->_highestScore = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end