@interface ICASAccountTypeItemData
- (ICASAccountTypeItemData)initWithAccountType:(id)a3 countOfAccounts:(id)a4 countOfNotes:(id)a5;
- (id)toDict;
@end

@implementation ICASAccountTypeItemData

- (ICASAccountTypeItemData)initWithAccountType:(id)a3 countOfAccounts:(id)a4 countOfNotes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASAccountTypeItemData;
  v12 = [(ICASAccountTypeItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountType, a3);
    objc_storeStrong(&v13->_countOfAccounts, a4);
    objc_storeStrong(&v13->_countOfNotes, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"accountType";
  v3 = [(ICASAccountTypeItemData *)self accountType];
  if (v3)
  {
    v4 = [(ICASAccountTypeItemData *)self accountType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"countOfAccounts";
  v6 = [(ICASAccountTypeItemData *)self countOfAccounts];
  if (v6)
  {
    v7 = [(ICASAccountTypeItemData *)self countOfAccounts];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"countOfNotes";
  v9 = [(ICASAccountTypeItemData *)self countOfNotes];
  if (v9)
  {
    v10 = [(ICASAccountTypeItemData *)self countOfNotes];
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