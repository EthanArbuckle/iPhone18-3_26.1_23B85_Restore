@interface HDCodableCorrelation
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableCorrelation

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  sample = [(HDCodableCorrelation *)self sample];
  v6 = [sample applyToObject:objectCopy];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCorrelation;
  v4 = [(HDCodableCorrelation *)&v8 description];
  dictionaryRepresentation = [(HDCodableCorrelation *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  sample = self->_sample;
  if (sample)
  {
    [to setSample:sample];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sample = self->_sample;
    if (sample | equalCopy[1])
    {
      v6 = [(HDCodableSample *)sample isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = fromCopy[1];
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    sample = [(HDCodableCorrelation *)self setSample:?];
  }

  fromCopy = v7;
LABEL_7:

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end