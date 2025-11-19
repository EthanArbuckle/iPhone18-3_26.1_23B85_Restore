@interface ACAccountStore
@end

@implementation ACAccountStore

id __58__ACAccountStore_SyncPrivate___mailAccountTypeIdentifiers__block_invoke()
{
  v0 = *MEMORY[0x277CB8CD8];
  result = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8C60], *MEMORY[0x277CB8CD8], *MEMORY[0x277CB8C40], *MEMORY[0x277CB8D38], *MEMORY[0x277CB8CF8], *MEMORY[0x277CB8BA0], 0}];
  _mailAccountTypeIdentifiers_mailAccountTypes = result;
  return result;
}

@end