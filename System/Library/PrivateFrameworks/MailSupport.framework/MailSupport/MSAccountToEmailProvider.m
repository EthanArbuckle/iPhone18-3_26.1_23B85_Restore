@interface MSAccountToEmailProvider
+ (int64_t)accountStatisticsKindToIdentifier:(id)a3;
@end

@implementation MSAccountToEmailProvider

+ (int64_t)accountStatisticsKindToIdentifier:(id)a3
{
  v3 = a3;
  if (accountStatisticsKindToIdentifier__onceToken != -1)
  {
    +[MSAccountToEmailProvider accountStatisticsKindToIdentifier:];
  }

  v4 = [accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __62__MSAccountToEmailProvider_accountStatisticsKindToIdentifier___block_invoke()
{
  v4[10] = *MEMORY[0x277D85DE8];
  v3[0] = @"aol";
  v3[1] = @"icloud";
  v4[0] = &unk_286935398;
  v4[1] = &unk_2869353B0;
  v3[2] = @"hotmail";
  v3[3] = @"exchange";
  v4[2] = &unk_2869353C8;
  v4[3] = &unk_2869353E0;
  v3[4] = @"gmail";
  v3[5] = @"netease";
  v4[4] = &unk_2869353F8;
  v4[5] = &unk_286935410;
  v3[6] = @"qq";
  v3[7] = @"yahoo";
  v4[6] = &unk_286935428;
  v4[7] = &unk_286935440;
  v3[8] = @"imap";
  v3[9] = @"pop";
  v4[8] = &unk_286935458;
  v4[9] = &unk_286935470;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping;
  accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end