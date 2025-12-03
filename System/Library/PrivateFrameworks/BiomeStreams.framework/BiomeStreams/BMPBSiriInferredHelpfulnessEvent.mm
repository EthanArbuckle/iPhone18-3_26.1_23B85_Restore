@interface BMPBSiriInferredHelpfulnessEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInferredHelpfulnessScore:(BOOL)score;
- (void)setHasRestatementScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation BMPBSiriInferredHelpfulnessEvent

- (void)setHasInferredHelpfulnessScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRestatementScore:(BOOL)score
{
  if (score)
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
  v8.super_class = BMPBSiriInferredHelpfulnessEvent;
  v4 = [(BMPBSiriInferredHelpfulnessEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSiriInferredHelpfulnessEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v9 forKey:@"absoluteTimestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inferredHelpfulnessScore];
  [dictionary setObject:v10 forKey:@"inferredHelpfulnessScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_restatementScore];
    [dictionary setObject:v5 forKey:@"restatementScore"];
  }

LABEL_5:
  turnID = self->_turnID;
  if (turnID)
  {
    [dictionary setObject:turnID forKey:@"turnID"];
  }

  modelID = self->_modelID;
  if (modelID)
  {
    [dictionary setObject:modelID forKey:@"modelID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  inferredHelpfulnessScore = self->_inferredHelpfulnessScore;
  PBDataWriterWriteDoubleField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    restatementScore = self->_restatementScore;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_5:
  if (self->_turnID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_modelID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = *&self->_inferredHelpfulnessScore;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[3] = *&self->_restatementScore;
    *(toCopy + 48) |= 4u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_turnID)
  {
    [toCopy setTurnID:?];
    toCopy = v6;
  }

  if (self->_modelID)
  {
    [v6 setModelID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_inferredHelpfulnessScore;
    *(v5 + 48) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_absoluteTimestamp;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_restatementScore;
    *(v5 + 48) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_turnID copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_modelID copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_inferredHelpfulnessScore != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_restatementScore != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_21;
  }

  turnID = self->_turnID;
  if (turnID | *(equalCopy + 5) && ![(NSString *)turnID isEqual:?])
  {
    goto LABEL_21;
  }

  modelID = self->_modelID;
  if (modelID | *(equalCopy + 4))
  {
    v8 = [(NSString *)modelID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    inferredHelpfulnessScore = self->_inferredHelpfulnessScore;
    if (inferredHelpfulnessScore < 0.0)
    {
      inferredHelpfulnessScore = -inferredHelpfulnessScore;
    }

    *v2.i64 = floor(inferredHelpfulnessScore + 0.5);
    v11 = (inferredHelpfulnessScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    restatementScore = self->_restatementScore;
    if (restatementScore < 0.0)
    {
      restatementScore = -restatementScore;
    }

    *v2.i64 = floor(restatementScore + 0.5);
    v15 = (restatementScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v3, v2).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v9 ^ v5 ^ v13 ^ [(NSString *)self->_turnID hash];
  return v17 ^ [(NSString *)self->_modelID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_inferredHelpfulnessScore = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_4:
    self->_restatementScore = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(BMPBSiriInferredHelpfulnessEvent *)self setTurnID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBSiriInferredHelpfulnessEvent *)self setModelID:?];
    fromCopy = v6;
  }
}

@end