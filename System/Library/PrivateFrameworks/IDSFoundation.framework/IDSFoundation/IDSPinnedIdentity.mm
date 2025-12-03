@interface IDSPinnedIdentity
- (IDSPinnedIdentity)initWithCoder:(id)coder;
- (IDSPinnedIdentity)initWithIdentityBlob:(id)blob;
@end

@implementation IDSPinnedIdentity

- (IDSPinnedIdentity)initWithIdentityBlob:(id)blob
{
  blobCopy = blob;
  v9.receiver = self;
  v9.super_class = IDSPinnedIdentity;
  v6 = [(IDSPinnedIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityBlob, blob);
  }

  return v7;
}

- (IDSPinnedIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IDSPinnedIdentity;
  v5 = [(IDSPinnedIdentity *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityBlob"];
    identityBlob = v5->_identityBlob;
    v5->_identityBlob = v6;
  }

  return v5;
}

@end