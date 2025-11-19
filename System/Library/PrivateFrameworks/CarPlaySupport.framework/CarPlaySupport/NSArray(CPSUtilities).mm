@interface NSArray(CPSUtilities)
- (id)cps_filter:()CPSUtilities;
- (id)cps_map:()CPSUtilities;
@end

@implementation NSArray(CPSUtilities)

- (id)cps_map:()CPSUtilities
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v4 = v10;
  v7 = MEMORY[0x277D82BE0](location[0]);
  v6 = MEMORY[0x277D82BE0](v8);
  [v4 enumerateObjectsUsingBlock:?];
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)cps_filter:()CPSUtilities
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v4 = v10;
  v6[1] = MEMORY[0x277D85DD0];
  v6[2] = 3221225472;
  v6[3] = __36__NSArray_CPSUtilities__cps_filter___block_invoke;
  v6[4] = &unk_278D937C0;
  v7 = MEMORY[0x277D82BE0](location[0]);
  v8 = [v4 indexesOfObjectsPassingTest:?];
  v6[0] = [v10 objectsAtIndexes:v8];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end