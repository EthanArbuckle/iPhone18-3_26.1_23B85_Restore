@interface CKRecordZoneID
- (CKRecordZoneID)initWithCPLArchiver:(id)a3;
- (CKRecordZoneID)initWithCPLScopeIdentifier:(id)a3;
- (id)cpl_zoneName;
- (id)plistArchiveWithCPLArchiver:(id)a3;
@end

@implementation CKRecordZoneID

- (id)cpl_zoneName
{
  v3 = [(CKRecordZoneID *)self ownerName];
  v4 = [(CKRecordZoneID *)self zoneName];
  if (v3 && ![v3 isEqualToString:CKCurrentUserDefaultName])
  {
    v5 = [CPLScopedIdentifier descriptionWithScopeIdentifier:v3 identifier:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (CKRecordZoneID)initWithCPLScopeIdentifier:(id)a3
{
  v4 = [CPLScopedIdentifier scopedIdentifierWithString:a3 includeScopeIndex:0 defaultScopeIdentifier:CKCurrentUserDefaultName];
  v5 = [v4 identifier];
  v6 = [v4 scopeIdentifier];
  v7 = [(CKRecordZoneID *)self initWithZoneName:v5 ownerName:v6];

  return v7;
}

- (id)plistArchiveWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 archiveCursor];
  [v4 setArchiveCursor:v5];
  v7 = [(CKRecordZoneID *)self zoneName];
  [v4 encodeObject:v7 forKey:@"zoneName"];

  v8 = [(CKRecordZoneID *)self ownerName];
  if (([v8 isEqualToString:CKCurrentUserDefaultName] & 1) == 0)
  {
    [v4 encodeObject:v8 forKey:@"ownerName"];
  }

  if ([(CKRecordZoneID *)self databaseScope])
  {
    v9 = [NSNumber numberWithInteger:[(CKRecordZoneID *)self databaseScope]];
    [v4 encodeObject:v9 forKey:@"databaseScope"];
  }

  [v4 setArchiveCursor:v6];

  return v5;
}

- (CKRecordZoneID)initWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
  v7 = v6;
  v8 = CKCurrentUserDefaultName;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"databaseScope"];

  if (v10 && [v10 integerValue])
  {
    v11 = -[CKRecordZoneID initWithZoneName:ownerName:databaseScope:](self, "initWithZoneName:ownerName:databaseScope:", v5, v9, [v10 integerValue]);
  }

  else
  {
    v11 = [(CKRecordZoneID *)self initWithZoneName:v5 ownerName:v9];
  }

  v12 = v11;

  return v12;
}

@end