@interface BMPBSiriInferredHelpfulnessEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInferredHelpfulnessScore:(BOOL)a3;
- (void)setHasRestatementScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriInferredHelpfulnessEvent

- (void)setHasInferredHelpfulnessScore:(BOOL)a3
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

- (void)setHasRestatementScore:(BOOL)a3
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
  v8.super_class = BMPBSiriInferredHelpfulnessEvent;
  v4 = [(BMPBSiriInferredHelpfulnessEvent *)&v8 description];
  v5 = [(BMPBSiriInferredHelpfulnessEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v9 forKey:@"absoluteTimestamp"];

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
  [v3 setObject:v10 forKey:@"inferredHelpfulnessScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_restatementScore];
    [v3 setObject:v5 forKey:@"restatementScore"];
  }

LABEL_5:
  turnID = self->_turnID;
  if (turnID)
  {
    [v3 setObject:turnID forKey:@"turnID"];
  }

  modelID = self->_modelID;
  if (modelID)
  {
    [v3 setObject:modelID forKey:@"modelID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    restatementScore = self->_restatementScore;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
  if (self->_turnID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_modelID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 48) |= 1u;
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

  v4[2] = *&self->_inferredHelpfulnessScore;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = *&self->_restatementScore;
    *(v4 + 48) |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (self->_turnID)
  {
    [v4 setTurnID:?];
    v4 = v6;
  }

  if (self->_modelID)
  {
    [v6 setModelID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_turnID copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_modelID copyWithZone:a3];
  v11 = v6[4];
  v6[4] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_inferredHelpfulnessScore != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_restatementScore != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_21;
  }

  turnID = self->_turnID;
  if (turnID | *(v4 + 5) && ![(NSString *)turnID isEqual:?])
  {
    goto LABEL_21;
  }

  modelID = self->_modelID;
  if (modelID | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_inferredHelpfulnessScore = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_4:
    self->_restatementScore = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 5))
  {
    [(BMPBSiriInferredHelpfulnessEvent *)self setTurnID:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(BMPBSiriInferredHelpfulnessEvent *)self setModelID:?];
    v4 = v6;
  }
}

@end