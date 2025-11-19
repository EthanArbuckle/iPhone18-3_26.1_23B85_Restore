@interface MSPQuerySource
- (id)_container;
- (id)_initWithOwningContainer:(id)a3;
- (id)_initWithParentSource:(id)a3 preprocessingBlock:(id)a4 mappingBlock:(id)a5;
- (id)newEditableQuery;
- (id)newQuery;
- (id)sourceByMappingContentsUsingBlock:(id)a3;
- (id)sourceByMappingContentsUsingPreprocessingBlock:(id)a3 mappingBlock:(id)a4;
- (void)_addObserver:(id)a3;
- (void)_didChangeSourceWithNewState:(id)a3 context:(id)a4 inContainer:(id)a5;
- (void)_didReceiveContainerContents:(id)a3 context:(id)a4;
- (void)_removeObserver:(id)a3;
@end

@implementation MSPQuerySource

- (id)_initWithOwningContainer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSPQuerySource;
  v5 = [(MSPQuerySource *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningContainer, v4);
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = v4;
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

- (id)_initWithParentSource:(id)a3 preprocessingBlock:(id)a4 mappingBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = MSPQuerySource;
  v12 = [(MSPQuerySource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentSource, a3);
    v14 = [v10 copy];
    preprocessingBlock = v13->_preprocessingBlock;
    v13->_preprocessingBlock = v14;

    v16 = [v11 copy];
    mappingBlock = v13->_mappingBlock;
    v13->_mappingBlock = v16;

    v18 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = v18;

    [(MSPQuerySource *)v13->_parentSource _addObserver:v13];
  }

  return v13;
}

- (void)_addObserver:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v7];
  v5 = v4->_state;
  objc_sync_exit(v4);

  if (v5)
  {
    v6 = [(MSPQuerySource *)v4 _container];
    [v7 _didChangeSourceWithNewState:v5 context:0 inContainer:v6];
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

- (void)_removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_didReceiveContainerContents:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [[_MSPQueryState alloc] initWithContainerContents:v6];
  objc_storeStrong(&v8->_state, v9);
  v10 = [(NSHashTable *)v8->_observers allObjects];
  v11 = [v10 copy];

  objc_sync_exit(v8);
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
        v17 = [(MSPQuerySource *)v8 _container];
        [v16 _didChangeSourceWithNewState:v9 context:v7 inContainer:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_didChangeSourceWithNewState:(id)a3 context:(id)a4 inContainer:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [v8 stateByInvokingPreprocessingBlock:v11->_preprocessingBlock mappingBlock:v11->_mappingBlock];
  objc_storeStrong(&v11->_state, v12);
  v13 = [(NSHashTable *)v11->_observers allObjects];
  v14 = [v13 copy];

  objc_sync_exit(v11);
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

        [*(*(&v20 + 1) + 8 * v18++) _didChangeSourceWithNewState:v12 context:v9 inContainer:{v10, v20}];
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sourceByMappingContentsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [MSPQuerySource alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MSPQuerySource_sourceByMappingContentsUsingBlock___block_invoke;
  v9[3] = &unk_279867B80;
  v10 = v4;
  v6 = v4;
  v7 = [(MSPQuerySource *)v5 _initWithParentSource:self preprocessingBlock:0 mappingBlock:v9];

  return v7;
}

- (id)sourceByMappingContentsUsingPreprocessingBlock:(id)a3 mappingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MSPQuerySource alloc] _initWithParentSource:self preprocessingBlock:v7 mappingBlock:v6];

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