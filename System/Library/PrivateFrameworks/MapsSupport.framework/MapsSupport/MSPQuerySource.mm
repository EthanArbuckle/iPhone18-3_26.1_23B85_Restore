@interface MSPQuerySource
- (id)_container;
- (id)_initWithOwningContainer:(id)container;
- (id)_initWithParentSource:(id)source preprocessingBlock:(id)block mappingBlock:(id)mappingBlock;
- (id)newEditableQuery;
- (id)newQuery;
- (id)sourceByMappingContentsUsingBlock:(id)block;
- (id)sourceByMappingContentsUsingPreprocessingBlock:(id)block mappingBlock:(id)mappingBlock;
- (void)_addObserver:(id)observer;
- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container;
- (void)_didReceiveContainerContents:(id)contents context:(id)context;
- (void)_removeObserver:(id)observer;
@end

@implementation MSPQuerySource

- (id)_initWithOwningContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = MSPQuerySource;
  v5 = [(MSPQuerySource *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningContainer, containerCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v9 = containerCopy;
    [v9 addObserver:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__MSPQuerySource__initWithOwningContainer___block_invoke;
    v11[3] = &unk_279867B58;
    v12 = v6;
    [v9 accessContentsUsingConcurrentBlock:v11];
  }

  return v6;
}

- (id)_initWithParentSource:(id)source preprocessingBlock:(id)block mappingBlock:(id)mappingBlock
{
  sourceCopy = source;
  blockCopy = block;
  mappingBlockCopy = mappingBlock;
  v21.receiver = self;
  v21.super_class = MSPQuerySource;
  v12 = [(MSPQuerySource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentSource, source);
    v14 = [blockCopy copy];
    preprocessingBlock = v13->_preprocessingBlock;
    v13->_preprocessingBlock = v14;

    v16 = [mappingBlockCopy copy];
    mappingBlock = v13->_mappingBlock;
    v13->_mappingBlock = v16;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = weakObjectsHashTable;

    [(MSPQuerySource *)v13->_parentSource _addObserver:v13];
  }

  return v13;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  v5 = selfCopy->_state;
  objc_sync_exit(selfCopy);

  if (v5)
  {
    _container = [(MSPQuerySource *)selfCopy _container];
    [observerCopy _didChangeSourceWithNewState:v5 context:0 inContainer:_container];
  }
}

- (id)_container
{
  parentSource = self->_parentSource;
  if (parentSource)
  {
    WeakRetained = [(MSPQuerySource *)parentSource _container];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_owningContainer);
  }

  return WeakRetained;
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)_didReceiveContainerContents:(id)contents context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [[_MSPQueryState alloc] initWithContainerContents:contentsCopy];
  objc_storeStrong(&selfCopy->_state, v9);
  allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
  v11 = [allObjects copy];

  objc_sync_exit(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        _container = [(MSPQuerySource *)selfCopy _container];
        [v16 _didChangeSourceWithNewState:v9 context:contextCopy inContainer:_container];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  contextCopy = context;
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [stateCopy stateByInvokingPreprocessingBlock:selfCopy->_preprocessingBlock mappingBlock:selfCopy->_mappingBlock];
  objc_storeStrong(&selfCopy->_state, v12);
  allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
  v14 = [allObjects copy];

  objc_sync_exit(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v18++) _didChangeSourceWithNewState:v12 context:contextCopy inContainer:{containerCopy, v20}];
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sourceByMappingContentsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [MSPQuerySource alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MSPQuerySource_sourceByMappingContentsUsingBlock___block_invoke;
  v9[3] = &unk_279867B80;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [(MSPQuerySource *)v5 _initWithParentSource:self preprocessingBlock:0 mappingBlock:v9];

  return v7;
}

- (id)sourceByMappingContentsUsingPreprocessingBlock:(id)block mappingBlock:(id)mappingBlock
{
  mappingBlockCopy = mappingBlock;
  blockCopy = block;
  v8 = [[MSPQuerySource alloc] _initWithParentSource:self preprocessingBlock:blockCopy mappingBlock:mappingBlockCopy];

  return v8;
}

- (id)newQuery
{
  v3 = [MSPQuery alloc];

  return [(MSPQuery *)v3 _initWithSource:self];
}

- (id)newEditableQuery
{
  v3 = [MSPEditableQuery alloc];

  return [(MSPEditableQuery *)v3 _initWithSource:self];
}

@end