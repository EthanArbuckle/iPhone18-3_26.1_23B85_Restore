@interface HDPendingAssociationEntity
+ (id)indices;
+ (id)uniquedColumns;
@end

@implementation HDPendingAssociationEntity

+ (id)uniquedColumns
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"parent_uuid";
  v5[1] = @"child_uuid";
  v5[2] = @"destination_sub_uuid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9 = @"child_uuid";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v5 = [v2 initWithEntity:v3 name:@"child" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end