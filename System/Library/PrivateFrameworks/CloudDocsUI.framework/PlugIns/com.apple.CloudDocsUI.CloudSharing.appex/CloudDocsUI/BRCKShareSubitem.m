@interface BRCKShareSubitem
- (BRCKShareSubitem)initWithShare:(id)a3;
@end

@implementation BRCKShareSubitem

- (BRCKShareSubitem)initWithShare:(id)a3
{
  v4 = a3;
  [v4 participants];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 role] == 1)
        {
          v10 = [v9 userIdentity];
          v11 = [v10 userRecordID];
          v6 = [v11 recordName];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [CKRecordZoneID alloc];
  if (v6)
  {
    v13 = v6;
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

    v17->_publicPermission = [v4 publicPermission];
    v19 = [v4 objectForKeyedSubscript:CKShareTitleKey];
    [(BRCKShareSubitem *)v17 setObject:v19 forKeyedSubscript:CKShareTitleKey];

    v20 = [v4 objectForKeyedSubscript:CKShareTypeKey];
    [(BRCKShareSubitem *)v17 setObject:v20 forKeyedSubscript:CKShareTypeKey];

    v21 = [v4 objectForKeyedSubscript:CKShareThumbnailImageDataKey];
    [(BRCKShareSubitem *)v17 setObject:v21 forKeyedSubscript:CKShareThumbnailImageDataKey];
  }

  return v17;
}

@end