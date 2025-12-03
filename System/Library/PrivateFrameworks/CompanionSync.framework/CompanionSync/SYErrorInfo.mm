@interface SYErrorInfo
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (SYErrorInfo)initWithError:(id)error;
- (id)_usefulDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYErrorInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYErrorInfo;
  v4 = [(SYErrorInfo *)&v8 description];
  dictionaryRepresentation = [(SYErrorInfo *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_code];
  [v4 setObject:v6 forKey:@"code"];

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v4 setObject:userInfo forKey:@"userInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_domain)
  {
    [SYErrorInfo writeTo:];
  }

  PBDataWriterWriteStringField();
  code = self->_code;
  PBDataWriterWriteInt32Field();
  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setDomain:self->_domain];
  v4 = toCopy;
  toCopy[2] = self->_code;
  if (self->_userInfo)
  {
    [toCopy setUserInfo:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_code;
  v8 = [(NSData *)self->_userInfo copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | equalCopy[2])) || -[NSString isEqual:](domain, "isEqual:")) && self->_code == *(equalCopy + 2))
  {
    userInfo = self->_userInfo;
    if (userInfo | equalCopy[3])
    {
      v7 = [(NSData *)userInfo isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = 2654435761 * self->_code;
  return v4 ^ v3 ^ [(NSData *)self->_userInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SYErrorInfo *)self setDomain:?];
    fromCopy = v5;
  }

  self->_code = fromCopy[2];
  if (*(fromCopy + 3))
  {
    [(SYErrorInfo *)self setUserInfo:?];
    fromCopy = v5;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    InstanceMethod = class_getInstanceMethod(self, sel_description);
    v4 = class_getInstanceMethod(self, sel__usefulDescription);
    if (InstanceMethod && v4 != 0)
    {

      method_exchangeImplementations(InstanceMethod, v4);
    }
  }
}

- (SYErrorInfo)initWithError:(id)error
{
  errorCopy = error;
  if (errorCopy && (v12.receiver = self, v12.super_class = SYErrorInfo, (self = [(SYErrorInfo *)&v12 init]) != 0))
  {
    domain = [errorCopy domain];
    [(SYErrorInfo *)self setDomain:domain];

    -[SYErrorInfo setCode:](self, "setCode:", [errorCopy code]);
    userInfo = [errorCopy userInfo];

    if (userInfo)
    {
      v7 = MEMORY[0x1E696ACC8];
      userInfo2 = [errorCopy userInfo];
      v9 = [v7 archivedDataWithRootObject:userInfo2 requiringSecureCoding:1 error:0];
      [(SYErrorInfo *)self setUserInfo:v9];
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_usefulDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = SYErrorInfo;
  v4 = [(SYErrorInfo *)&v13 description];
  domain = [(SYErrorInfo *)self domain];
  code = [(SYErrorInfo *)self code];
  userInfo = [(SYErrorInfo *)self userInfo];
  if (userInfo)
  {
    v8 = MEMORY[0x1E696ACD0];
    userInfo2 = [(SYErrorInfo *)self userInfo];
    v10 = [v8 sy_unarchivedObjectFromData:userInfo2];
    v11 = [v3 stringWithFormat:@"%@: domain=%@, code=%ld, userInfo=%@", v4, domain, code, v10];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@: domain=%@, code=%ld, userInfo=%@", v4, domain, code, @"(nil)"];
  }

  return v11;
}

@end