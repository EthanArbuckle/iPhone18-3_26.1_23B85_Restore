@interface IDSCloudKitTransportLogChangeToken
- (IDSCloudKitTransportLogChangeToken)initWithCKToken:(id)a3;
- (IDSCloudKitTransportLogChangeToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSCloudKitTransportLogChangeToken

- (IDSCloudKitTransportLogChangeToken)initWithCKToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSCloudKitTransportLogChangeToken;
  v6 = [(IDSCloudKitTransportLogChangeToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ckToken, a3);
  }

  return v7;
}

- (IDSCloudKitTransportLogChangeToken)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"IDSCloudKitTransportLogChangeTokenCKToken"];
  v5 = [(IDSCloudKitTransportLogChangeToken *)self initWithCKToken:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitTransportLogChangeToken *)self ckToken];
  [v4 encodeObject:v5 forKey:@"IDSCloudKitTransportLogChangeTokenCKToken"];
}

@end