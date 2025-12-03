@interface IDSUTunControlChannelIdentityPair
- (IDSUTunControlChannelIdentityPair)initWithLocalFullIdentity:(id)identity remotePublicIdentity:(id)publicIdentity;
- (id)description;
@end

@implementation IDSUTunControlChannelIdentityPair

- (IDSUTunControlChannelIdentityPair)initWithLocalFullIdentity:(id)identity remotePublicIdentity:(id)publicIdentity
{
  identityCopy = identity;
  publicIdentityCopy = publicIdentity;
  v12.receiver = self;
  v12.super_class = IDSUTunControlChannelIdentityPair;
  v9 = [(IDSUTunControlChannelIdentityPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localFullIdentity, identity);
    objc_storeStrong(&v10->_remotePublicIdentity, publicIdentity);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  localFullIdentity = [(IDSUTunControlChannelIdentityPair *)self localFullIdentity];
  remotePublicIdentity = [(IDSUTunControlChannelIdentityPair *)self remotePublicIdentity];
  v7 = [NSString stringWithFormat:@"<%@:%p local: %@ remote: %@>", v4, self, localFullIdentity, remotePublicIdentity];

  return v7;
}

@end