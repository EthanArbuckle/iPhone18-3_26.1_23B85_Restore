@interface HDCodableStateOfMind
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int64_t)domainsAtIndex:(unint64_t)index;
- (int64_t)labelsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasValence:(BOOL)valence;
- (void)writeTo:(id)to;
@end

@implementation HDCodableStateOfMind

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HDCodableStateOfMind;
  [(HDCodableStateOfMind *)&v3 dealloc];
}

- (void)setHasValence:(BOOL)valence
{
  if (valence)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int64_t)labelsAtIndex:(unint64_t)index
{
  p_labels = &self->_labels;
  count = self->_labels.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_labels->list[index];
}

- (int64_t)domainsAtIndex:(unint64_t)index
{
  p_domains = &self->_domains;
  count = self->_domains.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_domains->list[index];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableStateOfMind;
  v4 = [(HDCodableStateOfMind *)&v8 description];
  dictionaryRepresentation = [(HDCodableStateOfMind *)self dictionaryRepresentation];
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
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reflectiveInterval];
    [dictionary setObject:v7 forKey:@"reflectiveInterval"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_valence];
    [dictionary setObject:v8 forKey:@"valence"];
  }

  v9 = PBRepeatedInt64NSArray();
  [dictionary setObject:v9 forKey:@"labels"];

  v10 = PBRepeatedInt64NSArray();
  [dictionary setObject:v10 forKey:@"domains"];

  context = self->_context;
  if (context)
  {
    [dictionary setObject:context forKey:@"context"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    reflectiveInterval = self->_reflectiveInterval;
    PBDataWriterWriteInt64Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    valence = self->_valence;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_labels.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_labels.list[v8];
      PBDataWriterWriteInt64Field();
      toCopy = v12;
      ++v8;
    }

    while (v8 < self->_labels.count);
  }

  if (self->_domains.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_domains.list[v10];
      PBDataWriterWriteInt64Field();
      toCopy = v12;
      ++v10;
    }

    while (v10 < self->_domains.count);
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 7) = self->_reflectiveInterval;
    *(toCopy + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 8) = *&self->_valence;
    *(toCopy + 88) |= 2u;
  }

  if ([(HDCodableStateOfMind *)self labelsCount])
  {
    [v12 clearLabels];
    labelsCount = [(HDCodableStateOfMind *)self labelsCount];
    if (labelsCount)
    {
      v7 = labelsCount;
      for (i = 0; i != v7; ++i)
      {
        [v12 addLabels:{-[HDCodableStateOfMind labelsAtIndex:](self, "labelsAtIndex:", i)}];
      }
    }
  }

  if ([(HDCodableStateOfMind *)self domainsCount])
  {
    [v12 clearDomains];
    domainsCount = [(HDCodableStateOfMind *)self domainsCount];
    if (domainsCount)
    {
      v10 = domainsCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addDomains:{-[HDCodableStateOfMind domainsAtIndex:](self, "domainsAtIndex:", j)}];
      }
    }
  }

  if (self->_context)
  {
    [v12 setContext:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 56) = self->_reflectiveInterval;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_valence;
    *(v5 + 88) |= 2u;
  }

  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  v9 = [(NSString *)self->_context copyWithZone:zone];
  v10 = *(v5 + 72);
  *(v5 + 72) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 10))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(equalCopy + 88);
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_reflectiveInterval != *(equalCopy + 7))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_valence != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_18;
  }

  if (!PBRepeatedInt64IsEqual() || !PBRepeatedInt64IsEqual())
  {
    goto LABEL_18;
  }

  context = self->_context;
  if (context | *(equalCopy + 9))
  {
    v8 = [(NSString *)context isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_19:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_reflectiveInterval;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  valence = self->_valence;
  if (valence < 0.0)
  {
    valence = -valence;
  }

  *v4.i64 = floor(valence + 0.5);
  v8 = (valence - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3;
  v12 = v10 ^ PBRepeatedInt64Hash();
  v13 = v12 ^ PBRepeatedInt64Hash();
  return v11 ^ v13 ^ [(NSString *)self->_context hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 10);
  v15 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableStateOfMind *)self setSample:?];
  }

  fromCopy = v15;
LABEL_7:
  v7 = *(fromCopy + 88);
  if (v7)
  {
    self->_reflectiveInterval = *(fromCopy + 7);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 88);
  }

  if ((v7 & 2) != 0)
  {
    self->_valence = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  labelsCount = [fromCopy labelsCount];
  if (labelsCount)
  {
    v9 = labelsCount;
    for (i = 0; i != v9; ++i)
    {
      -[HDCodableStateOfMind addLabels:](self, "addLabels:", [v15 labelsAtIndex:i]);
    }
  }

  domainsCount = [v15 domainsCount];
  if (domainsCount)
  {
    v12 = domainsCount;
    for (j = 0; j != v12; ++j)
    {
      -[HDCodableStateOfMind addDomains:](self, "addDomains:", [v15 domainsAtIndex:j]);
    }
  }

  v14 = v15;
  if (v15[9])
  {
    [(HDCodableStateOfMind *)self setContext:?];
    v14 = v15;
  }
}

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableStateOfMind sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6))
  {
    [(HDCodableStateOfMind *)self reflectiveInterval];
    [objectCopy _setKind:HKStateOfMindKindFromReflectiveInterval()];
    [(HDCodableStateOfMind *)self valence];
    [objectCopy _setValence:?];
    array = [MEMORY[0x277CBEB18] array];
    if ([(HDCodableStateOfMind *)self labelsCount])
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCodableStateOfMind labels](self, "labels")[8 * v8]}];
        [array addObject:v9];

        ++v8;
      }

      while (v8 < [(HDCodableStateOfMind *)self labelsCount]);
    }

    v10 = [array copy];
    [objectCopy _setLabels:v10];

    array2 = [MEMORY[0x277CBEB18] array];
    if ([(HDCodableStateOfMind *)self domainsCount])
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = [(HDCodableStateOfMind *)self domains][8 * v12];
        v15 = [v13 numberWithInteger:HKStateOfMindAssociationFromDomain()];
        [array2 addObject:v15];

        ++v12;
      }

      while (v12 < [(HDCodableStateOfMind *)self domainsCount]);
    }

    v16 = [array2 copy];
    [objectCopy _setAssociations:v16];

    context = [(HDCodableStateOfMind *)self context];
    [objectCopy _setContext:context];

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end