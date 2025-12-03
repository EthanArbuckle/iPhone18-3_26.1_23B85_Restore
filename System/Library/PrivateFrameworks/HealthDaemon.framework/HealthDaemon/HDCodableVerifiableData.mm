@interface HDCodableVerifiableData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableVerifiableData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableVerifiableData;
  v4 = [(HDCodableVerifiableData *)&v8 description];
  dictionaryRepresentation = [(HDCodableVerifiableData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [dictionary setObject:dataValue forKey:@"dataValue"];
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier)
  {
    [dictionary setObject:issuerIdentifier forKey:@"issuerIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_issuerIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_type;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_dataValue)
  {
    [toCopy setDataValue:?];
    toCopy = v5;
  }

  if (self->_issuerIdentifier)
  {
    [v5 setIssuerIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_dataValue copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_issuerIdentifier copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_type != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 2) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_11;
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier | *(equalCopy + 3))
  {
    v8 = [(NSString *)issuerIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_dataValue hash]^ v3;
  return v4 ^ [(NSString *)self->_issuerIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    self->_type = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableVerifiableData *)self setDataValue:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HDCodableVerifiableData *)self setIssuerIdentifier:?];
    fromCopy = v5;
  }
}

@end