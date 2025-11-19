@interface CSUtils(Statistics)
+ (id)distributionDictionary:()Statistics;
@end

@implementation CSUtils(Statistics)

+ (id)distributionDictionary:()Statistics
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CBEB38];
    v34[0] = @"Max";
    v34[1] = @"Min";
    v35[0] = &unk_283666F08;
    v35[1] = &unk_283666F08;
    v34[2] = @"P95";
    v34[3] = @"Median";
    v35[2] = &unk_283666F08;
    v35[3] = &unk_283666F08;
    v34[4] = @"Avg";
    v34[5] = @"Std";
    v35[4] = &unk_283666F08;
    v35[5] = &unk_283666F08;
    v34[6] = @"Num";
    v35[6] = &unk_283666F08;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];
    v6 = [v4 dictionaryWithDictionary:v5];

    v7 = [v3 count];
    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [v6 setObject:v8 forKeyedSubscript:@"Num"];

      v9 = MEMORY[0x277CCA9C0];
      v10 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v3];
      v33 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      v12 = [v9 expressionForFunction:@"average:" arguments:v11];

      v13 = [v12 expressionValueWithObject:0 context:0];
      [v6 setObject:v13 forKeyedSubscript:@"Avg"];

      v14 = MEMORY[0x277CCA9C0];
      v15 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v3];
      v32 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v17 = [v14 expressionForFunction:@"stddev:" arguments:v16];

      v18 = [v17 expressionValueWithObject:0 context:0];
      [v6 setObject:v18 forKeyedSubscript:@"Std"];

      [v3 sortUsingComparator:&__block_literal_global];
      v19 = [v3 objectAtIndexedSubscript:v7 >> 1];
      [v19 doubleValue];
      v21 = v20;

      if ((v7 & 1) == 0)
      {
        v22 = [v3 objectAtIndexedSubscript:(v7 >> 1) - 1];
        [v22 doubleValue];
        v24 = v23;

        v21 = (v21 + v24) * 0.5;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      [v6 setObject:v25 forKeyedSubscript:@"Median"];

      v26 = [v3 objectAtIndexedSubscript:0];
      [v6 setObject:v26 forKeyedSubscript:@"Min"];

      v27 = [v3 objectAtIndexedSubscript:v7 - 1];
      [v6 setObject:v27 forKeyedSubscript:@"Max"];

      v28 = [v3 objectAtIndexedSubscript:vcvtmd_u64_f64(v7 * 0.95)];
      [v6 setObject:v28 forKeyedSubscript:@"P95"];

      v7 = v6;
    }
  }

  else
  {
    v29 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "+[CSUtils(Statistics) distributionDictionary:]";
      _os_log_impl(&dword_222E4D000, v29, OS_LOG_TYPE_DEFAULT, "%s input dictionary is nil", buf, 0xCu);
    }

    v7 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v7;
}

@end