@interface _MSPContainerEditsRecorder
- (_MSPContainerEditsRecorder)initWithMutableArray:(id)array;
- (void)_editDetectorDidDetectUpdateForObject:(id)object;
- (void)_mutableObjectContentDidUpdate:(id)update;
- (void)insertEditableObjects:(id)objects atIndexes:(id)indexes;
- (void)insertObject:(id)object inEditableObjectsAtIndex:(unint64_t)index;
- (void)removeEditableObjectsAtIndexes:(id)indexes;
- (void)removeObjectFromEditableObjectsAtIndex:(unint64_t)index;
- (void)replaceEditableObjectsAtIndexes:(id)indexes withEditableObjects:(id)objects;
- (void)replaceObjectInEditableObjectsAtIndex:(unint64_t)index withObject:(id)object;
- (void)useImmutableObjectsForEditsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block;
@end

@implementation _MSPContainerEditsRecorder

- (_MSPContainerEditsRecorder)initWithMutableArray:(id)array
{
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = _MSPContainerEditsRecorder;
  v6 = [(_MSPContainerEditsRecorder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMutableArray, array);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedEdits = v7->_orderedEdits;
    v7->_orderedEdits = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__mutableObjectContentDidUpdate_ name:@"MSPMutableObjectContentDidUpdateNotification" object:0];
  }

  return v7;
}

- (void)insertObject:(id)object inEditableObjectsAtIndex:(unint64_t)index
{
  v18[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  [(NSMutableArray *)self->_originalMutableArray insertObject:objectCopy atIndex:index];
  if (index)
  {
    v7 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:index - 1];
    storageIdentifier = [v7 storageIdentifier];
  }

  else
  {
    storageIdentifier = 0;
  }

  orderedEdits = self->_orderedEdits;
  v10 = [_MSPContainerEditAddition alloc];
  v18[0] = objectCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  null = storageIdentifier;
  if (!storageIdentifier)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17 = null;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [(_MSPContainerEditAddition *)v10 initWithObjects:v11 indexes:v12 identifiersAtop:v14];
  [(NSMutableArray *)orderedEdits addObject:v15];

  if (!storageIdentifier)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectFromEditableObjectsAtIndex:(unint64_t)index
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:?];
  [(NSMutableArray *)self->_originalMutableArray removeObjectAtIndex:index];
  orderedEdits = self->_orderedEdits;
  v7 = [_MSPContainerEditRemoval alloc];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  v10 = [(_MSPContainerEditRemoval *)v7 initWithRemovedObjects:v8 indexes:v9];
  [(NSMutableArray *)orderedEdits addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)replaceObjectInEditableObjectsAtIndex:(unint64_t)index withObject:(id)object
{
  v16[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:index];
  if (([v7 isEqual:objectCopy] & 1) == 0)
  {
    [(NSMutableArray *)self->_originalMutableArray replaceObjectAtIndex:index withObject:objectCopy];
    orderedEdits = self->_orderedEdits;
    v9 = [_MSPContainerEditReplacement alloc];
    v16[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v15 = objectCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
    v13 = [(_MSPContainerEditReplacement *)v9 initWithOriginalObjects:v10 replacementObjects:v11 indexes:v12];
    [(NSMutableArray *)orderedEdits addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)insertEditableObjects:(id)objects atIndexes:(id)indexes
{
  objectsCopy = objects;
  indexesCopy = indexes;
  [(NSMutableArray *)self->_originalMutableArray insertObjects:objectsCopy atIndexes:indexesCopy];
  v7 = objc_opt_new();
  firstIndex = [indexesCopy firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = firstIndex;
    v10 = firstIndex - 1;
    if (firstIndex)
    {
      goto LABEL_7;
    }

    while (1)
    {
      null = [MEMORY[0x277CBEB68] null];
      [v7 addObject:null];
      while (1)
      {

        if (!v9)
        {
          break;
        }

LABEL_7:
        null = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:v10];
        storageIdentifier = [null storageIdentifier];
        [v7 addObject:storageIdentifier];
      }
    }
  }

  orderedEdits = self->_orderedEdits;
  v13 = [[_MSPContainerEditAddition alloc] initWithObjects:objectsCopy indexes:indexesCopy identifiersAtop:v7];
  [(NSMutableArray *)orderedEdits addObject:v13];
}

- (void)removeEditableObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    v4 = [(NSMutableArray *)self->_originalMutableArray objectsAtIndexes:indexesCopy];
    [(NSMutableArray *)self->_originalMutableArray removeObjectsAtIndexes:indexesCopy];
    orderedEdits = self->_orderedEdits;
    v6 = [[_MSPContainerEditRemoval alloc] initWithRemovedObjects:v4 indexes:indexesCopy];
    [(NSMutableArray *)orderedEdits addObject:v6];
  }
}

- (void)replaceEditableObjectsAtIndexes:(id)indexes withEditableObjects:(id)objects
{
  indexesCopy = indexes;
  objectsCopy = objects;
  v7 = [(NSMutableArray *)self->_originalMutableArray objectsAtIndexes:indexesCopy];
  if (([v7 isEqual:objectsCopy] & 1) == 0)
  {
    [(NSMutableArray *)self->_originalMutableArray replaceObjectsAtIndexes:indexesCopy withObjects:objectsCopy];
    orderedEdits = self->_orderedEdits;
    v9 = [[_MSPContainerEditReplacement alloc] initWithOriginalObjects:v7 replacementObjects:objectsCopy indexes:indexesCopy];
    [(NSMutableArray *)orderedEdits addObject:v9];
  }
}

- (void)_mutableObjectContentDidUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    originalMutableArray = self->_originalMutableArray;
    v8 = updateCopy;
    object = [updateCopy object];
    LODWORD(originalMutableArray) = [(NSMutableArray *)originalMutableArray containsObject:object];

    updateCopy = v8;
    if (originalMutableArray)
    {
      object2 = [v8 object];
      [(_MSPContainerEditsRecorder *)self _editDetectorDidDetectUpdateForObject:object2];

      updateCopy = v8;
    }
  }
}

- (void)_editDetectorDidDetectUpdateForObject:(id)object
{
  objectCopy = object;
  updatedObjects = self->_updatedObjects;
  v10 = objectCopy;
  if (!updatedObjects)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_updatedObjects;
    self->_updatedObjects = v6;

    objectCopy = v10;
    updatedObjects = self->_updatedObjects;
  }

  if (([(NSMutableSet *)updatedObjects containsObject:objectCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_updatedObjects addObject:v10];
    orderedEdits = self->_orderedEdits;
    v9 = [[_MSPContainerEditContentUpdate alloc] initWithUpdatedObject:v10];
    [(NSMutableArray *)orderedEdits addObject:v9];
  }
}

- (void)useImmutableObjectsForEditsFromMap:(id)map intermediateMutableObjectTransferBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  orderedEdits = [(_MSPContainerEditsRecorder *)self orderedEdits];
  v9 = [orderedEdits countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(orderedEdits);
        }

        [*(*(&v14 + 1) + 8 * v12++) useImmutableObjectsFromMap:mapCopy intermediateMutableObjectTransferBlock:blockCopy];
      }

      while (v10 != v12);
      v10 = [orderedEdits countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end