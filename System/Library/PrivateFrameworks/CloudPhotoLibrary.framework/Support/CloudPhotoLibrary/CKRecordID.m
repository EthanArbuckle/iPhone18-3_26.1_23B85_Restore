@interface CKRecordID
- (CKRecordID)initWithCPLArchiver:(id)a3;
- (id)cplFullDescription;
- (id)cpl_scopedIdentifierWithScopeIdentifier:(id)a3;
- (id)plistArchiveWithCPLArchiver:(id)a3;
@end

@implementation CKRecordID

- (id)cplFullDescription
{
  v3 = [NSString alloc];
  v4 = [(CKRecordID *)self recordName];
  v5 = [(CKRecordID *)self zoneID];
  v6 = [v5 cpl_zoneName];
  v7 = [v3 initWithFormat:@"%@#%@", v4, v6];

  return v7;
}

- (id)cpl_scopedIdentifierWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CKRecordID *)self recordName];
  v6 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 archiveCursor];
  [v4 setArchiveCursor:v5];
  v7 = [(CKRecordID *)self recordName];
  v8 = [(CKRecordID *)self zoneID];
  v9 = [v8 zoneName];
  v10 = [v8 ownerName];
  [v8 databaseScope];
  v11 = v9;
  v12 = v10;
  if ([v7 isEqualToString:CKCurrentUserDefaultName] && (objc_msgSend(v11, "isEqualToString:", CKRecordZoneDefaultName) & 1) != 0)
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

  v14 = [(CKRecordID *)self recordName];
  [v4 encodeObject:v14 forKey:@"recordName"];

  v15 = v12;
  if (([v11 isEqualToString:CPLPrimaryScopeIdentifier] & 1) == 0)
  {

    goto LABEL_10;
  }

  v16 = [v15 isEqualToString:CKCurrentUserDefaultName];

  if ((v16 & 1) == 0)
  {
LABEL_10:
    v17 = [(CKRecordID *)self zoneID];
    [v4 encodeObject:v17 forKey:@"zoneID"];
  }

LABEL_11:
  [v4 setArchiveCursor:v6];

  return v5;
}

- (CKRecordID)initWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordName"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
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