@interface BDSCloudSyncDiagnosticCloudDataInfo
- (BDSCloudSyncDiagnosticCloudDataInfo)initWithCoder:(id)a3;
- (BDSCloudSyncDiagnosticCloudDataInfo)initWithIdentifier:(id)a3 saltedHashedID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCloudSyncDiagnosticCloudDataInfo

- (BDSCloudSyncDiagnosticCloudDataInfo)initWithIdentifier:(id)a3 saltedHashedID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BDSCloudSyncDiagnosticCloudDataInfo;
  v9 = [(BDSCloudSyncDiagnosticCloudDataInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_saltedHashedID, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_13;
    }

    v7 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
    v8 = [v5 identifier];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
      v11 = [v5 identifier];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        v6 = 0;
LABEL_13:

        return v6;
      }
    }

    v13 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
    v14 = [v5 saltedHashedID];
    if (v13 == v14)
    {
      v6 = 1;
    }

    else
    {
      v15 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
      v16 = [v5 saltedHashedID];
      v6 = [v15 isEqual:v16];
    }

    goto LABEL_13;
  }

  return 1;
}

- (BDSCloudSyncDiagnosticCloudDataInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saltedHashedID"];
    saltedHashedID = v5->_saltedHashedID;
    v5->_saltedHashedID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  [v4 encodeObject:v6 forKey:@"saltedHashedID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticCloudDataInfo);
  if (v4)
  {
    v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
    v6 = [v5 copy];
    [(BDSCloudSyncDiagnosticCloudDataInfo *)v4 setIdentifier:v6];

    v7 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
    v8 = [v7 copy];
    [(BDSCloudSyncDiagnosticCloudDataInfo *)v4 setSaltedHashedID:v8];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  v6 = [NSString stringWithFormat:@"<%@: identifier:%@, saltedHashedID:%@>", v3, v4, v5];

  return v6;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  [v3 setObject:v5 forKeyedSubscript:@"saltedHashedID"];

  return v3;
}

@end