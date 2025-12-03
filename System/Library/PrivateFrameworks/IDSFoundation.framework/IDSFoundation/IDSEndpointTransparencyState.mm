@interface IDSEndpointTransparencyState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEndpointTransparencyState:(id)state;
- (IDSEndpointTransparencyState)initWithCoder:(id)coder;
- (IDSEndpointTransparencyState)initWithPushToken:(id)token verificationState:(int64_t)state;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSEndpointTransparencyState

- (IDSEndpointTransparencyState)initWithPushToken:(id)token verificationState:(int64_t)state
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = IDSEndpointTransparencyState;
  v8 = [(IDSEndpointTransparencyState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pushToken, token);
    v9->_verificationState = state;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  pushToken = [(IDSEndpointTransparencyState *)self pushToken];
  verificationState = [(IDSEndpointTransparencyState *)self verificationState];
  if ((verificationState + 1) > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E77E2B48[verificationState + 1];
  }

  v8 = [v3 stringWithFormat:@"<%@: %p pushToken: %@, verificationState: %@>", v4, self, pushToken, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSEndpointTransparencyState *)self isEqualToEndpointTransparencyState:equalCopy];

  return v5;
}

- (BOOL)isEqualToEndpointTransparencyState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (self == stateCopy)
  {
    v10 = 1;
  }

  else
  {
    if (stateCopy)
    {
      pushToken = [(IDSEndpointTransparencyState *)self pushToken];
      pushToken2 = [(IDSEndpointTransparencyState *)v7 pushToken];
      if (pushToken == pushToken2 || (-[IDSEndpointTransparencyState pushToken](self, "pushToken"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSEndpointTransparencyState pushToken](v7, "pushToken"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        verificationState = [(IDSEndpointTransparencyState *)self verificationState];
        v10 = verificationState == [(IDSEndpointTransparencyState *)v7 verificationState];
        if (pushToken == pushToken2)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (unint64_t)hash
{
  pushToken = [(IDSEndpointTransparencyState *)self pushToken];
  v3 = [pushToken hash];

  return v3;
}

- (IDSEndpointTransparencyState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PushToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerificationState"];

  v7 = -[IDSEndpointTransparencyState initWithPushToken:verificationState:](self, "initWithPushToken:verificationState:", v5, [v6 integerValue]);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pushToken = [(IDSEndpointTransparencyState *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"PushToken"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSEndpointTransparencyState verificationState](self, "verificationState")}];
  [coderCopy encodeObject:v6 forKey:@"VerificationState"];
}

@end