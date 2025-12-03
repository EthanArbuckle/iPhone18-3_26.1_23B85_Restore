@interface HDCodableReferenceRange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableReferenceRange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableReferenceRange;
  v4 = [(HDCodableReferenceRange *)&v8 description];
  dictionaryRepresentation = [(HDCodableReferenceRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  valueRange = self->_valueRange;
  if (valueRange)
  {
    dictionaryRepresentation = [(HDCodableInspectableValueCollection *)valueRange dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"valueRange"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_valueRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_valueRange)
  {
    [v5 setValueRange:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HDCodableInspectableValueCollection *)self->_valueRange copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    valueRange = self->_valueRange;
    if (valueRange | equalCopy[2])
    {
      v7 = [(HDCodableInspectableValueCollection *)valueRange isEqual:?];
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
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCodableReferenceRange *)self setIdentifier:?];
    fromCopy = v7;
  }

  valueRange = self->_valueRange;
  v6 = fromCopy[2];
  if (valueRange)
  {
    if (v6)
    {
      [(HDCodableInspectableValueCollection *)valueRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableReferenceRange *)self setValueRange:?];
  }

  MEMORY[0x2821F96F8]();
}

@end