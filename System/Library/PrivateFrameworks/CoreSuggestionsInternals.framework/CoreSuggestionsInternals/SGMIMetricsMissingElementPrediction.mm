@interface SGMIMetricsMissingElementPrediction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFoundMatchingElement:(BOOL)element;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsMissingElementPrediction

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_predictedMissingElementScore = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_foundMatchingElement = *(fromCopy + 12);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_predictedMissingElementScore != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    if (self->_foundMatchingElement)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
    {
      goto LABEL_9;
    }

    v5 = 1;
  }

LABEL_10:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = LODWORD(self->_predictedMissingElementScore);
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_foundMatchingElement;
    *(toCopy + 16) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    predictedMissingElementScore = self->_predictedMissingElementScore;
    PBDataWriterWriteFloatField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    foundMatchingElement = self->_foundMatchingElement;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    *&v4 = self->_predictedMissingElementScore;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v6 forKey:@"predictedMissingElementScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_foundMatchingElement];
    [dictionary setObject:v7 forKey:@"foundMatchingElement"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsMissingElementPrediction;
  v4 = [(SGMIMetricsMissingElementPrediction *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsMissingElementPrediction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasFoundMatchingElement:(BOOL)element
{
  if (element)
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