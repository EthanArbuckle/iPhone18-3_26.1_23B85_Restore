@interface IDSEndpointTransparencyState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEndpointTransparencyState:(id)a3;
- (IDSEndpointTransparencyState)initWithCoder:(id)a3;
- (IDSEndpointTransparencyState)initWithPushToken:(id)a3 verificationState:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSEndpointTransparencyState

- (IDSEndpointTransparencyState)initWithPushToken:(id)a3 verificationState:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSEndpointTransparencyState;
  v8 = [(IDSEndpointTransparencyState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pushToken, a3);
    v9->_verificationState = a4;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSEndpointTransparencyState *)self pushToken];
  v6 = [(IDSEndpointTransparencyState *)self verificationState];
  if ((v6 + 1) > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E77E2B48[v6 + 1];
  }

  v8 = [v3 stringWithFormat:@"<%@: %p pushToken: %@, verificationState: %@>", v4, self, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSEndpointTransparencyState *)self isEqualToEndpointTransparencyState:v4];

  return v5;
}

- (BOOL)isEqualToEndpointTransparencyState:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSEndpointTransparencyState *)self pushToken];
      v9 = [(IDSEndpointTransparencyState *)v7 pushToken];
      if (v8 == v9 || (-[IDSEndpointTransparencyState pushToken](self, "pushToken"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSEndpointTransparencyState pushToken](v7, "pushToken"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(IDSEndpointTransparencyState *)self verificationState];
        v10 = v11 == [(IDSEndpointTransparencyState *)v7 verificationState];
        if (v8 == v9)
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
  v2 = [(IDSEndpointTransparencyState *)self pushToken];
  v3 = [v2 hash];

  return v3;
}

- (IDSEndpointTransparencyState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PushToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerificationState"];

  v7 = -[IDSEndpointTransparencyState initWithPushToken:verificationState:](self, "initWithPushToken:verificationState:", v5, [v6 integerValue]);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSEndpointTransparencyState *)self pushToken];
  [v4 encodeObject:v5 forKey:@"PushToken"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSEndpointTransparencyState verificationState](self, "verificationState")}];
  [v4 encodeObject:v6 forKey:@"VerificationState"];
}

@end