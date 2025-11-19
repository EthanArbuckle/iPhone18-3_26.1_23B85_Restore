@interface ICASAccountSnapshotItemData
- (ICASAccountSnapshotItemData)initWithAccountID:(id)a3 accountType:(id)a4 accountPurpose:(id)a5;
- (id)toDict;
@end

@implementation ICASAccountSnapshotItemData

- (ICASAccountSnapshotItemData)initWithAccountID:(id)a3 accountType:(id)a4 accountPurpose:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASAccountSnapshotItemData;
  v12 = [(ICASAccountSnapshotItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountID, a3);
    objc_storeStrong(&v13->_accountType, a4);
    objc_storeStrong(&v13->_accountPurpose, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"accountID";
  v3 = [(ICASAccountSnapshotItemData *)self accountID];
  if (v3)
  {
    v4 = [(ICASAccountSnapshotItemData *)self accountID];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"accountType";
  v6 = [(ICASAccountSnapshotItemData *)self accountType];
  if (v6)
  {
    v7 = [(ICASAccountSnapshotItemData *)self accountType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"accountPurpose";
  v9 = [(ICASAccountSnapshotItemData *)self accountPurpose];
  if (v9)
  {
    v10 = [(ICASAccountSnapshotItemData *)self accountPurpose];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end