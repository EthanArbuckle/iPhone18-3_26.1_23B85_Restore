@interface CPLCloudKitScopeListSyncAnchor
+ (CPLCloudKitScopeListSyncAnchor)cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:(id)a3;
- (CPLCloudKitScopeListSyncAnchor)initWithCoder:(id)a3;
- (CPLCloudKitScopeListSyncAnchor)initWithPrivateChangeToken:(id)a3 sharedChangeToken:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLCloudKitScopeListSyncAnchor

+ (CPLCloudKitScopeListSyncAnchor)cloudKitScopeListSyncAnchorWithScopeListSyncAnchor:(id)a3
{
  v4 = a3;
  if (!v4 || ([NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v4 class:objc_opt_class()], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [[a1 alloc] initWithPrivateChangeToken:0 sharedChangeToken:0];
  }

  return v5;
}

- (CPLCloudKitScopeListSyncAnchor)initWithPrivateChangeToken:(id)a3 sharedChangeToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLCloudKitScopeListSyncAnchor;
  v9 = [(CPLCloudKitScopeListSyncAnchor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_privateChangeToken, a3);
    objc_storeStrong(&v10->_sharedChangeToken, a4);
  }

  return v10;
}

- (CPLCloudKitScopeListSyncAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLCloudKitScopeListSyncAnchor;
  v5 = [(CPLCloudKitScopeListSyncAnchor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"private"];
    privateChangeToken = v5->_privateChangeToken;
    v5->_privateChangeToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shared"];
    sharedChangeToken = v5->_sharedChangeToken;
    v5->_sharedChangeToken = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  privateChangeToken = self->_privateChangeToken;
  v5 = a3;
  [v5 encodeObject:privateChangeToken forKey:@"private"];
  [v5 encodeObject:self->_sharedChangeToken forKey:@"shared"];
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(CKServerChangeToken *)self->_privateChangeToken data];
  v5 = [v4 base64EncodedStringWithOptions:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"none";
  }

  v8 = [(CKServerChangeToken *)self->_sharedChangeToken data];
  v9 = [v8 base64EncodedStringWithOptions:0];
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