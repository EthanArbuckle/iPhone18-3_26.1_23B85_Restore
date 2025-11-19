@interface MUStatistics
+ (void)logFileTypeOpened:(id)a3 byProcess:(id)a4;
+ (void)logFileTypeSaved:(id)a3 byProcess:(id)a4;
@end

@implementation MUStatistics

+ (void)logFileTypeOpened:(id)a3 byProcess:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = v7;

  if ([(__CFString *)v5 length])
  {
    v9 = v5;
  }

  else
  {
    v9 = @"unknown";
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.markup.%@", @"open"];
  v14 = v10;
  v15 = v8;
  v12 = v8;
  v13 = v10;
  AnalyticsSendEventLazy();
}

id __44__MUStatistics_logFileTypeOpened_byProcess___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"host";
  v4[1] = @"contentType";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (void)logFileTypeSaved:(id)a3 byProcess:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([(__CFString *)v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = v7;

  if ([(__CFString *)v5 length])
  {
    v9 = v5;
  }

  else
  {
    v9 = @"unknown";
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.markup.%@", @"save"];
  v14 = v10;
  v15 = v8;
  v12 = v8;
  v13 = v10;
  AnalyticsSendEventLazy();
}

id __43__MUStatistics_logFileTypeSaved_byProcess___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"host";
  v4[1] = @"contentType";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end