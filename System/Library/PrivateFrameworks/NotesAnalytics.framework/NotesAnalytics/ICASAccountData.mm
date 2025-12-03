@interface ICASAccountData
- (ICASAccountData)initWithAccountType:(id)type accountID:(id)d;
- (id)toDict;
@end

@implementation ICASAccountData

- (ICASAccountData)initWithAccountType:(id)type accountID:(id)d
{
  typeCopy = type;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ICASAccountData;
  v9 = [(ICASAccountData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountType, type);
    objc_storeStrong(&v10->_accountID, d);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"accountType";
  accountType = [(ICASAccountData *)self accountType];
  if (accountType)
  {
    accountType2 = [(ICASAccountData *)self accountType];
  }

  else
  {
    accountType2 = objc_opt_new();
  }

  v5 = accountType2;
  v12[1] = @"accountID";
  v13[0] = accountType2;
  accountID = [(ICASAccountData *)self accountID];
  if (accountID)
  {
    accountID2 = [(ICASAccountData *)self accountID];
  }

  else
  {
    accountID2 = objc_opt_new();
  }

  v8 = accountID2;
  v13[1] = accountID2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end