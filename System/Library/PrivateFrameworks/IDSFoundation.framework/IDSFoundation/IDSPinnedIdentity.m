@interface IDSPinnedIdentity
- (IDSPinnedIdentity)initWithCoder:(id)a3;
- (IDSPinnedIdentity)initWithIdentityBlob:(id)a3;
@end

@implementation IDSPinnedIdentity

- (IDSPinnedIdentity)initWithIdentityBlob:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSPinnedIdentity;
  v6 = [(IDSPinnedIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityBlob, a3);
  }

  return v7;
}

- (IDSPinnedIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSPinnedIdentity;
  v5 = [(IDSPinnedIdentity *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityBlob"];
    identityBlob = v5->_identityBlob;
    v5->_identityBlob = v6;
  }

  return v5;
}

@end