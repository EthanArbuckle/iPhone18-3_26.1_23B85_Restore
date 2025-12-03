@interface BRCKShareSubitem
- (BRCKShareSubitem)initWithShare:(id)share;
@end

@implementation BRCKShareSubitem

- (BRCKShareSubitem)initWithShare:(id)share
{
  shareCopy = share;
  [shareCopy participants];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v28 = 0u;
  recordName = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (recordName)
  {
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != recordName; i = (i + 1))
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 role] == 1)
        {
          userIdentity = [v10 userIdentity];
          userRecordID = [userIdentity userRecordID];
          recordName = [userRecordID recordName];

          goto LABEL_11;
        }
      }

      recordName = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (recordName)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [CKRecordZoneID alloc];
  if (recordName)
  {
    v14 = recordName;
  }

  else
  {
    v14 = CKCurrentUserDefaultName;
  }

  v15 = [v13 initWithZoneName:@"__NONE__" ownerName:v14];
  v16 = [[CKRecord alloc] initWithRecordType:CKRecordTypeUserRecord zoneID:v15];
  v17 = [[CKRecordID alloc] initWithRecordName:@"__NONE__" zoneID:v15];
  v24.receiver = self;
  v24.super_class = BRCKShareSubitem;
  v18 = [(BRCKShareSubitem *)&v24 initWithRootRecord:v16 shareID:v17];
  if (v18)
  {
    v19 = [v6 mutableCopy];
    [(BRCKShareSubitem *)v18 setAllParticipants:v19];

    objc_storeStrong(&v18->_originalShare, share);
    v18->_publicPermission = [shareCopy publicPermission];
    v20 = [shareCopy objectForKeyedSubscript:CKShareTitleKey];
    [(BRCKShareSubitem *)v18 setObject:v20 forKeyedSubscript:CKShareTitleKey];

    v21 = [shareCopy objectForKeyedSubscript:CKShareTypeKey];
    [(BRCKShareSubitem *)v18 setObject:v21 forKeyedSubscript:CKShareTypeKey];

    v22 = [shareCopy objectForKeyedSubscript:CKShareThumbnailImageDataKey];
    [(BRCKShareSubitem *)v18 setObject:v22 forKeyedSubscript:CKShareThumbnailImageDataKey];
  }

  return v18;
}

@end