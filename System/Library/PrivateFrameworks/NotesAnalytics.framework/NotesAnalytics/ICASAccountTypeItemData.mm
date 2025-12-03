@interface ICASAccountTypeItemData
- (ICASAccountTypeItemData)initWithAccountType:(id)type countOfAccounts:(id)accounts countOfNotes:(id)notes;
- (id)toDict;
@end

@implementation ICASAccountTypeItemData

- (ICASAccountTypeItemData)initWithAccountType:(id)type countOfAccounts:(id)accounts countOfNotes:(id)notes
{
  typeCopy = type;
  accountsCopy = accounts;
  notesCopy = notes;
  v15.receiver = self;
  v15.super_class = ICASAccountTypeItemData;
  v12 = [(ICASAccountTypeItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountType, type);
    objc_storeStrong(&v13->_countOfAccounts, accounts);
    objc_storeStrong(&v13->_countOfNotes, notes);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"accountType";
  accountType = [(ICASAccountTypeItemData *)self accountType];
  if (accountType)
  {
    accountType2 = [(ICASAccountTypeItemData *)self accountType];
  }

  else
  {
    accountType2 = objc_opt_new();
  }

  v5 = accountType2;
  v16[0] = accountType2;
  v15[1] = @"countOfAccounts";
  countOfAccounts = [(ICASAccountTypeItemData *)self countOfAccounts];
  if (countOfAccounts)
  {
    countOfAccounts2 = [(ICASAccountTypeItemData *)self countOfAccounts];
  }

  else
  {
    countOfAccounts2 = objc_opt_new();
  }

  v8 = countOfAccounts2;
  v16[1] = countOfAccounts2;
  v15[2] = @"countOfNotes";
  countOfNotes = [(ICASAccountTypeItemData *)self countOfNotes];
  if (countOfNotes)
  {
    countOfNotes2 = [(ICASAccountTypeItemData *)self countOfNotes];
  }

  else
  {
    countOfNotes2 = objc_opt_new();
  }

  v11 = countOfNotes2;
  v16[2] = countOfNotes2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end