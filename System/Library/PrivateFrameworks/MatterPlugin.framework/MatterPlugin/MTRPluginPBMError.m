@interface MTRPluginPBMError
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRPluginPBMError)initWithError:(id)a3;
- (NSError)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setError:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMError

- (MTRPluginPBMError)initWithError:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMError *)self init]) != 0)
  {
    -[MTRPluginPBMError setCode:](self, "setCode:", [v4 code]);
    v5 = [v4 domain];
    [(MTRPluginPBMError *)self setDomain:v5];

    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setError:(id)a3
{
  v4 = a3;
  -[MTRPluginPBMError setCode:](self, "setCode:", [v4 code]);
  v5 = [v4 domain];

  [(MTRPluginPBMError *)self setDomain:v5];
}

- (NSError)error
{
  v3 = [(MTRPluginPBMError *)self domain];

  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [(MTRPluginPBMError *)self domain];
    v6 = [v4 errorWithDomain:v5 code:-[MTRPluginPBMError code](self userInfo:{"code"), 0}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValid
{
  v3 = [(MTRPluginPBMError *)self hasCode];
  if (v3)
  {

    LOBYTE(v3) = [(MTRPluginPBMError *)self hasDomain];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMError;
  v4 = [(MTRPluginPBMError *)&v8 description];
  v5 = [(MTRPluginPBMError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_code];
    [v3 setObject:v4 forKey:@"code"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_domain)
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
    v4[1] = self->_code;
    *(v4 + 24) |= 1u;
  }

  if (self->_domain)
  {
    v5 = v4;
    [v4 setDomain:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_code != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    self->_code = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    v5 = v4;
    [(MTRPluginPBMError *)self setDomain:?];
    v4 = v5;
  }
}

@end