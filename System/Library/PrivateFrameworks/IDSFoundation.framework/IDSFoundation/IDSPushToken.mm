@interface IDSPushToken
+ (IDSPushToken)pushTokenWithData:(id)data;
+ (IDSPushToken)pushTokenWithData:(id)data withServiceLoggingHint:(id)hint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPushToken:(id)token;
- (IDSPushToken)initWithCoder:(id)coder;
- (IDSPushToken)initWithData:(id)data withServiceLoggingHint:(id)hint;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPushToken

+ (IDSPushToken)pushTokenWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy withServiceLoggingHint:0];

  return v5;
}

+ (IDSPushToken)pushTokenWithData:(id)data withServiceLoggingHint:(id)hint
{
  hintCopy = hint;
  dataCopy = data;
  v8 = [[self alloc] initWithData:dataCopy withServiceLoggingHint:hintCopy];

  return v8;
}

- (IDSPushToken)initWithData:(id)data withServiceLoggingHint:(id)hint
{
  dataCopy = data;
  hintCopy = hint;
  if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = IDSPushToken;
    v9 = [(IDSPushToken *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_rawToken, data);
      objc_storeStrong(p_isa + 2, hint);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqualToPushToken:(id)token
{
  if (self == token)
  {
    return 1;
  }

  rawToken = [token rawToken];
  rawToken2 = [(IDSPushToken *)self rawToken];
  v6 = [rawToken isEqualToData:rawToken2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPushToken *)self isEqualToPushToken:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  rawToken = [(IDSPushToken *)self rawToken];
  v3 = [rawToken hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = IDSLoggableDescriptionForTokenOnService(self->_rawToken, self->_serviceLoggingHint);
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (IDSPushToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceHint"];

  v7 = [(IDSPushToken *)self initWithData:v5 withServiceLoggingHint:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawToken = [(IDSPushToken *)self rawToken];
  [coderCopy encodeObject:rawToken forKey:@"rawToken"];

  serviceLoggingHint = [(IDSPushToken *)self serviceLoggingHint];
  [coderCopy encodeObject:serviceLoggingHint forKey:@"serviceHint"];
}

@end