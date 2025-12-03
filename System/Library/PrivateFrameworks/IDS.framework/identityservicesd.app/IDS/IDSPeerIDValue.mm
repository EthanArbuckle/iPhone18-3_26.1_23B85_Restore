@interface IDSPeerIDValue
+ (id)peerIDValueWithEndpoints:(id)endpoints keyTransparencyContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerIDValue:(id)value;
- (IDSPeerIDValue)initWithCoder:(id)coder;
- (IDSPeerIDValue)initWithEndpoints:(id)endpoints keyTransparencyContext:(id)context;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPeerIDValue

+ (id)peerIDValueWithEndpoints:(id)endpoints keyTransparencyContext:(id)context
{
  contextCopy = context;
  endpointsCopy = endpoints;
  v8 = [[self alloc] initWithEndpoints:endpointsCopy keyTransparencyContext:contextCopy];

  return v8;
}

- (IDSPeerIDValue)initWithEndpoints:(id)endpoints keyTransparencyContext:(id)context
{
  endpointsCopy = endpoints;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = IDSPeerIDValue;
  v8 = [(IDSPeerIDValue *)&v14 init];
  if (v8)
  {
    v9 = [endpointsCopy copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    v11 = [contextCopy copy];
    keyTransparencyContext = v8->_keyTransparencyContext;
    v8->_keyTransparencyContext = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IDSPeerIDValue *)self isEqualToPeerIDValue:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToPeerIDValue:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  if (self == valueCopy)
  {
    v10 = 1;
  }

  else
  {
    if (valueCopy)
    {
      endpoints = [(IDSPeerIDValue *)self endpoints];
      endpoints2 = [(IDSPeerIDValue *)v7 endpoints];
      if (endpoints == endpoints2 || (-[IDSPeerIDValue endpoints](self, "endpoints"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSPeerIDValue endpoints](v7, "endpoints"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        keyTransparencyContext = [(IDSPeerIDValue *)self keyTransparencyContext];
        keyTransparencyContext2 = [(IDSPeerIDValue *)v7 keyTransparencyContext];
        if (keyTransparencyContext == keyTransparencyContext2)
        {
          v10 = 1;
        }

        else
        {
          keyTransparencyContext3 = [(IDSPeerIDValue *)self keyTransparencyContext];
          keyTransparencyContext4 = [(IDSPeerIDValue *)v7 keyTransparencyContext];
          v10 = [keyTransparencyContext3 isEqual:keyTransparencyContext4];
        }

        if (endpoints == endpoints2)
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
  endpoints = [(IDSPeerIDValue *)self endpoints];
  v3 = [endpoints hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  endpoints = [(IDSPeerIDValue *)self endpoints];
  v5 = [endpoints count];
  keyTransparencyContext = [(IDSPeerIDValue *)self keyTransparencyContext];
  v7 = [NSString stringWithFormat:@"<%@: %p endpoints.count: %lu, keyTransparencyContext: %@>", v3, self, v5, keyTransparencyContext];

  return v7;
}

- (IDSPeerIDValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"endpoints"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyTransparencyContext"];

  v9 = [(IDSPeerIDValue *)self initWithEndpoints:v7 keyTransparencyContext:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endpoints = [(IDSPeerIDValue *)self endpoints];
  [coderCopy encodeObject:endpoints forKey:@"endpoints"];

  keyTransparencyContext = [(IDSPeerIDValue *)self keyTransparencyContext];
  [coderCopy encodeObject:keyTransparencyContext forKey:@"keyTransparencyContext"];
}

@end