@interface HDOriginalFHIRResourceEntity
+ (id)foreignKeys;
+ (id)indices;
+ (id)uniquedColumns;
@end

@implementation HDOriginalFHIRResourceEntity

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"account_id";
  v2 = +[(HDHealthEntity *)HDClinicalAccountEntity];
  v7[1] = @"clinical_link_rowid";
  v8[0] = v2;
  v3 = +[(HDHealthEntity *)_TtC12HealthDaemon26HDClinicalHealthLinkEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"account_id";
  v5[2] = @"id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9 = @"source_url";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v5 = [v2 initWithEntity:v3 name:@"source_url" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end