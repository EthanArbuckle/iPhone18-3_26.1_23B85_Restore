@interface CDPDBackupFMIPResultsParser
- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error;
@end

@implementation CDPDBackupFMIPResultsParser

- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  recoveredInfo = [result recoveredInfo];
  v5 = [recoveredInfo objectForKeyedSubscript:*MEMORY[0x277CFB2F8]];

  if (v5)
  {
    v9 = *MEMORY[0x277CFD3D8];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end