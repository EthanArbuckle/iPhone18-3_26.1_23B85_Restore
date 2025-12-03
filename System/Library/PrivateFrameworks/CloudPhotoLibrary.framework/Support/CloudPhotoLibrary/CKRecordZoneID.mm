@interface CKRecordZoneID
- (CKRecordZoneID)initWithCPLArchiver:(id)archiver;
- (CKRecordZoneID)initWithCPLScopeIdentifier:(id)identifier;
- (id)cpl_zoneName;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
@end

@implementation CKRecordZoneID

- (id)cpl_zoneName
{
  ownerName = [(CKRecordZoneID *)self ownerName];
  zoneName = [(CKRecordZoneID *)self zoneName];
  if (ownerName && ![ownerName isEqualToString:CKCurrentUserDefaultName])
  {
    v5 = [CPLScopedIdentifier descriptionWithScopeIdentifier:ownerName identifier:zoneName];
  }

  else
  {
    v5 = zoneName;
  }

  v6 = v5;

  return v6;
}

- (CKRecordZoneID)initWithCPLScopeIdentifier:(id)identifier
{
  v4 = [CPLScopedIdentifier scopedIdentifierWithString:identifier includeScopeIndex:0 defaultScopeIdentifier:CKCurrentUserDefaultName];
  identifier = [v4 identifier];
  scopeIdentifier = [v4 scopeIdentifier];
  v7 = [(CKRecordZoneID *)self initWithZoneName:identifier ownerName:scopeIdentifier];

  return v7;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_alloc_init(NSMutableDictionary);
  archiveCursor = [archiverCopy archiveCursor];
  [archiverCopy setArchiveCursor:v5];
  zoneName = [(CKRecordZoneID *)self zoneName];
  [archiverCopy encodeObject:zoneName forKey:@"zoneName"];

  ownerName = [(CKRecordZoneID *)self ownerName];
  if (([ownerName isEqualToString:CKCurrentUserDefaultName] & 1) == 0)
  {
    [archiverCopy encodeObject:ownerName forKey:@"ownerName"];
  }

  if ([(CKRecordZoneID *)self databaseScope])
  {
    v9 = [NSNumber numberWithInteger:[(CKRecordZoneID *)self databaseScope]];
    [archiverCopy encodeObject:v9 forKey:@"databaseScope"];
  }

  [archiverCopy setArchiveCursor:archiveCursor];

  return v5;
}

- (CKRecordZoneID)initWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
  v7 = v6;
  v8 = CKCurrentUserDefaultName;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"databaseScope"];

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