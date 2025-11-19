@interface CADRespondedEventsPredicate
+ (id)predicate;
- (id)defaultPropertiesToLoad;
- (id)predicateFormat;
@end

@implementation CADRespondedEventsPredicate

+ (id)predicate
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)defaultPropertiesToLoad
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = CADEKPersistentEventDefaultPropertiesToLoad();
  v3 = *MEMORY[0x277CF73C8];
  v9[0] = *MEMORY[0x277CF72B0];
  v9[1] = v3;
  v4 = *MEMORY[0x277CF7340];
  v9[2] = *MEMORY[0x277CF7328];
  v9[3] = v4;
  v9[4] = *MEMORY[0x277CF7320];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end