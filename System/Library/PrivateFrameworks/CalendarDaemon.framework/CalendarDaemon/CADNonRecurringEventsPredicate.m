@interface CADNonRecurringEventsPredicate
- (CADNonRecurringEventsPredicate)initWithStartDate:(id)a3 endDate:(id)a4 calendarIDs:(id)a5;
- (id)defaultPropertiesToLoad;
- (id)relatedObjectPropertiesToLoad;
@end

@implementation CADNonRecurringEventsPredicate

- (CADNonRecurringEventsPredicate)initWithStartDate:(id)a3 endDate:(id)a4 calendarIDs:(id)a5
{
  v20[4] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CADPropertyFilter alloc] initWithProperty:5 comparison:5 dateValue:v10];

  v12 = [[CADPropertyFilter alloc] initWithProperty:6 comparison:2 dateValue:v9];
  v13 = [[CADPropertyFilter alloc] initWithProperty:10 comparison:0 integerValue:0];
  v14 = [[CADPropertyFilter alloc] initWithProperty:11 comparison:0 integerValue:0];
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v19.receiver = self;
  v19.super_class = CADNonRecurringEventsPredicate;
  v16 = [(CADPropertySearchPredicate *)&v19 initWithEntityType:2 filters:v15 calendars:v8];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)defaultPropertiesToLoad
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CADNonRecurringEventsPredicate;
  v2 = [(CADPropertySearchPredicate *)&v8 defaultPropertiesToLoad];
  v3 = *MEMORY[0x277CF7268];
  v9[0] = *MEMORY[0x277CF71F8];
  v9[1] = v3;
  v9[2] = *MEMORY[0x277CF7368];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)relatedObjectPropertiesToLoad
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_2837C73C0;
  v2 = *MEMORY[0x277CF73A8];
  v16[0] = *MEMORY[0x277CF73A0];
  v16[1] = v2;
  v16[2] = *MEMORY[0x277CF73B0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v18[0] = v3;
  v17[1] = &unk_2837C73D8;
  v4 = *MEMORY[0x277CF73F0];
  v15[0] = *MEMORY[0x277CF73C8];
  v15[1] = v4;
  v5 = *MEMORY[0x277CF7400];
  v15[2] = *MEMORY[0x277CF71E8];
  v15[3] = v5;
  v6 = *MEMORY[0x277CF73F8];
  v15[4] = *MEMORY[0x277CF7418];
  v15[5] = v6;
  v7 = *MEMORY[0x277CF7410];
  v15[6] = *MEMORY[0x277CF7408];
  v15[7] = v7;
  v8 = *MEMORY[0x277CF71E0];
  v15[8] = *MEMORY[0x277CF71D0];
  v15[9] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];
  v18[1] = v9;
  v17[2] = &unk_2837C73F0;
  v14 = *MEMORY[0x277CF73E8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end