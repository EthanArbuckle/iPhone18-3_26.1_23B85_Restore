@interface _COClusterRealmActivityGroup
+ (id)realmForCurrent;
@end

@implementation _COClusterRealmActivityGroup

+ (id)realmForCurrent
{
  v22[2] = *MEMORY[0x277D85DE8];
  predicateForCurrentDevice = [MEMORY[0x277D274A0] predicateForCurrentDevice];
  v3 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v4 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  predicateForCurrentDevice2 = [MEMORY[0x277D27490] predicateForCurrentDevice];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"($CURRENT_MEDIA_SYSTEM == nil)"];
  predicateForCurrentDevice3 = [MEMORY[0x277D27448] predicateForCurrentDevice];
  v6 = MEMORY[0x277CCA920];
  v22[0] = v4;
  v22[1] = predicateForCurrentDevice2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  v9 = MEMORY[0x277CCA920];
  v21[0] = v4;
  v21[1] = v18;
  v21[2] = predicateForCurrentDevice3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = MEMORY[0x277CCA920];
  v20[0] = predicateForCurrentDevice;
  v20[1] = v3;
  v20[2] = v8;
  v20[3] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v14 = [v12 orPredicateWithSubpredicates:v13];

  v15 = [[_COClusterRealmActivityGroup alloc] _initWithPredicate:v14];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end