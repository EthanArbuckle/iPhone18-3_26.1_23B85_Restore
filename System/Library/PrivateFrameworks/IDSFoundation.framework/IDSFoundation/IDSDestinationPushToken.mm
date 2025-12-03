@interface IDSDestinationPushToken
- (BOOL)isEqual:(id)equal;
- (IDSDestinationPushToken)initWithAlias:(id)alias pushToken:(id)token;
- (IDSDestinationPushToken)initWithCoder:(id)coder;
- (id)description;
- (id)destinationURIs;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestinationPushToken

- (IDSDestinationPushToken)initWithAlias:(id)alias pushToken:(id)token
{
  aliasCopy = alias;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = IDSDestinationPushToken;
  v9 = [(IDSDestinationPushToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alias, alias);
    objc_storeStrong(&v10->_pushToken, token);
  }

  return v10;
}

- (IDSDestinationPushToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationPushTokenAlias"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationPushTokenPushToken"];

  v7 = [(IDSDestinationPushToken *)self initWithAlias:v5 pushToken:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alias = [(IDSDestinationPushToken *)self alias];
  [coderCopy encodeObject:alias forKey:@"kIDSDestinationPushTokenAlias"];

  pushToken = [(IDSDestinationPushToken *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"kIDSDestinationPushTokenPushToken"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  alias = [(IDSDestinationPushToken *)self alias];
  v6 = IDSLoggableDescriptionForHandleOnService(alias, 0);
  pushToken = [(IDSDestinationPushToken *)self pushToken];
  v8 = IDSLoggableDescriptionForTokenOnService(pushToken, 0);
  v9 = [v3 stringWithFormat:@"<%@: %p alias: %@ pushToken: %@>", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    pushToken = [v5 pushToken];
    pushToken2 = [(IDSDestinationPushToken *)self pushToken];
    if ([pushToken isEqual:pushToken2])
    {
      alias = [v5 alias];
      alias2 = [(IDSDestinationPushToken *)self alias];
      v10 = [alias isEqual:alias2];
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
  pushToken = [(IDSDestinationPushToken *)self pushToken];
  v3 = [pushToken hash];

  return v3;
}

- (id)destinationURIs
{
  pushToken = [(IDSDestinationPushToken *)self pushToken];
  alias = [(IDSDestinationPushToken *)self alias];
  v5 = _IDSCopyIDForTokenWithURI(pushToken, alias);

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