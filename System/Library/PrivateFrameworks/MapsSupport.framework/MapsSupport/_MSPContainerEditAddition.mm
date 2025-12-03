@interface _MSPContainerEditAddition
- (NSString)description;
- (_MSPContainerEditAddition)initWithObjects:(id)objects indexes:(id)indexes identifiersAtop:(id)atop;
- (id)identifierForObjectAtopAddedImmutableObject:(id)object;
- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEditAddition

- (_MSPContainerEditAddition)initWithObjects:(id)objects indexes:(id)indexes identifiersAtop:(id)atop
{
  v38 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  indexesCopy = indexes;
  atopCopy = atop;
  v36.receiver = self;
  v36.super_class = _MSPContainerEditAddition;
  v31 = [(_MSPContainerEditAddition *)&v36 init];
  if (v31)
  {
    v11 = [objectsCopy copy];
    objects = v31->_objects;
    v31->_objects = v11;

    v13 = [indexesCopy copy];
    indexesOfAddedObjects = v31->_indexesOfAddedObjects;
    v31->_indexesOfAddedObjects = v13;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifiersAtopByIdentifier = v31->_identifiersAtopByIdentifier;
    v31->_identifiersAtopByIdentifier = strongToStrongObjectsMapTable;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = objectsCopy;
    obj = objectsCopy;
    v17 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          v23 = [atopCopy objectAtIndexedSubscript:v19];
          null = [MEMORY[0x277CBEB68] null];

          if (v23 != null)
          {
            v25 = v31->_identifiersAtopByIdentifier;
            storageIdentifier = [v22 storageIdentifier];
            [(NSMapTable *)v25 setObject:v23 forKey:storageIdentifier];
          }

          ++v19;
        }

        v18 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v18);
    }

    objectsCopy = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v31;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _MSPContainerEditAddition;
  v4 = [(_MSPContainerEditAddition *)&v9 description];
  addedImmutableObjects = [(_MSPContainerEditAddition *)self addedImmutableObjects];
  indexesOfAddedObjects = [(_MSPContainerEditAddition *)self indexesOfAddedObjects];
  v7 = [v3 stringWithFormat:@"%@ { adds objects = %@ at indexes = %@ }", v4, addedImmutableObjects, indexesOfAddedObjects];

  return v7;
}

- (void)useImmutableObjectsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  objects = [(_MSPContainerEditAddition *)self objects];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __95___MSPContainerEditAddition_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke;
  v28 = &unk_279868670;
  v24 = mapCopy;
  v29 = v24;
  v23 = blockCopy;
  v30 = v23;
  v9 = objects;
  v10 = &v25;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = (v27)(v10, *(*(&v31 + 1) + 8 * v17), v15);
        if (v18)
        {
          [v11 addObject:{v18, v23, v24, v25, v26}];
        }

        ++v15;

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v19 = [v11 copy];
  v20 = [v19 copy];
  addedImmutableObjects = self->_addedImmutableObjects;
  self->_addedImmutableObjects = v20;

  v22 = *MEMORY[0x277D85DE8];
}

- (id)identifierForObjectAtopAddedImmutableObject:(id)object
{
  identifiersAtopByIdentifier = self->_identifiersAtopByIdentifier;
  storageIdentifier = [object storageIdentifier];
  v5 = [(NSMapTable *)identifiersAtopByIdentifier objectForKey:storageIdentifier];

  return v5;
}

@end