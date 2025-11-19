@interface HDCodableError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableError

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableError;
  v4 = [(HDCodableError *)&v8 description];
  v5 = [(HDCodableError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_code];
    [v4 setObject:v6 forKey:@"code"];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:@"localizedDescription"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_code;
    *(v4 + 32) |= 1u;
  }

  if (self->_localizedDescription)
  {
    [v5 setLocalizedDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_code != *(v4 + 1))
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

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(v4 + 3))
  {
    v8 = [(NSString *)localizedDescription isEqual:?];
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
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_localizedDescription hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HDCodableError *)self setDomain:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_code = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[3])
  {
    [(HDCodableError *)self setLocalizedDescription:?];
    v4 = v5;
  }
}

@end