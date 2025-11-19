@interface HKCodableSleepingSampleBaselineAvailability
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequiredCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSleepingSampleBaselineAvailability

- (void)setHasRequiredCount:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepingSampleBaselineAvailability;
  v4 = [(HKCodableSleepingSampleBaselineAvailability *)&v8 description];
  v5 = [(HKCodableSleepingSampleBaselineAvailability *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  analyzedRange = self->_analyzedRange;
  if (analyzedRange)
  {
    v5 = [(HKCodableDayIndexRange *)analyzedRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"analyzedRange"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [v3 setObject:v7 forKey:@"count"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_requiredCount];
    [v3 setObject:v8 forKey:@"requiredCount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_analyzedRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_analyzedRange)
  {
    v6 = v4;
    [v4 setAnalyzedRange:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_count;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_requiredCount;
    *(v4 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDayIndexRange *)self->_analyzedRange copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  analyzedRange = self->_analyzedRange;
  if (analyzedRange | *(v4 + 3))
  {
    if (![(HKCodableDayIndexRange *)analyzedRange isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_requiredCount != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  analyzedRange = self->_analyzedRange;
  v6 = v4[3];
  if (analyzedRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(HKCodableDayIndexRange *)analyzedRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(HKCodableSleepingSampleBaselineAvailability *)self setAnalyzedRange:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 32);
  if (v7)
  {
    self->_count = v4[1];
    *&self->_has |= 1u;
    v7 = *(v4 + 32);
  }

  if ((v7 & 2) != 0)
  {
    self->_requiredCount = v4[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end