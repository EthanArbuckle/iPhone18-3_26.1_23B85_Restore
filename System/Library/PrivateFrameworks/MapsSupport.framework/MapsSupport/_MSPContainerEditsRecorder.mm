@interface _MSPContainerEditsRecorder
- (_MSPContainerEditsRecorder)initWithMutableArray:(id)a3;
- (void)_editDetectorDidDetectUpdateForObject:(id)a3;
- (void)_mutableObjectContentDidUpdate:(id)a3;
- (void)insertEditableObjects:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inEditableObjectsAtIndex:(unint64_t)a4;
- (void)removeEditableObjectsAtIndexes:(id)a3;
- (void)removeObjectFromEditableObjectsAtIndex:(unint64_t)a3;
- (void)replaceEditableObjectsAtIndexes:(id)a3 withEditableObjects:(id)a4;
- (void)replaceObjectInEditableObjectsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)useImmutableObjectsForEditsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4;
@end

@implementation _MSPContainerEditsRecorder

- (_MSPContainerEditsRecorder)initWithMutableArray:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _MSPContainerEditsRecorder;
  v6 = [(_MSPContainerEditsRecorder *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMutableArray, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedEdits = v7->_orderedEdits;
    v7->_orderedEdits = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel__mutableObjectContentDidUpdate_ name:@"MSPMutableObjectContentDidUpdateNotification" object:0];
  }

  return v7;
}

- (void)insertObject:(id)a3 inEditableObjectsAtIndex:(unint64_t)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NSMutableArray *)self->_originalMutableArray insertObject:v6 atIndex:a4];
  if (a4)
  {
    v7 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:a4 - 1];
    v8 = [v7 storageIdentifier];
  }

  else
  {
    v8 = 0;
  }

  orderedEdits = self->_orderedEdits;
  v10 = [_MSPContainerEditAddition alloc];
  v18[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [(_MSPContainerEditAddition *)v10 initWithObjects:v11 indexes:v12 identifiersAtop:v14];
  [(NSMutableArray *)orderedEdits addObject:v15];

  if (!v8)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectFromEditableObjectsAtIndex:(unint64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:?];
  [(NSMutableArray *)self->_originalMutableArray removeObjectAtIndex:a3];
  orderedEdits = self->_orderedEdits;
  v7 = [_MSPContainerEditRemoval alloc];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  v10 = [(_MSPContainerEditRemoval *)v7 initWithRemovedObjects:v8 indexes:v9];
  [(NSMutableArray *)orderedEdits addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)replaceObjectInEditableObjectsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:a3];
  if (([v7 isEqual:v6] & 1) == 0)
  {
    [(NSMutableArray *)self->_originalMutableArray replaceObjectAtIndex:a3 withObject:v6];
    orderedEdits = self->_orderedEdits;
    v9 = [_MSPContainerEditReplacement alloc];
    v16[0] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v15 = v6;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
    v13 = [(_MSPContainerEditReplacement *)v9 initWithOriginalObjects:v10 replacementObjects:v11 indexes:v12];
    [(NSMutableArray *)orderedEdits addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)insertEditableObjects:(id)a3 atIndexes:(id)a4
{
  v15 = a3;
  v6 = a4;
  [(NSMutableArray *)self->_originalMutableArray insertObjects:v15 atIndexes:v6];
  v7 = objc_opt_new();
  v8 = [v6 firstIndex];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    v10 = v8 - 1;
    if (v8)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v11 = [MEMORY[0x277CBEB68] null];
      [v7 addObject:v11];
      while (1)
      {

        if (!v9)
        {
          break;
        }

LABEL_7:
        v11 = [(NSMutableArray *)self->_originalMutableArray objectAtIndexedSubscript:v10];
        v14 = [v11 storageIdentifier];
        [v7 addObject:v14];
      }
    }
  }

  orderedEdits = self->_orderedEdits;
  v13 = [[_MSPContainerEditAddition alloc] initWithObjects:v15 indexes:v6 identifiersAtop:v7];
  [(NSMutableArray *)orderedEdits addObject:v13];
}

- (void)removeEditableObjectsAtIndexes:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(NSMutableArray *)self->_originalMutableArray objectsAtIndexes:v7];
    [(NSMutableArray *)self->_originalMutableArray removeObjectsAtIndexes:v7];
    orderedEdits = self->_orderedEdits;
    v6 = [[_MSPContainerEditRemoval alloc] initWithRemovedObjects:v4 indexes:v7];
    [(NSMutableArray *)orderedEdits addObject:v6];
  }
}

- (void)replaceEditableObjectsAtIndexes:(id)a3 withEditableObjects:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_originalMutableArray objectsAtIndexes:v10];
  if (([v7 isEqual:v6] & 1) == 0)
  {
    [(NSMutableArray *)self->_originalMutableArray replaceObjectsAtIndexes:v10 withObjects:v6];
    orderedEdits = self->_orderedEdits;
    v9 = [[_MSPContainerEditReplacement alloc] initWithOriginalObjects:v7 replacementObjects:v6 indexes:v10];
    [(NSMutableArray *)orderedEdits addObject:v9];
  }
}

- (void)_mutableObjectContentDidUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    originalMutableArray = self->_originalMutableArray;
    v8 = v4;
    v6 = [v4 object];
    LODWORD(originalMutableArray) = [(NSMutableArray *)originalMutableArray containsObject:v6];

    v4 = v8;
    if (originalMutableArray)
    {
      v7 = [v8 object];
      [(_MSPContainerEditsRecorder *)self _editDetectorDidDetectUpdateForObject:v7];

      v4 = v8;
    }
  }
}

- (void)_editDetectorDidDetectUpdateForObject:(id)a3
{
  v4 = a3;
  updatedObjects = self->_updatedObjects;
  v10 = v4;
  if (!updatedObjects)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_updatedObjects;
    self->_updatedObjects = v6;

    v4 = v10;
    updatedObjects = self->_updatedObjects;
  }

  if (([(NSMutableSet *)updatedObjects containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_updatedObjects addObject:v10];
    orderedEdits = self->_orderedEdits;
    v9 = [[_MSPContainerEditContentUpdate alloc] initWithUpdatedObject:v10];
    [(NSMutableArray *)orderedEdits addObject:v9];
  }
}

- (void)useImmutableObjectsForEditsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(_MSPContainerEditsRecorder *)self orderedEdits];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) useImmutableObjectsFromMap:v6 intermediateMutableObjectTransferBlock:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end