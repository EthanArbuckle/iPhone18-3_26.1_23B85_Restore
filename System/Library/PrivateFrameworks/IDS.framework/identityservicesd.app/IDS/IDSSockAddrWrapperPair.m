@interface IDSSockAddrWrapperPair
+ (id)shortDescriptionForLocalAddress:(id)a3 remoteAddress:(id)a4;
+ (id)wrapperPairWithLocalAddress:(id)a3 remoteAddress:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSockAddrWrapperPair:(id)a3;
- (IDSSockAddrWrapperPair)initWithLocalAddress:(id)a3 remoteAddress:(id)a4;
@end

@implementation IDSSockAddrWrapperPair

+ (id)wrapperPairWithLocalAddress:(id)a3 remoteAddress:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IDSSockAddrWrapperPair alloc] initWithLocalAddress:v6 remoteAddress:v5];

  return v7;
}

- (IDSSockAddrWrapperPair)initWithLocalAddress:(id)a3 remoteAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IDSSockAddrWrapperPair;
  v8 = [(IDSSockAddrWrapperPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    localAddress = v8->_localAddress;
    v8->_localAddress = v9;

    v11 = [v7 copy];
    remoteAddress = v8->_remoteAddress;
    v8->_remoteAddress = v11;
  }

  return v8;
}

+ (id)shortDescriptionForLocalAddress:(id)a3 remoteAddress:(id)a4
{
  v5 = a4;
  v6 = [a3 saPortHostOrder];
  v7 = [v5 saPortHostOrder];

  return [NSString stringWithFormat:@"%u:::%u", v6, v7];
}

- (BOOL)isEqualToSockAddrWrapperPair:(id)a3
{
  v4 = a3;
  localAddress = self->_localAddress;
  v6 = [v4 localAddress];
  if ([(IDSSockAddrWrapper *)localAddress isEqualToWrapper:v6])
  {
    remoteAddress = self->_remoteAddress;
    v8 = [v4 remoteAddress];
    v9 = [(IDSSockAddrWrapper *)remoteAddress isEqualToWrapper:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(IDSSockAddrWrapperPair *)self isEqualToSockAddrWrapperPair:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end