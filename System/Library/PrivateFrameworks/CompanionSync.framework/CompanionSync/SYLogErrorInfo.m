@interface SYLogErrorInfo
- (BOOL)isEqual:(id)a3;
- (NSError)cocoaError;
- (SYLogErrorInfo)initWithCocoaError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogErrorInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogErrorInfo;
  v4 = [(SYLogErrorInfo *)&v8 description];
  v5 = [(SYLogErrorInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_code];
  [v4 setObject:v6 forKey:@"code"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_domain)
  {
    [SYLogErrorInfo writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  code = self->_code;
  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 setDomain:domain];
  v5[1] = self->_code;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_code;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[2])) || -[NSString isEqual:](domain, "isEqual:")) && self->_code == v4[1];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(SYLogErrorInfo *)self setDomain:?];
    v4 = v5;
  }

  self->_code = v4[1];
}

- (SYLogErrorInfo)initWithCocoaError:(id)a3
{
  v4 = a3;
  if (v4 && (v8.receiver = self, v8.super_class = SYLogErrorInfo, (self = [(SYLogErrorInfo *)&v8 init]) != 0))
  {
    v5 = [v4 domain];
    [(SYLogErrorInfo *)self setDomain:v5];

    -[SYLogErrorInfo setCode:](self, "setCode:", [v4 code]);
    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSError)cocoaError
{
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [(SYLogErrorInfo *)self domain];
  v5 = [v3 initWithDomain:v4 code:-[SYLogErrorInfo code](self userInfo:{"code"), 0}];

  return v5;
}

@end