@interface SYErrorInfo
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (SYErrorInfo)initWithError:(id)a3;
- (id)_usefulDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYErrorInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYErrorInfo;
  v4 = [(SYErrorInfo *)&v8 description];
  v5 = [(SYErrorInfo *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_code];
  [v4 setObject:v6 forKey:@"code"];

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v4 setObject:userInfo forKey:@"userInfo"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setDomain:self->_domain];
  v4 = v5;
  v5[2] = self->_code;
  if (self->_userInfo)
  {
    [v5 setUserInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_code;
  v8 = [(NSData *)self->_userInfo copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((domain = self->_domain, !(domain | v4[2])) || -[NSString isEqual:](domain, "isEqual:")) && self->_code == *(v4 + 2))
  {
    userInfo = self->_userInfo;
    if (userInfo | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(SYErrorInfo *)self setDomain:?];
    v4 = v5;
  }

  self->_code = v4[2];
  if (*(v4 + 3))
  {
    [(SYErrorInfo *)self setUserInfo:?];
    v4 = v5;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, sel_description);
    v4 = class_getInstanceMethod(a1, sel__usefulDescription);
    if (InstanceMethod && v4 != 0)
    {

      method_exchangeImplementations(InstanceMethod, v4);
    }
  }
}

- (SYErrorInfo)initWithError:(id)a3
{
  v4 = a3;
  if (v4 && (v12.receiver = self, v12.super_class = SYErrorInfo, (self = [(SYErrorInfo *)&v12 init]) != 0))
  {
    v5 = [v4 domain];
    [(SYErrorInfo *)self setDomain:v5];

    -[SYErrorInfo setCode:](self, "setCode:", [v4 code]);
    v6 = [v4 userInfo];

    if (v6)
    {
      v7 = MEMORY[0x1E696ACC8];
      v8 = [v4 userInfo];
      v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
      [(SYErrorInfo *)self setUserInfo:v9];
    }

    self = self;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_usefulDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = SYErrorInfo;
  v4 = [(SYErrorInfo *)&v13 description];
  v5 = [(SYErrorInfo *)self domain];
  v6 = [(SYErrorInfo *)self code];
  v7 = [(SYErrorInfo *)self userInfo];
  if (v7)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = [(SYErrorInfo *)self userInfo];
    v10 = [v8 sy_unarchivedObjectFromData:v9];
    v11 = [v3 stringWithFormat:@"%@: domain=%@, code=%ld, userInfo=%@", v4, v5, v6, v10];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@: domain=%@, code=%ld, userInfo=%@", v4, v5, v6, @"(nil)"];
  }

  return v11;
}

@end