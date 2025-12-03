@interface MTRPluginPBMError
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRPluginPBMError)initWithError:(id)error;
- (NSError)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setError:(id)error;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMError

- (MTRPluginPBMError)initWithError:(id)error
{
  errorCopy = error;
  if (errorCopy && (self = [(MTRPluginPBMError *)self init]) != 0)
  {
    -[MTRPluginPBMError setCode:](self, "setCode:", [errorCopy code]);
    domain = [errorCopy domain];
    [(MTRPluginPBMError *)self setDomain:domain];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setError:(id)error
{
  errorCopy = error;
  -[MTRPluginPBMError setCode:](self, "setCode:", [errorCopy code]);
  domain = [errorCopy domain];

  [(MTRPluginPBMError *)self setDomain:domain];
}

- (NSError)error
{
  domain = [(MTRPluginPBMError *)self domain];

  if (domain)
  {
    v4 = MEMORY[0x277CCA9B8];
    domain2 = [(MTRPluginPBMError *)self domain];
    v6 = [v4 errorWithDomain:domain2 code:-[MTRPluginPBMError code](self userInfo:{"code"), 0}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValid
{
  hasCode = [(MTRPluginPBMError *)self hasCode];
  if (hasCode)
  {

    LOBYTE(hasCode) = [(MTRPluginPBMError *)self hasDomain];
  }

  return hasCode;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMError;
  v4 = [(MTRPluginPBMError *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_code];
    [dictionary setObject:v4 forKey:@"code"];
  }

  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_domain)
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
    toCopy[1] = self->_code;
    *(toCopy + 24) |= 1u;
  }

  if (self->_domain)
  {
    v5 = toCopy;
    [toCopy setDomain:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_code != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 2))
  {
    v7 = [(NSString *)domain isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_code;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_domain hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    self->_code = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(MTRPluginPBMError *)self setDomain:?];
    fromCopy = v5;
  }
}

@end