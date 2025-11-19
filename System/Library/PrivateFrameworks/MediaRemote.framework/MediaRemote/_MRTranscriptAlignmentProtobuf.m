@interface _MRTranscriptAlignmentProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMatchedBeginning:(BOOL)a3;
- (void)setHasMatchedEnd:(BOOL)a3;
- (void)setHasPlayerStartTime:(BOOL)a3;
- (void)setHasReferenceEndTime:(BOOL)a3;
- (void)setHasReferenceStartTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRTranscriptAlignmentProtobuf

- (void)setHasPlayerStartTime:(BOOL)a3
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

- (void)setHasReferenceStartTime:(BOOL)a3
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

- (void)setHasReferenceEndTime:(BOOL)a3
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

- (void)setHasMatchedBeginning:(BOOL)a3
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

- (void)setHasMatchedEnd:(BOOL)a3
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
  v8.super_class = _MRTranscriptAlignmentProtobuf;
  v4 = [(_MRTranscriptAlignmentProtobuf *)&v8 description];
  v5 = [(_MRTranscriptAlignmentProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playerStartTime];
    [v3 setObject:v7 forKey:@"playerStartTime"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playerEndTime];
  [v3 setObject:v8 forKey:@"playerEndTime"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_referenceStartTime];
  [v3 setObject:v9 forKey:@"referenceStartTime"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_referenceEndTime];
  [v3 setObject:v10 forKey:@"referenceEndTime"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchedBeginning];
  [v3 setObject:v11 forKey:@"matchedBeginning"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchedEnd];
    [v3 setObject:v5 forKey:@"matchedEnd"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    playerStartTime = self->_playerStartTime;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  playerEndTime = self->_playerEndTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  referenceStartTime = self->_referenceStartTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  referenceEndTime = self->_referenceEndTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  matchedBeginning = self->_matchedBeginning;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    matchedEnd = self->_matchedEnd;
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_playerStartTime;
    *(v4 + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = *&self->_playerEndTime;
  *(v4 + 44) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[4] = *&self->_referenceStartTime;
  *(v4 + 44) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[3] = *&self->_referenceEndTime;
  *(v4 + 44) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 40) = self->_matchedBeginning;
  *(v4 + 44) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v4 + 41) = self->_matchedEnd;
    *(v4 + 44) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_playerStartTime;
    *(result + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = *&self->_playerEndTime;
  *(result + 44) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 4) = *&self->_referenceStartTime;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 3) = *&self->_referenceEndTime;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 40) = self->_matchedBeginning;
  *(result + 44) |= 0x10u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 41) = self->_matchedEnd;
  *(result + 44) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_playerStartTime != *(v4 + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_playerEndTime != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_referenceStartTime != *(v4 + 4))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_referenceEndTime != *(v4 + 3))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0)
    {
      goto LABEL_30;
    }

    v7 = *(v4 + 40);
    if (self->_matchedBeginning)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_30;
  }

  v5 = (*(v4 + 44) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) != 0)
    {
      if (self->_matchedEnd)
      {
        if (*(v4 + 41))
        {
          goto LABEL_38;
        }
      }

      else if (!*(v4 + 41))
      {
LABEL_38:
        v5 = 1;
        goto LABEL_31;
      }
    }

LABEL_30:
    v5 = 0;
  }

LABEL_31:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    playerStartTime = self->_playerStartTime;
    if (playerStartTime < 0.0)
    {
      playerStartTime = -playerStartTime;
    }

    *v2.i64 = floor(playerStartTime + 0.5);
    v6 = (playerStartTime - *v2.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    playerEndTime = self->_playerEndTime;
    if (playerEndTime < 0.0)
    {
      playerEndTime = -playerEndTime;
    }

    *v2.i64 = floor(playerEndTime + 0.5);
    v10 = (playerEndTime - *v2.i64) * 1.84467441e19;
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
    referenceStartTime = self->_referenceStartTime;
    if (referenceStartTime < 0.0)
    {
      referenceStartTime = -referenceStartTime;
    }

    *v2.i64 = floor(referenceStartTime + 0.5);
    v14 = (referenceStartTime - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 4) != 0)
  {
    referenceEndTime = self->_referenceEndTime;
    if (referenceEndTime < 0.0)
    {
      referenceEndTime = -referenceEndTime;
    }

    *v2.i64 = floor(referenceEndTime + 0.5);
    v18 = (referenceEndTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
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

  if ((*&self->_has & 0x10) != 0)
  {
    v20 = 2654435761 * self->_matchedBeginning;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_35;
    }

LABEL_37:
    v21 = 0;
    return v8 ^ v4 ^ v12 ^ v16 ^ v20 ^ v21;
  }

  v20 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v21 = 2654435761 * self->_matchedEnd;
  return v8 ^ v4 ^ v12 ^ v16 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_playerStartTime = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_playerEndTime = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_referenceStartTime = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_referenceEndTime = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_matchedBeginning = *(v4 + 40);
  *&self->_has |= 0x10u;
  if ((*(v4 + 44) & 0x20) != 0)
  {
LABEL_7:
    self->_matchedEnd = *(v4 + 41);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end