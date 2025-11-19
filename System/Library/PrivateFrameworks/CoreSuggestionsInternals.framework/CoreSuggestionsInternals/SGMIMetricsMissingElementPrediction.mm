@interface SGMIMetricsMissingElementPrediction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFoundMatchingElement:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsMissingElementPrediction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_predictedMissingElementScore = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_foundMatchingElement = *(v4 + 12);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    predictedMissingElementScore = self->_predictedMissingElementScore;
    if (predictedMissingElementScore < 0.0)
    {
      predictedMissingElementScore = -predictedMissingElementScore;
    }

    *v2.i32 = floorf(predictedMissingElementScore + 0.5);
    v6 = (predictedMissingElementScore - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v4 = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabsf(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_foundMatchingElement;
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_predictedMissingElementScore != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    if (self->_foundMatchingElement)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(v4 + 12))
    {
      goto LABEL_9;
    }

    v5 = 1;
  }

LABEL_10:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = LODWORD(self->_predictedMissingElementScore);
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 12) = self->_foundMatchingElement;
    *(result + 16) |= 2u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = LODWORD(self->_predictedMissingElementScore);
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 12) = self->_foundMatchingElement;
    *(v4 + 16) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    predictedMissingElementScore = self->_predictedMissingElementScore;
    PBDataWriterWriteFloatField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    foundMatchingElement = self->_foundMatchingElement;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    *&v4 = self->_predictedMissingElementScore;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"predictedMissingElementScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_foundMatchingElement];
    [v3 setObject:v7 forKey:@"foundMatchingElement"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsMissingElementPrediction;
  v4 = [(SGMIMetricsMissingElementPrediction *)&v8 description];
  v5 = [(SGMIMetricsMissingElementPrediction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasFoundMatchingElement:(BOOL)a3
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

@end