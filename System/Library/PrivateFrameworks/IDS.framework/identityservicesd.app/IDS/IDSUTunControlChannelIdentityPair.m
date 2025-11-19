@interface IDSUTunControlChannelIdentityPair
- (IDSUTunControlChannelIdentityPair)initWithLocalFullIdentity:(id)a3 remotePublicIdentity:(id)a4;
- (id)description;
@end

@implementation IDSUTunControlChannelIdentityPair

- (IDSUTunControlChannelIdentityPair)initWithLocalFullIdentity:(id)a3 remotePublicIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSUTunControlChannelIdentityPair;
  v9 = [(IDSUTunControlChannelIdentityPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localFullIdentity, a3);
    objc_storeStrong(&v10->_remotePublicIdentity, a4);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IDSUTunControlChannelIdentityPair *)self localFullIdentity];
  v6 = [(IDSUTunControlChannelIdentityPair *)self remotePublicIdentity];
  v7 = [NSString stringWithFormat:@"<%@:%p local: %@ remote: %@>", v4, self, v5, v6];

  return v7;
}

@end