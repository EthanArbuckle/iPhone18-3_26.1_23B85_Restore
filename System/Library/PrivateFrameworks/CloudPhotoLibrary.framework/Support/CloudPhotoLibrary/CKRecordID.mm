@interface CKRecordID
- (CKRecordID)initWithCPLArchiver:(id)archiver;
- (id)cplFullDescription;
- (id)cpl_scopedIdentifierWithScopeIdentifier:(id)identifier;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
@end

@implementation CKRecordID

- (id)cplFullDescription
{
  v3 = [NSString alloc];
  recordName = [(CKRecordID *)self recordName];
  zoneID = [(CKRecordID *)self zoneID];
  cpl_zoneName = [zoneID cpl_zoneName];
  v7 = [v3 initWithFormat:@"%@#%@", recordName, cpl_zoneName];

  return v7;
}

- (id)cpl_scopedIdentifierWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  recordName = [(CKRecordID *)self recordName];
  v6 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:identifierCopy identifier:recordName];

  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_alloc_init(NSMutableDictionary);
  archiveCursor = [archiverCopy archiveCursor];
  [archiverCopy setArchiveCursor:v5];
  recordName = [(CKRecordID *)self recordName];
  zoneID = [(CKRecordID *)self zoneID];
  zoneName = [zoneID zoneName];
  ownerName = [zoneID ownerName];
  [zoneID databaseScope];
  v11 = zoneName;
  v12 = ownerName;
  if ([recordName isEqualToString:CKCurrentUserDefaultName] && (objc_msgSend(v11, "isEqualToString:", CKRecordZoneDefaultName) & 1) != 0)
  {
    v13 = [v12 isEqualToString:CKCurrentUserDefaultName];

    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  recordName2 = [(CKRecordID *)self recordName];
  [archiverCopy encodeObject:recordName2 forKey:@"recordName"];

  v15 = v12;
  if (([v11 isEqualToString:CPLPrimaryScopeIdentifier] & 1) == 0)
  {

    goto LABEL_10;
  }

  v16 = [v15 isEqualToString:CKCurrentUserDefaultName];

  if ((v16 & 1) == 0)
  {
LABEL_10:
    zoneID2 = [(CKRecordID *)self zoneID];
    [archiverCopy encodeObject:zoneID2 forKey:@"zoneID"];
  }

LABEL_11:
  [archiverCopy setArchiveCursor:archiveCursor];

  return v5;
}

- (CKRecordID)initWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordName"];
  if (v5)
  {
    v6 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    if (!v6)
    {
      if (qword_1002C5548 != -1)
      {
        sub_1001A91FC();
      }

      v6 = qword_1002C5540;
    }

    v7 = [(CKRecordID *)self initWithRecordName:v5 zoneID:v6];
  }

  else
  {
    v7 = [(CKRecordID *)self initWithRecordName:CKCurrentUserDefaultName];
  }

  return v7;
}

@end