@interface BDSCloudSyncDiagnosticCloudDataInfo
- (BDSCloudSyncDiagnosticCloudDataInfo)initWithCoder:(id)coder;
- (BDSCloudSyncDiagnosticCloudDataInfo)initWithIdentifier:(id)identifier saltedHashedID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)stateForLog;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCloudSyncDiagnosticCloudDataInfo

- (BDSCloudSyncDiagnosticCloudDataInfo)initWithIdentifier:(id)identifier saltedHashedID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BDSCloudSyncDiagnosticCloudDataInfo;
  v9 = [(BDSCloudSyncDiagnosticCloudDataInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_saltedHashedID, d);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_13;
    }

    identifier = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
    identifier2 = [v5 identifier];
    v9 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
      identifier4 = [v5 identifier];
      v12 = [identifier3 isEqual:identifier4];

      if (!v12)
      {
        v6 = 0;
LABEL_13:

        return v6;
      }
    }

    saltedHashedID = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
    saltedHashedID2 = [v5 saltedHashedID];
    if (saltedHashedID == saltedHashedID2)
    {
      v6 = 1;
    }

    else
    {
      saltedHashedID3 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
      saltedHashedID4 = [v5 saltedHashedID];
      v6 = [saltedHashedID3 isEqual:saltedHashedID4];
    }

    goto LABEL_13;
  }

  return 1;
}

- (BDSCloudSyncDiagnosticCloudDataInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCloudSyncDiagnosticCloudDataInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"saltedHashedID"];
    saltedHashedID = v5->_saltedHashedID;
    v5->_saltedHashedID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  saltedHashedID = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  [coderCopy encodeObject:saltedHashedID forKey:@"saltedHashedID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCloudSyncDiagnosticCloudDataInfo);
  if (v4)
  {
    identifier = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
    v6 = [identifier copy];
    [(BDSCloudSyncDiagnosticCloudDataInfo *)v4 setIdentifier:v6];

    saltedHashedID = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
    v8 = [saltedHashedID copy];
    [(BDSCloudSyncDiagnosticCloudDataInfo *)v4 setSaltedHashedID:v8];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  saltedHashedID = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  v6 = [NSString stringWithFormat:@"<%@: identifier:%@, saltedHashedID:%@>", v3, identifier, saltedHashedID];

  return v6;
}

- (NSDictionary)stateForLog
{
  v3 = objc_alloc_init(NSMutableDictionary);
  identifier = [(BDSCloudSyncDiagnosticCloudDataInfo *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  saltedHashedID = [(BDSCloudSyncDiagnosticCloudDataInfo *)self saltedHashedID];
  [v3 setObject:saltedHashedID forKeyedSubscript:@"saltedHashedID"];

  return v3;
}

@end