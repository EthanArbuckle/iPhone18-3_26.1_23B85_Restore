@interface NSArray(MapAndFilter)
- (id)filterUsingBlock:()MapAndFilter;
- (id)mapUsingBlock:()MapAndFilter;
@end

@implementation NSArray(MapAndFilter)

- (id)mapUsingBlock:()MapAndFilter
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__NSArray_MapAndFilter__mapUsingBlock___block_invoke;
  v11[3] = &unk_278E051F0;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)filterUsingBlock:()MapAndFilter
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NSArray_MapAndFilter__filterUsingBlock___block_invoke;
  v11[3] = &unk_278E051F0;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

@end