@interface BRCKShareSubitem
- (BRCKShareSubitem)initWithShare:(id)a3;
@end

@implementation BRCKShareSubitem

- (BRCKShareSubitem)initWithShare:(id)a3
{
  v5 = a3;
  [v5 participants];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 role] == 1)
        {
          v11 = [v10 userIdentity];
          v12 = [v11 userRecordID];
          v7 = [v12 recordName];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [CKRecordZoneID alloc];
  if (v7)
  {
    v14 = v7;
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

    objc_storeStrong(&v18->_originalShare, a3);
    v18->_publicPermission = [v5 publicPermission];
    v20 = [v5 objectForKeyedSubscript:CKShareTitleKey];
    [(BRCKShareSubitem *)v18 setObject:v20 forKeyedSubscript:CKShareTitleKey];

    v21 = [v5 objectForKeyedSubscript:CKShareTypeKey];
    [(BRCKShareSubitem *)v18 setObject:v21 forKeyedSubscript:CKShareTypeKey];

    v22 = [v5 objectForKeyedSubscript:CKShareThumbnailImageDataKey];
    [(BRCKShareSubitem *)v18 setObject:v22 forKeyedSubscript:CKShareThumbnailImageDataKey];
  }

  return v18;
}

@end