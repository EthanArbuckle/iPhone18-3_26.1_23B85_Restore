@interface HDDemoDataBaseSampleGeneratorObjectCollection
- (HDDemoDataBaseSampleGeneratorObjectCollection)init;
- (id)objectsFromPhoneApps;
- (void)addObjects:(id)objects fromPhoneAppWithBundleIdentifier:(id)identifier;
- (void)enumerateLooseObjectAssociations:(id)associations;
- (void)enumerateObjectAssociations:(id)associations;
@end

@implementation HDDemoDataBaseSampleGeneratorObjectCollection

- (HDDemoDataBaseSampleGeneratorObjectCollection)init
{
  v14.receiver = self;
  v14.super_class = HDDemoDataBaseSampleGeneratorObjectCollection;
  v2 = [(HDDemoDataBaseSampleGeneratorObjectCollection *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objectsFromPhone = v2->_objectsFromPhone;
    v2->_objectsFromPhone = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objectsFromWatch = v2->_objectsFromWatch;
    v2->_objectsFromWatch = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectsFromPhoneApps = v2->_objectsFromPhoneApps;
    v2->_objectsFromPhoneApps = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectUUIDToAssocatedObjectUUIDs = v2->_objectUUIDToAssocatedObjectUUIDs;
    v2->_objectUUIDToAssocatedObjectUUIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objectUUIDToLooseAssocatedObjectUUIDs = v2->_objectUUIDToLooseAssocatedObjectUUIDs;
    v2->_objectUUIDToLooseAssocatedObjectUUIDs = v11;
  }

  return v2;
}

- (void)addObjects:(id)objects fromPhoneAppWithBundleIdentifier:(id)identifier
{
  objectsCopy = objects;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_objectsFromPhoneApps objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_objectsFromPhoneApps objectForKeyedSubscript:identifierCopy];
    [v8 addObjectsFromArray:objectsCopy];
  }

  else
  {
    v8 = [objectsCopy mutableCopy];
    [(NSMutableDictionary *)self->_objectsFromPhoneApps setObject:v8 forKeyedSubscript:identifierCopy];
  }
}

- (id)objectsFromPhoneApps
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_objectsFromPhoneApps, "count")}];
  objectsFromPhoneApps = self->_objectsFromPhoneApps;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDDemoDataBaseSampleGeneratorObjectCollection_objectsFromPhoneApps__block_invoke;
  v7[3] = &unk_27862F6B0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)objectsFromPhoneApps enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __69__HDDemoDataBaseSampleGeneratorObjectCollection_objectsFromPhoneApps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)enumerateObjectAssociations:(id)associations
{
  associationsCopy = associations;
  objectUUIDToAssocatedObjectUUIDs = self->_objectUUIDToAssocatedObjectUUIDs;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HDDemoDataBaseSampleGeneratorObjectCollection_enumerateObjectAssociations___block_invoke;
  v7[3] = &unk_27862F6D8;
  v8 = associationsCopy;
  v6 = associationsCopy;
  [(NSMutableDictionary *)objectUUIDToAssocatedObjectUUIDs enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)enumerateLooseObjectAssociations:(id)associations
{
  associationsCopy = associations;
  objectUUIDToLooseAssocatedObjectUUIDs = self->_objectUUIDToLooseAssocatedObjectUUIDs;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HDDemoDataBaseSampleGeneratorObjectCollection_enumerateLooseObjectAssociations___block_invoke;
  v7[3] = &unk_27862F6D8;
  v8 = associationsCopy;
  v6 = associationsCopy;
  [(NSMutableDictionary *)objectUUIDToLooseAssocatedObjectUUIDs enumerateKeysAndObjectsUsingBlock:v7];
}

@end