@interface HDCodableBinarySample
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableBinarySample

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableBinarySample;
  v4 = [(HDCodableBinarySample *)&v8 description];
  dictionaryRepresentation = [(HDCodableBinarySample *)self dictionaryRepresentation];
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

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKey:@"payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v5;
  }

  if (self->_payload)
  {
    [v5 setPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_payload copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sample = self->_sample, !(sample | equalCopy[2])) || -[HDCodableSample isEqual:](sample, "isEqual:")))
  {
    payload = self->_payload;
    if (payload | equalCopy[1])
    {
      v7 = [(NSData *)payload isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = fromCopy[2];
  v7 = fromCopy;
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

    [(HDCodableBinarySample *)self setSample:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(HDCodableBinarySample *)self setPayload:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_283D3FFC8])
  {
    sample = [(HDCodableBinarySample *)self sample];
    v6 = [sample applyToObject:objectCopy];
    if (v6)
    {
      payload = [(HDCodableBinarySample *)self payload];
      [objectCopy _setPayload:payload];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end