@interface HDCodableVerifiableData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableVerifiableData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableVerifiableData;
  v4 = [(HDCodableVerifiableData *)&v8 description];
  v5 = [(HDCodableVerifiableData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v3 setObject:dataValue forKey:@"dataValue"];
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier)
  {
    [v3 setObject:issuerIdentifier forKey:@"issuerIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_issuerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_type;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_dataValue)
  {
    [v4 setDataValue:?];
    v4 = v5;
  }

  if (self->_issuerIdentifier)
  {
    [v5 setIssuerIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_dataValue copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_issuerIdentifier copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_type != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 2) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_11;
  }

  issuerIdentifier = self->_issuerIdentifier;
  if (issuerIdentifier | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_type = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[2])
  {
    [(HDCodableVerifiableData *)self setDataValue:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HDCodableVerifiableData *)self setIssuerIdentifier:?];
    v4 = v5;
  }
}

@end