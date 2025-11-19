@interface ACAccountTypeForSyncAccountType
@end

@implementation ACAccountTypeForSyncAccountType

id ___ACAccountTypeForSyncAccountType_block_invoke()
{
  v7[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8CF8];
  v6[0] = @"SMTPAccount";
  v6[1] = @"iToolsAccount";
  v1 = *MEMORY[0x277CB8BA0];
  v7[0] = v0;
  v7[1] = v1;
  v6[2] = @"YahooAccount";
  v6[3] = @"GmailAccount";
  v2 = *MEMORY[0x277CB8C40];
  v7[2] = *MEMORY[0x277CB8D38];
  v7[3] = v2;
  v6[4] = @".Mac";
  v6[5] = @"IMAPAccount";
  v3 = *MEMORY[0x277CB8C60];
  v7[4] = v1;
  v7[5] = v3;
  v6[6] = @"POPAccount";
  v7[6] = *MEMORY[0x277CB8CD8];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:7];
  _ACAccountTypeForSyncAccountType_accountTypeForAccountClass = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end