@interface HDCodablePauseRingsSchedule
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStartDateIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation HDCodablePauseRingsSchedule

- (BOOL)applyToObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  objectCopy = object;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sample = [(HDCodablePauseRingsSchedule *)self sample];
      v6 = [sample applyToObject:objectCopy];

      if (v6)
      {
        if ([(HDCodablePauseRingsSchedule *)self hasStartDateIndex])
        {
          [objectCopy setStartDateIndex:{-[HDCodablePauseRingsSchedule startDateIndex](self, "startDateIndex")}];
        }

        if ([(HDCodablePauseRingsSchedule *)self hasEndDateIndex])
        {
          [objectCopy setEndDateIndex:{-[HDCodablePauseRingsSchedule endDateIndex](self, "endDateIndex")}];
        }

        v7 = 0;
        v8 = 1;
        goto LABEL_14;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:&v15 code:3 format:@"Failed to decode superclass message"];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 hk_assignError:&v15 code:3 format:{@"Unexpected class %@", v11}];
    }
  }

  v7 = v15;
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to decode object of type HKPauseRingsSchedule with error %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setHasStartDateIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodablePauseRingsSchedule;
  v4 = [(HDCodablePauseRingsSchedule *)&v8 description];
  dictionaryRepresentation = [(HDCodablePauseRingsSchedule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_startDateIndex];
    [dictionary setObject:v7 forKey:@"startDateIndex"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_endDateIndex];
    [dictionary setObject:v8 forKey:@"endDateIndex"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startDateIndex = self->_startDateIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    endDateIndex = self->_endDateIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sample)
  {
    v6 = toCopy;
    [toCopy setSample:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_startDateIndex;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_endDateIndex;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startDateIndex;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endDateIndex;
    *(v5 + 32) |= 1u;
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

  sample = self->_sample;
  if (sample | *(equalCopy + 3))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_startDateIndex != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_endDateIndex != *(equalCopy + 1))
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
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_startDateIndex;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_endDateIndex;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = fromCopy[3];
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    sample = [(HDCodablePauseRingsSchedule *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if ((v7 & 2) != 0)
  {
    self->_startDateIndex = fromCopy[2];
    *&self->_has |= 2u;
    v7 = *(fromCopy + 32);
  }

  if (v7)
  {
    self->_endDateIndex = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end