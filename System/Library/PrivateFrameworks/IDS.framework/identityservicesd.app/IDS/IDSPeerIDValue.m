@interface IDSPeerIDValue
+ (id)peerIDValueWithEndpoints:(id)a3 keyTransparencyContext:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeerIDValue:(id)a3;
- (IDSPeerIDValue)initWithCoder:(id)a3;
- (IDSPeerIDValue)initWithEndpoints:(id)a3 keyTransparencyContext:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPeerIDValue

+ (id)peerIDValueWithEndpoints:(id)a3 keyTransparencyContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithEndpoints:v7 keyTransparencyContext:v6];

  return v8;
}

- (IDSPeerIDValue)initWithEndpoints:(id)a3 keyTransparencyContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IDSPeerIDValue;
  v8 = [(IDSPeerIDValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    v11 = [v7 copy];
    keyTransparencyContext = v8->_keyTransparencyContext;
    v8->_keyTransparencyContext = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IDSPeerIDValue *)self isEqualToPeerIDValue:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToPeerIDValue:(id)a3
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
      v8 = [(IDSPeerIDValue *)self endpoints];
      v9 = [(IDSPeerIDValue *)v7 endpoints];
      if (v8 == v9 || (-[IDSPeerIDValue endpoints](self, "endpoints"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSPeerIDValue endpoints](v7, "endpoints"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(IDSPeerIDValue *)self keyTransparencyContext];
        v12 = [(IDSPeerIDValue *)v7 keyTransparencyContext];
        if (v11 == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = [(IDSPeerIDValue *)self keyTransparencyContext];
          v14 = [(IDSPeerIDValue *)v7 keyTransparencyContext];
          v10 = [v13 isEqual:v14];
        }

        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v2 = [(IDSPeerIDValue *)self endpoints];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSPeerIDValue *)self endpoints];
  v5 = [v4 count];
  v6 = [(IDSPeerIDValue *)self keyTransparencyContext];
  v7 = [NSString stringWithFormat:@"<%@: %p endpoints.count: %lu, keyTransparencyContext: %@>", v3, self, v5, v6];

  return v7;
}

- (IDSPeerIDValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"endpoints"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyTransparencyContext"];

  v9 = [(IDSPeerIDValue *)self initWithEndpoints:v7 keyTransparencyContext:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPeerIDValue *)self endpoints];
  [v4 encodeObject:v5 forKey:@"endpoints"];

  v6 = [(IDSPeerIDValue *)self keyTransparencyContext];
  [v4 encodeObject:v6 forKey:@"keyTransparencyContext"];
}

@end