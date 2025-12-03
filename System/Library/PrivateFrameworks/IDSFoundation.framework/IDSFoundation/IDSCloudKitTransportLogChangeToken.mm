@interface IDSCloudKitTransportLogChangeToken
- (IDSCloudKitTransportLogChangeToken)initWithCKToken:(id)token;
- (IDSCloudKitTransportLogChangeToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSCloudKitTransportLogChangeToken

- (IDSCloudKitTransportLogChangeToken)initWithCKToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = IDSCloudKitTransportLogChangeToken;
  v6 = [(IDSCloudKitTransportLogChangeToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ckToken, token);
  }

  return v7;
}

- (IDSCloudKitTransportLogChangeToken)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"IDSCloudKitTransportLogChangeTokenCKToken"];
  v5 = [(IDSCloudKitTransportLogChangeToken *)self initWithCKToken:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ckToken = [(IDSCloudKitTransportLogChangeToken *)self ckToken];
  [coderCopy encodeObject:ckToken forKey:@"IDSCloudKitTransportLogChangeTokenCKToken"];
}

@end