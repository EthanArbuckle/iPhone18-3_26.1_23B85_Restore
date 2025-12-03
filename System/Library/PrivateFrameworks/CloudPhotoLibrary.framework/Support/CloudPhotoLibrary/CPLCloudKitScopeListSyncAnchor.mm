@interface CPLCloudKitScopeListSyncAnchor
+ (CPLCloudKitScopeListSyncAnchor)cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:(id)anchor;
- (CPLCloudKitScopeListSyncAnchor)initWithCoder:(id)coder;
- (CPLCloudKitScopeListSyncAnchor)initWithPrivateChangeToken:(id)token sharedChangeToken:(id)changeToken;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLCloudKitScopeListSyncAnchor

+ (CPLCloudKitScopeListSyncAnchor)cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (!anchorCopy || ([NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:anchorCopy class:objc_opt_class()], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [[self alloc] initWithPrivateChangeToken:0 sharedChangeToken:0];
  }

  return v5;
}

- (CPLCloudKitScopeListSyncAnchor)initWithPrivateChangeToken:(id)token sharedChangeToken:(id)changeToken
{
  tokenCopy = token;
  changeTokenCopy = changeToken;
  v12.receiver = self;
  v12.super_class = CPLCloudKitScopeListSyncAnchor;
  v9 = [(CPLCloudKitScopeListSyncAnchor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_privateChangeToken, token);
    objc_storeStrong(&v10->_sharedChangeToken, changeToken);
  }

  return v10;
}

- (CPLCloudKitScopeListSyncAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLCloudKitScopeListSyncAnchor;
  v5 = [(CPLCloudKitScopeListSyncAnchor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"private"];
    privateChangeToken = v5->_privateChangeToken;
    v5->_privateChangeToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shared"];
    sharedChangeToken = v5->_sharedChangeToken;
    v5->_sharedChangeToken = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  privateChangeToken = self->_privateChangeToken;
  coderCopy = coder;
  [coderCopy encodeObject:privateChangeToken forKey:@"private"];
  [coderCopy encodeObject:self->_sharedChangeToken forKey:@"shared"];
}

- (id)description
{
  v3 = [NSString alloc];
  data = [(CKServerChangeToken *)self->_privateChangeToken data];
  v5 = [data base64EncodedStringWithOptions:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"none";
  }

  data2 = [(CKServerChangeToken *)self->_sharedChangeToken data];
  v9 = [data2 base64EncodedStringWithOptions:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"none";
  }

  v12 = [v3 initWithFormat:@"private: %@ / shared: %@", v7, v11];

  return v12;
}

@end