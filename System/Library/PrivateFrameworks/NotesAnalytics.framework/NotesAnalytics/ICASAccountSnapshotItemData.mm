@interface ICASAccountSnapshotItemData
- (ICASAccountSnapshotItemData)initWithAccountID:(id)d accountType:(id)type accountPurpose:(id)purpose;
- (id)toDict;
@end

@implementation ICASAccountSnapshotItemData

- (ICASAccountSnapshotItemData)initWithAccountID:(id)d accountType:(id)type accountPurpose:(id)purpose
{
  dCopy = d;
  typeCopy = type;
  purposeCopy = purpose;
  v15.receiver = self;
  v15.super_class = ICASAccountSnapshotItemData;
  v12 = [(ICASAccountSnapshotItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v13->_accountType, type);
    objc_storeStrong(&v13->_accountPurpose, purpose);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"accountID";
  accountID = [(ICASAccountSnapshotItemData *)self accountID];
  if (accountID)
  {
    accountID2 = [(ICASAccountSnapshotItemData *)self accountID];
  }

  else
  {
    accountID2 = objc_opt_new();
  }

  v5 = accountID2;
  v16[0] = accountID2;
  v15[1] = @"accountType";
  accountType = [(ICASAccountSnapshotItemData *)self accountType];
  if (accountType)
  {
    accountType2 = [(ICASAccountSnapshotItemData *)self accountType];
  }

  else
  {
    accountType2 = objc_opt_new();
  }

  v8 = accountType2;
  v16[1] = accountType2;
  v15[2] = @"accountPurpose";
  accountPurpose = [(ICASAccountSnapshotItemData *)self accountPurpose];
  if (accountPurpose)
  {
    accountPurpose2 = [(ICASAccountSnapshotItemData *)self accountPurpose];
  }

  else
  {
    accountPurpose2 = objc_opt_new();
  }

  v11 = accountPurpose2;
  v16[2] = accountPurpose2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end