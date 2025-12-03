@interface NSSet(ITK)
- (BOOL)itk_containsObjectPassingTest:()ITK;
- (id)itk_compactMap:()ITK;
- (id)itk_map:()ITK;
- (id)itk_objectPassingTest:()ITK;
- (id)itk_objectsConformingToProtocol:()ITK;
- (id)itk_objectsOfClass:()ITK;
@end

@implementation NSSet(ITK)

- (id)itk_objectPassingTest:()ITK
{
  v1 = [self objectsPassingTest:?];
  anyObject = [v1 anyObject];

  return anyObject;
}

- (BOOL)itk_containsObjectPassingTest:()ITK
{
  v1 = [self itk_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)itk_objectsConformingToProtocol:()ITK
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NSSet_ITK__itk_objectsConformingToProtocol___block_invoke;
  v8[3] = &unk_2797AF0B8;
  v9 = v4;
  v5 = v4;
  v6 = [self objectsPassingTest:v8];

  return v6;
}

- (id)itk_objectsOfClass:()ITK
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__NSSet_ITK__itk_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v5[4] = a3;
  v3 = [self objectsPassingTest:v5];

  return v3;
}

- (id)itk_compactMap:()ITK
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __29__NSSet_ITK__itk_compactMap___block_invoke;
  v13 = &unk_2797AF100;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)itk_map:()ITK
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __22__NSSet_ITK__itk_map___block_invoke;
  v13 = &unk_2797AF100;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end