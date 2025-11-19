@interface IDSPushToken
+ (IDSPushToken)pushTokenWithData:(id)a3;
+ (IDSPushToken)pushTokenWithData:(id)a3 withServiceLoggingHint:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPushToken:(id)a3;
- (IDSPushToken)initWithCoder:(id)a3;
- (IDSPushToken)initWithData:(id)a3 withServiceLoggingHint:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPushToken

+ (IDSPushToken)pushTokenWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4 withServiceLoggingHint:0];

  return v5;
}

+ (IDSPushToken)pushTokenWithData:(id)a3 withServiceLoggingHint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithData:v7 withServiceLoggingHint:v6];

  return v8;
}

- (IDSPushToken)initWithData:(id)a3 withServiceLoggingHint:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = IDSPushToken;
    v9 = [(IDSPushToken *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_rawToken, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToPushToken:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = [a3 rawToken];
  v5 = [(IDSPushToken *)self rawToken];
  v6 = [v4 isEqualToData:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPushToken *)self isEqualToPushToken:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(IDSPushToken *)self rawToken];
  v3 = [v2 hash];

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

- (IDSPushToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceHint"];

  v7 = [(IDSPushToken *)self initWithData:v5 withServiceLoggingHint:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPushToken *)self rawToken];
  [v4 encodeObject:v5 forKey:@"rawToken"];

  v6 = [(IDSPushToken *)self serviceLoggingHint];
  [v4 encodeObject:v6 forKey:@"serviceHint"];
}

@end