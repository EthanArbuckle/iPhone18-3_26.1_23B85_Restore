@interface NMSSyncedMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
@end

@implementation NMSSyncedMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== type)
  {
    referenceObj = [(NMSMediaItemGroup *)self referenceObj];
    v7 = objc_alloc(MEMORY[0x277CD5DA0]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__NMSSyncedMediaItemGroup_identifiersForContainerType___block_invoke;
    v12[3] = &unk_27993DFA0;
    v13 = referenceObj;
    v8 = referenceObj;
    v9 = [v7 initWithBlock:v12];
    [array addObject:v9];
  }

  v10 = [array copy];

  return v10;
}

void __55__NMSSyncedMediaItemGroup_identifiersForContainerType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

@end