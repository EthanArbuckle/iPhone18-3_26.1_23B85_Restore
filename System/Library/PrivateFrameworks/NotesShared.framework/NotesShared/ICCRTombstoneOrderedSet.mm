@interface ICCRTombstoneOrderedSet
- (BOOL)containsObjectEqualTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (ICCRDocument)document;
- (ICCRTombstoneOrderedSet)init;
- (ICCRTombstoneOrderedSet)initWithDocument:(id)document;
- (ICCRTombstoneOrderedSet)initWithICCRCoder:(id)coder;
- (ICCRTombstoneOrderedSet)initWithICCRCoder:(id)coder orderedSet:(const void *)set;
- (ICCRTombstoneOrderedSet)initWithOrdering:(id)ordering elements:(id)elements document:(id)document;
- (ICCRUndoDelegate)delegate;
- (NSMapTable)cachedIndexMapping;
- (NSMutableOrderedSet)cachedIdentifierSet;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)mapping;
- (id)identifierForObjectInCachedSet:(id)set;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectForIdentifier:(id)identifier;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfEqualObject:(id)object;
- (void)_removeObjectsFromOrderingAtIndices:(id)indices;
- (void)addObject:(id)object;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)encodeWithICCRCoder:(id)coder;
- (void)encodeWithICCRCoder:(id)coder orderedSet:(void *)set;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)moveClock;
- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex mutableSafe:(BOOL)safe;
- (void)realizeLocalChangesIn:(id)in;
- (void)regenerateNSOrderedIdentifierSetAndIndexMapping;
- (void)reinsertIdentifier:(id)identifier withMaskedIdentifiers:(id)identifiers atIndex:(unint64_t)index forObjectToMove:(id)move;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)setDocument:(id)document;
- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)index by:(int64_t)by;
- (void)undoablyInsertObjectIdentifiersIntoElements:(id)elements;
- (void)undoablyRemoveObjectIdentifiersFromElements:(id)elements;
- (void)walkGraph:(id)graph;
- (void)wipeoutCaches;
@end

@implementation ICCRTombstoneOrderedSet

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 16)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 16;
    operator new();
  }

  [(ICCRTombstoneOrderedSet *)self encodeWithICCRCoder:coderCopy orderedSet:*(currentDocumentObjectForEncoding + 40)];
}

- (void)encodeWithICCRCoder:(id)coder orderedSet:(void *)set
{
  coderCopy = coder;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  *(set + 8) |= 1u;
  v7 = *(set + 5);
  if (!v7)
  {
    operator new();
  }

  [ordering encodeWithICCRCoder:coderCopy array:v7];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  *(set + 8) |= 2u;
  v9 = *(set + 6);
  if (!v9)
  {
    operator new();
  }

  [elements encodeWithICCRCoder:coderCopy set:v9];
}

- (ICCRTombstoneOrderedSet)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 16)
  {
    v6 = [(ICCRTombstoneOrderedSet *)self initWithICCRCoder:coderCopy orderedSet:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(ICCRTombstoneOrderedSet *)self initWithDocument:document];
  }

  return v6;
}

- (ICCRTombstoneOrderedSet)initWithICCRCoder:(id)coder orderedSet:(const void *)set
{
  coderCopy = coder;
  v7 = [ICCRArray alloc];
  v8 = v7;
  v9 = *(set + 5);
  if (!v9)
  {
    v9 = *(CRDT::OrderedSet::default_instance(v7) + 40);
  }

  v10 = [(ICCRArray *)v8 initWithICCRCoder:coderCopy array:v9];
  v11 = [ICCRSet alloc];
  v12 = v11;
  v13 = *(set + 6);
  if (!v13)
  {
    v13 = *(CRDT::OrderedSet::default_instance(v11) + 48);
  }

  v14 = [(ICCRSet *)v12 initWithICCRCoder:coderCopy set:v13];
  document = [coderCopy document];
  v16 = [(ICCRTombstoneOrderedSet *)self initWithOrdering:v10 elements:v14 document:document];

  return v16;
}

- (unint64_t)count
{
  cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
  v3 = [cachedIdentifierSet count];

  return v3;
}

