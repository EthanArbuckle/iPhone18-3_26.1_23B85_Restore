@interface _MRTranscriptAlignmentProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMatchedBeginning:(BOOL)beginning;
- (void)setHasMatchedEnd:(BOOL)end;
- (void)setHasPlayerStartTime:(BOOL)time;
- (void)setHasReferenceEndTime:(BOOL)time;
- (void)setHasReferenceStartTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation _MRTranscriptAlignmentProtobuf

- (void)setHasPlayerStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasReferenceStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasReferenceEndTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMatchedBeginning:(BOOL)beginning
{
  if (beginning)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMatchedEnd:(BOOL)end
{
  if (end)
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
  dictionaryRepresentation = [(_MRTranscriptAlignmentProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playerStartTime];
    [dictionary setObject:v7 forKey:@"playerStartTime"];

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
  [dictionary setObject:v8 forKey:@"playerEndTime"];

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
  [dictionary setObject:v9 forKey:@"referenceStartTime"];

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
  [dictionary setObject:v10 forKey:@"referenceEndTime"];

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
  [dictionary setObject:v11 forKey:@"matchedBeginning"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchedEnd];
    [dictionary setObject:v5 forKey:@"matchedEnd"];
  }

LABEL_8:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_playerStartTime;
    *(toCopy + 44) |= 2u;
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

  toCopy[1] = *&self->_playerEndTime;
  *(toCopy + 44) |= 1u;
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
  toCopy[4] = *&self->_referenceStartTime;
  *(toCopy + 44) |= 8u;
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
  toCopy[3] = *&self->_referenceEndTime;
  *(toCopy + 44) |= 4u;
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
  *(toCopy + 40) = self->_matchedBeginning;
  *(toCopy + 44) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(toCopy + 41) = self->_matchedEnd;
    *(toCopy + 44) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_playerStartTime != *(equalCopy + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_playerEndTime != *(equalCopy + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0 || self->_referenceStartTime != *(equalCopy + 4))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_referenceEndTime != *(equalCopy + 3))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0)
    {
      goto LABEL_30;
    }

    v7 = *(equalCopy + 40);
    if (self->_matchedBeginning)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 44) & 0x10) != 0)
  {
    goto LABEL_30;
  }

  v5 = (*(equalCopy + 44) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 44) & 0x20) != 0)
    {
      if (self->_matchedEnd)
      {
        if (*(equalCopy + 41))
        {
          goto LABEL_38;
        }
      }

      else if (!*(equalCopy + 41))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_playerStartTime = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
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

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_playerEndTime = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 44);
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
  self->_referenceStartTime = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 44);
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
  self->_referenceEndTime = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 44);
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
  self->_matchedBeginning = *(fromCopy + 40);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 44) & 0x20) != 0)
  {
LABEL_7:
    self->_matchedEnd = *(fromCopy + 41);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end