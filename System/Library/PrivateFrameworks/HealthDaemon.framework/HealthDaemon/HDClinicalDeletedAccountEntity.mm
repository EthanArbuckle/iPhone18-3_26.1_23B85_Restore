@interface HDClinicalDeletedAccountEntity
+ (id)uniquedColumns;
@end

@implementation HDClinicalDeletedAccountEntity

+ (id)uniquedColumns
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"sync_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end