- (ICCRTombstoneOrderedSet)init
{
  [(ICCRTombstoneOrderedSet *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICCRTombstoneOrderedSet)initWithDocument:(id)document
{
  documentCopy = document;
  v5 = [[ICCRArray alloc] initWithDocument:documentCopy];
  v6 = [[ICCRSet alloc] initWithDocument:documentCopy];
  v7 = [(ICCRTombstoneOrderedSet *)self initWithOrdering:v5 elements:v6 document:documentCopy];

  return v7;
}

- (ICCRTombstoneOrderedSet)initWithOrdering:(id)ordering elements:(id)elements document:(id)document
{
  orderingCopy = ordering;
  elementsCopy = elements;
  documentCopy = document;
  v13.receiver = self;
  v13.super_class = ICCRTombstoneOrderedSet;
  v11 = [(ICCRTombstoneOrderedSet *)&v13 init];
  if (v11)
  {
    [orderingCopy setDelegate:v11];
    [(ICCRTombstoneOrderedSet *)v11 setOrdering:orderingCopy];
    [(ICCRTombstoneOrderedSet *)v11 setElements:elementsCopy];
    [(ICCRTombstoneOrderedSet *)v11 setDocument:documentCopy];
  }

  return v11;
}

- (NSMutableOrderedSet)cachedIdentifierSet
{
  cachedIdentifierSet = self->_cachedIdentifierSet;
  if (!cachedIdentifierSet)
  {
    [(ICCRTombstoneOrderedSet *)self regenerateNSOrderedIdentifierSetAndIndexMapping];
    cachedIdentifierSet = self->_cachedIdentifierSet;
  }

  return cachedIdentifierSet;
}

- (NSMapTable)cachedIndexMapping
{
  cachedIndexMapping = self->_cachedIndexMapping;
  if (!cachedIndexMapping)
  {
    [(ICCRTombstoneOrderedSet *)self regenerateNSOrderedIdentifierSetAndIndexMapping];
    cachedIndexMapping = self->_cachedIndexMapping;
  }

  return cachedIndexMapping;
}

- (void)regenerateNSOrderedIdentifierSetAndIndexMapping
{
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  cachedIndexMapping = self->_cachedIndexMapping;
  self->_cachedIndexMapping = strongToStrongObjectsMapTable;

  v5 = [(ICCRTombstoneOrderedSet *)self generateNSOrderedIdentifierSetWithIndexMapping:self->_cachedIndexMapping];
  cachedIdentifierSet = self->_cachedIdentifierSet;
  self->_cachedIdentifierSet = v5;
}

- (id)generateNSOrderedIdentifierSetWithIndexMapping:(id)mapping
{
  mappingCopy = mapping;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  elements = [(ICCRTombstoneOrderedSet *)self elements];
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  contents = [ordering contents];

  ordering2 = [(ICCRTombstoneOrderedSet *)self ordering];
  array = [ordering2 array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__ICCRTombstoneOrderedSet_generateNSOrderedIdentifierSetWithIndexMapping___block_invoke;
  v18[3] = &unk_27819A210;
  v19 = elements;
  v20 = contents;
  v21 = mappingCopy;
  v11 = orderedSet;
  v22 = v11;
  v12 = mappingCopy;
  v13 = contents;
  v14 = elements;
  [array enumerateObjectsUsingBlock:v18];

  v15 = v22;
  v16 = v11;

  return v11;
}

void __74__ICCRTombstoneOrderedSet_generateNSOrderedIdentifierSetWithIndexMapping___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ([a1[4] containsObject:?])
  {
    v5 = [a1[5] objectForKeyedSubscript:v8];
    v6 = [a1[6] objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      [v6 addIndex:a3];
    }

    else
    {
      [a1[7] addObject:v8];
      v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
      [a1[6] setObject:v7 forKey:v5];
    }
  }
}

- (void)wipeoutCaches
{
  cachedIndexMapping = self->_cachedIndexMapping;
  self->_cachedIndexMapping = 0;

  cachedIdentifierSet = self->_cachedIdentifierSet;
  self->_cachedIdentifierSet = 0;
}

- (id)objectAtIndex:(unint64_t)index
{
  cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
  v6 = [cachedIdentifierSet objectAtIndex:index];

  v7 = [(ICCRTombstoneOrderedSet *)self objectForIdentifier:v6];

  return v7;
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  contents = [ordering contents];
  v7 = [contents objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (unint64_t)indexOfEqualObject:(id)object
{
  objectCopy = object;
  cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:objectCopy];

  if (v6 && [v6 count])
  {
    firstIndex = [v6 firstIndex];
    ordering = [(ICCRTombstoneOrderedSet *)self ordering];
    array = [ordering array];
    v10 = [array objectAtIndexedSubscript:firstIndex];

    cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
    v12 = [cachedIdentifierSet indexOfObject:v10];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)identifierForObjectInCachedSet:(id)set
{
  setCopy = set;
  cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:setCopy];

  if (v6)
  {
    ordering = [(ICCRTombstoneOrderedSet *)self ordering];
    array = [ordering array];
    v9 = [array objectAtIndexedSubscript:{objc_msgSend(v6, "firstIndex")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsObjectEqualTo:(id)to
{
  toCopy = to;
  cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
  v6 = [cachedIndexMapping objectForKey:toCopy];

  LOBYTE(toCopy) = [v6 count] != 0;
  return toCopy;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  v7 = [(ICCRTombstoneOrderedSet *)self identifierForObjectInCachedSet:objectCopy];
  if (!v7)
  {
    v8 = [(ICCRTombstoneOrderedSet *)self count];
    if (v8 <= index)
    {
      if (v8 != index)
      {
        v22 = os_log_create("com.apple.coreCRDT", "ICCRTombstoneOrderedSet");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ICCRTombstoneOrderedSet insertObject:index atIndex:v22];
        }

        v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"ICCRTombstoneOrderedSet: inserting element at invalid index" userInfo:0];
        objc_exception_throw(v24);
      }

      ordering = [(ICCRTombstoneOrderedSet *)self ordering];
      v7 = [ordering _addObject:objectCopy];

      cachedIndexMapping = self->_cachedIndexMapping;
      v18 = MEMORY[0x277CCAB58];
      ordering2 = [(ICCRTombstoneOrderedSet *)self ordering];
      v11 = [v18 indexSetWithIndex:{objc_msgSend(ordering2, "count") - 1}];
      [(NSMapTable *)cachedIndexMapping setObject:v11 forKey:objectCopy];
    }

    else
    {
      ordering2 = [(ICCRTombstoneOrderedSet *)self objectAtIndexedSubscript:index];
      cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
      v11 = [cachedIndexMapping objectForKey:ordering2];

      firstIndex = [v11 firstIndex];
      ordering3 = [(ICCRTombstoneOrderedSet *)self ordering];
      v7 = [ordering3 _insertObject:objectCopy atIndex:firstIndex];

      [(ICCRTombstoneOrderedSet *)self shiftCachedIndicesStartingAtIndex:firstIndex by:1];
      v14 = self->_cachedIndexMapping;
      v15 = [MEMORY[0x277CCAB58] indexSetWithIndex:firstIndex];
      [(NSMapTable *)v14 setObject:v15 forKey:objectCopy];
    }

    elements = [(ICCRTombstoneOrderedSet *)self elements];
    [elements addObject:v7];

    cachedIdentifierSet = self->_cachedIdentifierSet;
    if (cachedIdentifierSet)
    {
      [(NSMutableOrderedSet *)cachedIdentifierSet insertObject:v7 atIndex:index];
    }

    if ([(ICCRTombstoneOrderedSet *)self wantsUndoCommands])
    {
      delegate = [(ICCRTombstoneOrderedSet *)self delegate];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __48__ICCRTombstoneOrderedSet_insertObject_atIndex___block_invoke;
      v25[3] = &unk_27819A238;
      v7 = v7;
      v26 = v7;
      [delegate addUndoCommandsForObject:self block:v25];
    }
  }
}

void __48__ICCRTombstoneOrderedSet_insertObject_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 undoablyRemoveObjectIdentifiersFromElements:{v4, v5, v6}];
}

- (void)undoablyRemoveObjectIdentifiersFromElements:(id)elements
{
  v19 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  elements = [(ICCRTombstoneOrderedSet *)self elements];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = elementsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [elements removeObject:*(*(&v14 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ICCRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(ICCRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(ICCRTombstoneOrderedSet *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__ICCRTombstoneOrderedSet_undoablyRemoveObjectIdentifiersFromElements___block_invoke;
    v12[3] = &unk_27819A238;
    v13 = v6;
    [delegate addUndoCommandsForObject:self block:v12];
  }
}

- (void)undoablyInsertObjectIdentifiersIntoElements:(id)elements
{
  v19 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  elements = [(ICCRTombstoneOrderedSet *)self elements];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = elementsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [elements addObject:*(*(&v14 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ICCRTombstoneOrderedSet *)self wipeoutCaches];
  if ([(ICCRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(ICCRTombstoneOrderedSet *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__ICCRTombstoneOrderedSet_undoablyInsertObjectIdentifiersIntoElements___block_invoke;
    v12[3] = &unk_27819A238;
    v13 = v6;
    [delegate addUndoCommandsForObject:self block:v12];
  }
}

- (void)shiftCachedIndicesStartingAtIndex:(unint64_t)index by:(int64_t)by
{
  cachedIndexMapping = self->_cachedIndexMapping;
  if (cachedIndexMapping)
  {
    objectEnumerator = [(NSMapTable *)cachedIndexMapping objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v8 = nextObject;
      do
      {
        [v8 shiftIndexesStartingAtIndex:index by:by];
        nextObject2 = [objectEnumerator nextObject];

        v8 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(ICCRTombstoneOrderedSet *)self insertObject:objectCopy atIndex:[(ICCRTombstoneOrderedSet *)self count]];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [(ICCRTombstoneOrderedSet *)self objectAtIndexedSubscript:?];
  cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
  v7 = [cachedIndexMapping objectForKey:v5];

  cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
  v9 = [cachedIdentifierSet objectAtIndexedSubscript:index];

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count") + 1}];
  [v10 addObject:v9];
  elements = [(ICCRTombstoneOrderedSet *)self elements];
  [elements removeObject:v9];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__ICCRTombstoneOrderedSet_removeObjectAtIndex___block_invoke;
  v17[3] = &unk_278197968;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  [v7 enumerateIndexesUsingBlock:v17];
  [(NSMapTable *)self->_cachedIndexMapping removeObjectForKey:v5];
  [(ICCRTombstoneOrderedSet *)self _removeObjectsFromOrderingAtIndices:v7];
  cachedIdentifierSet = self->_cachedIdentifierSet;
  if (cachedIdentifierSet)
  {
    [(NSMutableOrderedSet *)cachedIdentifierSet removeObjectAtIndex:index];
  }

  if ([(ICCRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(ICCRTombstoneOrderedSet *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__ICCRTombstoneOrderedSet_removeObjectAtIndex___block_invoke_2;
    v15[3] = &unk_27819A238;
    v16 = v12;
    [delegate addUndoCommandsForObject:self block:v15];
  }
}

void __47__ICCRTombstoneOrderedSet_removeObjectAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) ordering];
  v5 = [v4 array];
  v7 = [v5 objectAtIndexedSubscript:a2];

  v6 = [*(a1 + 32) elements];
  [v6 removeObject:v7];

  [*(a1 + 40) addObject:v7];
}

- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex mutableSafe:(BOOL)safe
{
  safeCopy = safe;
  if ([(ICCRTombstoneOrderedSet *)self count]< toIndex)
  {
    v31 = os_log_create("com.apple.coreCRDT", "ICCRTombstoneOrderedSet");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ICCRTombstoneOrderedSet moveObjectFromIndex:toIndex toIndex:v31 mutableSafe:?];
    }

    v32 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"ICCRTombstoneOrderedSet: moving element to an invalid index" userInfo:0];
    objc_exception_throw(v32);
  }

  if (index != toIndex || !safeCopy)
  {
    v34 = [(ICCRTombstoneOrderedSet *)self objectAtIndexedSubscript:toIndex];
    v9 = [(ICCRTombstoneOrderedSet *)self objectAtIndexedSubscript:index];
    cachedIndexMapping = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
    v11 = [cachedIndexMapping objectForKey:v9];

    cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
    v13 = [cachedIdentifierSet objectAtIndexedSubscript:index];

    v14 = [MEMORY[0x277CBEB58] set];
    ordering = [(ICCRTombstoneOrderedSet *)self ordering];
    array = [ordering array];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __67__ICCRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke;
    v37[3] = &unk_278197968;
    v17 = v14;
    v38 = v17;
    v33 = array;
    v39 = v33;
    [v11 enumerateIndexesUsingBlock:v37];
    [v17 removeObject:v13];
    [(NSMapTable *)self->_cachedIndexMapping removeObjectForKey:v9];
    if (index == toIndex)
    {
      firstIndex = [v11 firstIndex];
      [v11 removeIndex:firstIndex];
      cachedIndexMapping = self->_cachedIndexMapping;
      v20 = [MEMORY[0x277CCAB58] indexSetWithIndex:firstIndex];
      [(NSMapTable *)cachedIndexMapping setObject:v20 forKey:v9];
    }

    [(ICCRTombstoneOrderedSet *)self _removeObjectsFromOrderingAtIndices:v11];
    if (!safeCopy)
    {
      ordering2 = [(ICCRTombstoneOrderedSet *)self ordering];
      contents = [ordering2 contents];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__ICCRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke_2;
      v35[3] = &unk_27819A260;
      v36 = contents;
      v23 = contents;
      [v17 enumerateObjectsUsingBlock:v35];
      [v23 removeObjectForKey:v13];
      [v23 setObject:v9 forKey:v13];
    }

    if (index != toIndex)
    {
      cachedIndexMapping2 = [(ICCRTombstoneOrderedSet *)self cachedIndexMapping];
      v25 = [cachedIndexMapping2 objectForKey:v34];

      firstIndex2 = [v25 firstIndex];
      if (index > toIndex)
      {
        v27 = firstIndex2;
      }

      else
      {
        v27 = firstIndex2 + 1;
      }

      if (safeCopy)
      {
        v28 = v17;
      }

      else
      {
        v28 = 0;
      }

      [(ICCRTombstoneOrderedSet *)self reinsertIdentifier:v13 withMaskedIdentifiers:v28 atIndex:v27 forObjectToMove:v9];
    }

    cachedIdentifierSet = self->_cachedIdentifierSet;
    if (cachedIdentifierSet)
    {
      v30 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
      [(NSMutableOrderedSet *)cachedIdentifierSet moveObjectsAtIndexes:v30 toIndex:toIndex];
    }
  }
}

void __67__ICCRTombstoneOrderedSet_moveObjectFromIndex_toIndex_mutableSafe___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (void)_removeObjectsFromOrderingAtIndices:(id)indices
{
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    ordering = [(ICCRTombstoneOrderedSet *)self ordering];
    array = [ordering array];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__ICCRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke;
    v15[3] = &unk_27819A288;
    v7 = array;
    v16 = v7;
    [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v15];
    objectEnumerator = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v11 = MEMORY[0x277D85DD0];
      do
      {
        v13[0] = v11;
        v13[1] = 3221225472;
        v13[2] = __63__ICCRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke_2;
        v13[3] = &unk_27819A288;
        v14 = nextObject2;
        v12 = nextObject2;
        [indicesCopy enumerateIndexesWithOptions:2 usingBlock:v13];

        nextObject2 = [objectEnumerator nextObject];
      }

      while (nextObject2);
    }
  }
}

unint64_t __63__ICCRTombstoneOrderedSet__removeObjectsFromOrderingAtIndices___block_invoke_2(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 32) lastIndex];
  if (result >= a2)
  {
    v5 = *(a1 + 32);

    return [v5 shiftIndexesStartingAtIndex:a2 + 1 by:-1];
  }

  return result;
}

- (void)reinsertIdentifier:(id)identifier withMaskedIdentifiers:(id)identifiers atIndex:(unint64_t)index forObjectToMove:(id)move
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  moveCopy = move;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  array = [ordering array];

  v21 = identifierCopy;
  [array insertObject:identifierCopy atIndex:index];
  v15 = [MEMORY[0x277CCAB58] indexSetWithIndex:index];
  if (identifiersCopy)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92__ICCRTombstoneOrderedSet_reinsertIdentifier_withMaskedIdentifiers_atIndex_forObjectToMove___block_invoke;
    v22[3] = &unk_27819A2B0;
    v23 = array;
    indexCopy = index;
    v24 = v15;
    [identifiersCopy enumerateObjectsUsingBlock:v22];

    [(ICCRTombstoneOrderedSet *)self moveClock];
    v16 = [identifiersCopy count] + 1;
  }

  else
  {
    [(ICCRTombstoneOrderedSet *)self moveClock];
    v16 = 1;
  }

  objectEnumerator = [(NSMapTable *)self->_cachedIndexMapping objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v19 = nextObject;
    do
    {
      if ([v19 lastIndex] >= index)
      {
        [v19 shiftIndexesStartingAtIndex:index by:v16];
      }

      nextObject2 = [objectEnumerator nextObject];

      v19 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMapTable *)self->_cachedIndexMapping setObject:v15 forKey:moveCopy];
}

uint64_t __92__ICCRTombstoneOrderedSet_reinsertIdentifier_withMaskedIdentifiers_atIndex_forObjectToMove___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) insertObject:a2 atIndex:*(a1 + 48) + 1];
  v3 = *(a1 + 40);
  v4 = [v3 lastIndex] + 1;

  return [v3 addIndex:v4];
}

