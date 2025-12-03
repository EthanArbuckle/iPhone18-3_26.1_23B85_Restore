@interface C2MPError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation C2MPError

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPError;
  v4 = [(C2MPError *)&v8 description];
  dictionaryRepresentation = [(C2MPError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"error_domain"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_errorCode];
    [v4 setObject:v6 forKey:@"error_code"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"error_description"];
  }

  underlyingError = self->_underlyingError;
  if (underlyingError)
  {
    dictionaryRepresentation = [(C2MPError *)underlyingError dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"underlying_error"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_errorDomain)
  {
    [toCopy setErrorDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_errorCode;
    *(toCopy + 40) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(C2MPError *)self->_underlyingError copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_errorCode != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_13;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(equalCopy + 4))
  {
    v9 = [(C2MPError *)underlyingError isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_errorDescription hash];
  return v5 ^ v6 ^ [(C2MPError *)self->_underlyingError hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(C2MPError *)self setErrorDomain:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    self->_errorCode = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(C2MPError *)self setErrorDescription:?];
    fromCopy = v7;
  }

  underlyingError = self->_underlyingError;
  v6 = fromCopy[4];
  if (underlyingError)
  {
    if (v6)
    {
      [(C2MPError *)underlyingError mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(C2MPError *)self setUnderlyingError:?];
  }

  MEMORY[0x2821F96F8]();
}

@end