@interface HKCodableSleepingSampleBaselineAvailability
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequiredCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSleepingSampleBaselineAvailability

- (void)setHasRequiredCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepingSampleBaselineAvailability;
  v4 = [(HKCodableSleepingSampleBaselineAvailability *)&v8 description];
  dictionaryRepresentation = [(HKCodableSleepingSampleBaselineAvailability *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  analyzedRange = self->_analyzedRange;
  if (analyzedRange)
  {
    dictionaryRepresentation = [(HKCodableDayIndexRange *)analyzedRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"analyzedRange"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [dictionary setObject:v7 forKey:@"count"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_requiredCount];
    [dictionary setObject:v8 forKey:@"requiredCount"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_analyzedRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_analyzedRange)
  {
    v6 = toCopy;
    [toCopy setAnalyzedRange:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_count;
    *(toCopy + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_requiredCount;
    *(toCopy + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDayIndexRange *)self->_analyzedRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_count;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_requiredCount;
    *(v5 + 32) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  analyzedRange = self->_analyzedRange;
  if (analyzedRange | *(equalCopy + 3))
  {
    if (![(HKCodableDayIndexRange *)analyzedRange isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_count != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_requiredCount != *(equalCopy + 2))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDayIndexRange *)self->_analyzedRange hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_requiredCount;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  analyzedRange = self->_analyzedRange;
  v6 = fromCopy[3];
  if (analyzedRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(HKCodableDayIndexRange *)analyzedRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(HKCodableSleepingSampleBaselineAvailability *)self setAnalyzedRange:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if (v7)
  {
    self->_count = fromCopy[1];
    *&self->_has |= 1u;
    v7 = *(fromCopy + 32);
  }

  if ((v7 & 2) != 0)
  {
    self->_requiredCount = fromCopy[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end