- (void)moveClock
{
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  [ordering setMoveClock:1];

  if ([(ICCRTombstoneOrderedSet *)self wantsUndoCommands])
  {
    delegate = [(ICCRTombstoneOrderedSet *)self delegate];
    [delegate addUndoCommandsForObject:self block:&__block_literal_global_68];
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  cachedIdentifierSet = [(ICCRTombstoneOrderedSet *)self cachedIdentifierSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICCRTombstoneOrderedSet_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_278197ED8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [cachedIdentifierSet enumerateObjectsUsingBlock:v7];
}

void __54__ICCRTombstoneOrderedSet_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForIdentifier:a2];
  (*(*(a1 + 40) + 16))();
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__61;
  v10 = __Block_byref_object_dispose__61;
  v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{{\n"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ICCRTombstoneOrderedSet_description__block_invoke;
  v5[3] = &unk_27819A2F8;
  v5[4] = &v6;
  [(ICCRTombstoneOrderedSet *)self enumerateObjectsUsingBlock:v5];
  [v7[5] appendString:@"}}"];
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__ICCRTombstoneOrderedSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = MEMORY[0x277CCACA8];
  v5 = [a2 description];
  v4 = [v3 stringWithFormat:@"\t%@\n", v5];
  [v2 appendString:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ordering = [(ICCRTombstoneOrderedSet *)self ordering];
    ordering2 = [v5 ordering];
    if ([ordering isEqual:ordering2])
    {
      elements = [(ICCRTombstoneOrderedSet *)self elements];
      elements2 = [v5 elements];
      v10 = [elements isEqual:elements2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  v4 = [ordering hash];
  elements = [(ICCRTombstoneOrderedSet *)self elements];
  v6 = [elements hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = os_log_create("com.apple.coreCRDT", "ICCRTombstoneOrderedSet");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICCRTombstoneOrderedSet *)withCopy mergeWith:v9];
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"ICCRTombstoneOrderedSet cannot merge with object of type %@.", v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15 = withCopy;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  ordering2 = [v15 ordering];
  [ordering mergeWith:ordering2];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  elements2 = [v15 elements];

  [elements mergeWith:elements2];
  [(ICCRTombstoneOrderedSet *)self wipeoutCaches];
}

- (id)deltaSince:(id)since in:(id)in
{
  inCopy = in;
  sinceCopy = since;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  v9 = [ordering deltaSince:sinceCopy in:inCopy];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  v11 = [elements deltaSince:sinceCopy in:inCopy];

  v12 = [[ICCRTombstoneOrderedSet alloc] initWithOrdering:v9 elements:v11 document:inCopy];

  return v12;
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  [ordering realizeLocalChangesIn:inCopy];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  [elements realizeLocalChangesIn:inCopy];
}

- (id)tombstone
{
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  tombstone = [ordering tombstone];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  tombstone2 = [elements tombstone];

  v7 = [ICCRTombstoneOrderedSet alloc];
  document = [(ICCRTombstoneOrderedSet *)self document];
  v9 = [(ICCRTombstoneOrderedSet *)v7 initWithOrdering:tombstone elements:tombstone2 document:document];

  return v9;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  [ordering walkGraph:graphCopy];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  [elements walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  ordering = [(ICCRTombstoneOrderedSet *)self ordering];
  [ordering setDocument:documentCopy];

  elements = [(ICCRTombstoneOrderedSet *)self elements];
  [elements setDocument:documentCopy];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  delegate = [(ICCRTombstoneOrderedSet *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ICCRTombstoneOrderedSet_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_27819A320;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate addUndoCommandsForObject:self block:v8];
}

void __58__ICCRTombstoneOrderedSet_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 ordering];
  (*(v2 + 16))(v2, v3);

  [v4 wipeoutCaches];
}

- (BOOL)wantsUndoCommands
{
  delegate = [(ICCRTombstoneOrderedSet *)self delegate];
  wantsUndoCommands = [delegate wantsUndoCommands];

  return wantsUndoCommands;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (ICCRUndoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)insertObject:(uint64_t)a1 atIndex:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Inserting element at invalid index %lu", &v2, 0xCu);
}

- (void)moveObjectFromIndex:(uint64_t)a1 toIndex:(NSObject *)a2 mutableSafe:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Moving element at invalid index %lu", &v2, 0xCu);
}

- (void)mergeWith:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "ICCRTombstoneOrderedSet cannot merge with object of type %@.", &v5, 0xCu);
}

@end