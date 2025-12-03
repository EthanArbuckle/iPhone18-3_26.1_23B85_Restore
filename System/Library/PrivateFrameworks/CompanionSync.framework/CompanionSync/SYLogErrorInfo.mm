@interface SYLogErrorInfo
- (BOOL)isEqual:(id)equal;
- (NSError)cocoaError;
- (SYLogErrorInfo)initWithCocoaError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYLogErrorInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogErrorInfo;
  v4 = [(SYLogErrorInfo *)&v8 description];
  dictionaryRepresentation = [(SYLogErrorInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_code];
  [v4 setObject:v6 forKey:@"code"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_domain)
  {
    [SYLogErrorInfo writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  code = self->_code;
  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)to
{
  domain = self->_domain;
  toCopy = to;
  [toCopy setDomain:domain];
  toCopy[1] = self->_code;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_code;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | equalCopy[2])) || -[NSString isEqual:](domain, "isEqual:")) && self->_code == equalCopy[1];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(SYLogErrorInfo *)self setDomain:?];
    fromCopy = v5;
  }

  self->_code = fromCopy[1];
}

- (SYLogErrorInfo)initWithCocoaError:(id)error
{
  errorCopy = error;
  if (errorCopy && (v8.receiver = self, v8.super_class = SYLogErrorInfo, (self = [(SYLogErrorInfo *)&v8 init]) != 0))
  {
    domain = [errorCopy domain];
    [(SYLogErrorInfo *)self setDomain:domain];

    -[SYLogErrorInfo setCode:](self, "setCode:", [errorCopy code]);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSError)cocoaError
{
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  domain = [(SYLogErrorInfo *)self domain];
  v5 = [v3 initWithDomain:domain code:-[SYLogErrorInfo code](self userInfo:{"code"), 0}];

  return v5;
}

@end