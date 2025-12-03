@interface ICASUserSnapshotItemData
- (ICASUserSnapshotItemData)initWithUserID:(id)d userStorefrontID:(id)iD;
- (id)toDict;
@end

@implementation ICASUserSnapshotItemData

- (ICASUserSnapshotItemData)initWithUserID:(id)d userStorefrontID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ICASUserSnapshotItemData;
  v9 = [(ICASUserSnapshotItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userID, d);
    objc_storeStrong(&v10->_userStorefrontID, iD);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"userID";
  userID = [(ICASUserSnapshotItemData *)self userID];
  if (userID)
  {
    userID2 = [(ICASUserSnapshotItemData *)self userID];
  }

  else
  {
    userID2 = objc_opt_new();
  }

  v5 = userID2;
  v12[1] = @"userStorefrontID";
  v13[0] = userID2;
  userStorefrontID = [(ICASUserSnapshotItemData *)self userStorefrontID];
  if (userStorefrontID)
  {
    userStorefrontID2 = [(ICASUserSnapshotItemData *)self userStorefrontID];
  }

  else
  {
    userStorefrontID2 = objc_opt_new();
  }

  v8 = userStorefrontID2;
  v13[1] = userStorefrontID2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end