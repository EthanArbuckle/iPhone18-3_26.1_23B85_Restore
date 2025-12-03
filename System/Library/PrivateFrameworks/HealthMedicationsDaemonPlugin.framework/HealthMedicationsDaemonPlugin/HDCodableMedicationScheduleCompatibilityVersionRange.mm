@interface HDCodableMedicationScheduleCompatibilityVersionRange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOrigin:(BOOL)origin;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationScheduleCompatibilityVersionRange

- (void)setHasOrigin:(BOOL)origin
{
  if (origin)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationScheduleCompatibilityVersionRange;
  v4 = [(HDCodableMedicationScheduleCompatibilityVersionRange *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationScheduleCompatibilityVersionRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_minimum];
    [dictionary setObject:v5 forKey:@"minimum"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_origin];
    [dictionary setObject:v6 forKey:@"origin"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    minimum = self->_minimum;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    origin = self->_origin;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_minimum;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_origin;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_minimum;
    *(result + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 2) = self->_origin;
    *(result + 24) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_minimum != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_origin != *(equalCopy + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_minimum;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_origin;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_minimum = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_origin = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

@end