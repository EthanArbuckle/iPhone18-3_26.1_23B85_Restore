@interface ICNAAccountReportToDevice
@end

@implementation ICNAAccountReportToDevice

void __48___ICNAAccountReportToDevice_accountTypeSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 countOfNotesByType];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = [ICASAccountTypeItemData alloc];
  v12 = [ICASAccountType alloc];
  v13 = [v7 integerValue];

  v14 = [(ICASAccountType *)v12 initWithAccountType:v13];
  v15 = MEMORY[0x277CCABB0];
  v16 = [v6 integerValue];

  v17 = [v15 numberWithInteger:ICNARoundTo2SigFigsInt(v16)];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v10)];
  v19 = [(ICASAccountTypeItemData *)v11 initWithAccountType:v14 countOfAccounts:v17 countOfNotes:v18];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v19];
}

@end