@interface NSDictionary(CPSUtilities)
- (id)cps_mutableDictionaryWithValuesForKeys:()CPSUtilities;
@end

@implementation NSDictionary(CPSUtilities)

- (id)cps_mutableDictionaryWithValuesForKeys:()CPSUtilities
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = location[0];
  v6 = MEMORY[0x277D82BE0](selfCopy);
  v7 = MEMORY[0x277D82BE0](v8);
  [v4 enumerateObjectsUsingBlock:?];
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end