@interface IDSDestinationPushToken
- (BOOL)isEqual:(id)a3;
- (IDSDestinationPushToken)initWithAlias:(id)a3 pushToken:(id)a4;
- (IDSDestinationPushToken)initWithCoder:(id)a3;
- (id)description;
- (id)destinationURIs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationPushToken

- (IDSDestinationPushToken)initWithAlias:(id)a3 pushToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSDestinationPushToken;
  v9 = [(IDSDestinationPushToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alias, a3);
    objc_storeStrong(&v10->_pushToken, a4);
  }

  return v10;
}

- (IDSDestinationPushToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationPushTokenAlias"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationPushTokenPushToken"];

  v7 = [(IDSDestinationPushToken *)self initWithAlias:v5 pushToken:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDestinationPushToken *)self alias];
  [v4 encodeObject:v5 forKey:@"kIDSDestinationPushTokenAlias"];

  v6 = [(IDSDestinationPushToken *)self pushToken];
  [v4 encodeObject:v6 forKey:@"kIDSDestinationPushTokenPushToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSDestinationPushToken *)self alias];
  v6 = IDSLoggableDescriptionForHandleOnService(v5, 0);
  v7 = [(IDSDestinationPushToken *)self pushToken];
  v8 = IDSLoggableDescriptionForTokenOnService(v7, 0);
  v9 = [v3 stringWithFormat:@"<%@: %p alias: %@ pushToken: %@>", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 pushToken];
    v7 = [(IDSDestinationPushToken *)self pushToken];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 alias];
      v9 = [(IDSDestinationPushToken *)self alias];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(IDSDestinationPushToken *)self pushToken];
  v3 = [v2 hash];

  return v3;
}

- (id)destinationURIs
{
  v3 = [(IDSDestinationPushToken *)self pushToken];
  v4 = [(IDSDestinationPushToken *)self alias];
  v5 = _IDSCopyIDForTokenWithURI(v3, v4);

  if (v5)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v5];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v6 = ;

  return v6;
}

@end