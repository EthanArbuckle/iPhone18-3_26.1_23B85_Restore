@interface BRCKShareSubitem
- (BRCKShareSubitem)initWithShare:(id)share;
@end

@implementation BRCKShareSubitem

- (BRCKShareSubitem)initWithShare:(id)share
{
  shareCopy = share;
  [shareCopy participants];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  recordName = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (recordName)
  {
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != recordName; i = (i + 1))
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 role] == 1)
        {
          userIdentity = [v9 userIdentity];
          userRecordID = [userIdentity userRecordID];
          recordName = [userRecordID recordName];

          goto LABEL_11;
        }
      }

      recordName = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (recordName)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [CKRecordZoneID alloc];
  if (recordName)
  {
    v13 = recordName;
  }

  else
  {
    v13 = CKCurrentUserDefaultName;
  }

  v14 = [v12 initWithZoneName:@"__NONE__" ownerName:v13];
  v15 = [[CKRecord alloc] initWithRecordType:CKRecordTypeUserRecord zoneID:v14];
  v16 = [[CKRecordID alloc] initWithRecordName:@"__NONE__" zoneID:v14];
  v23.receiver = self;
  v23.super_class = BRCKShareSubitem;
  v17 = [(BRCKShareSubitem *)&v23 initWithRootRecord:v15 shareID:v16];
  if (v17)
  {
    v18 = [v5 mutableCopy];
    [(BRCKShareSubitem *)v17 setAllParticipants:v18];

    v17->_publicPermission = [shareCopy publicPermission];
    v19 = [shareCopy objectForKeyedSubscript:CKShareTitleKey];
    [(BRCKShareSubitem *)v17 setObject:v19 forKeyedSubscript:CKShareTitleKey];

    v20 = [shareCopy objectForKeyedSubscript:CKShareTypeKey];
    [(BRCKShareSubitem *)v17 setObject:v20 forKeyedSubscript:CKShareTypeKey];

    v21 = [shareCopy objectForKeyedSubscript:CKShareThumbnailImageDataKey];
    [(BRCKShareSubitem *)v17 setObject:v21 forKeyedSubscript:CKShareThumbnailImageDataKey];
  }

  return v17;
}

@end