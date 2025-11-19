@interface C2MPError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPError

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPError;
  v4 = [(C2MPError *)&v8 description];
  v5 = [(C2MPError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"error_domain"];
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
    v9 = [(C2MPError *)underlyingError dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"underlying_error"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_errorDomain)
  {
    [v4 setErrorDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_errorCode;
    *(v4 + 40) |= 1u;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(C2MPError *)self->_underlyingError copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_errorCode != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2) && ![(NSString *)errorDescription isEqual:?])
  {
    goto LABEL_13;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(C2MPError *)self setErrorDomain:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_errorCode = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(C2MPError *)self setErrorDescription:?];
    v4 = v7;
  }

  underlyingError = self->_underlyingError;
  v6 = v4[4];
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