@interface MSPEditableQuery
- (id)_initWithSource:(id)source;
- (id)_visibleState;
- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container;
- (void)_performEditWithStateTransformation:(id)transformation containerEdit:(id)edit;
- (void)deleteContentsObjectAtIndex:(unint64_t)index;
- (void)deleteContentsObjectAtIndexes:(id)indexes;
- (void)moveContentsObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
@end

@implementation MSPEditableQuery

- (id)_initWithSource:(id)source
{
  v10.receiver = self;
  v10.super_class = MSPEditableQuery;
  v3 = [(MSPQuery *)&v10 _initWithSource:source];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringWithFormat:@"%@%@", @"com.apple.MapsSupport.MSPEditableQuery.context-", uUIDString];
    v8 = v3[8];
    v3[8] = v7;
  }

  return v3;
}

- (id)_visibleState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  editedState = selfCopy->_editedState;
  if (editedState)
  {
    _visibleState = editedState;
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = MSPEditableQuery;
    _visibleState = [(MSPQuery *)&v7 _visibleState];
  }

  v5 = _visibleState;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)_didChangeSourceWithNewState:(id)state context:(id)context inContainer:(id)container
{
  stateCopy = state;
  contextCopy = context;
  containerCopy = container;
  if (([contextCopy isEqual:self->_context] & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    editedState = selfCopy->_editedState;
    selfCopy->_editedState = 0;

    objc_storeStrong(&selfCopy->_container, container);
    objc_sync_exit(selfCopy);

    v13.receiver = selfCopy;
    v13.super_class = MSPEditableQuery;
    [(MSPQuery *)&v13 _didChangeSourceWithNewState:stateCopy context:contextCopy inContainer:containerCopy];
  }
}

- (void)_performEditWithStateTransformation:(id)transformation containerEdit:(id)edit
{
  transformationCopy = transformation;
  editCopy = edit;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _visibleState = [(MSPEditableQuery *)selfCopy _visibleState];
  v10 = transformationCopy[2](transformationCopy, _visibleState);
  editedState = selfCopy->_editedState;
  selfCopy->_editedState = v10;

  objc_sync_exit(selfCopy);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  objc_initWeak(&location, selfCopy);
  container = selfCopy->_container;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__MSPEditableQuery__performEditWithStateTransformation_containerEdit___block_invoke;
  v18[3] = &unk_279867BD0;
  v20 = v22;
  v13 = editCopy;
  v19 = v13;
  context = selfCopy->_context;
  changeHandlerQueue = [(MSPQuery *)selfCopy changeHandlerQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__MSPEditableQuery__performEditWithStateTransformation_containerEdit___block_invoke_2;
  v16[3] = &unk_279867BF8;
  objc_copyWeak(&v17, &location);
  v16[4] = v22;
  [(MSPContainer *)container editContentsUsingBarrierBlock:v18 context:context completionQueue:changeHandlerQueue completion:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
}

uint64_t __70__MSPEditableQuery__performEditWithStateTransformation_containerEdit___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __70__MSPEditableQuery__performEditWithStateTransformation_containerEdit___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3 || (*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
    {
      v6 = WeakRetained;
      objc_sync_enter(v6);
      v7 = v6[6];
      v6[6] = 0;

      v8 = [v6 _lastState];
      [v6 _didChangeSourceWithNewState:v8 context:0 inContainer:v6[7]];

      objc_sync_exit(v6);
    }
  }

  else
  {
    v9 = *MEMORY[0x277D0E798];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[MSPEditableQuery _performEditWithStateTransformation:containerEdit:]_block_invoke_2";
      v14 = 1024;
      v15 = 370;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteContentsObjectAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke;
  v7[3] = &unk_279867C48;
  v5 = indexesCopy;
  v8 = v5;
  v9 = v10;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_3;
  v6[3] = &unk_279867C98;
  v6[4] = v10;
  [(MSPEditableQuery *)self _performEditWithStateTransformation:v7 containerEdit:v6];

  _Block_object_dispose(v10, 8);
}

id __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_2;
  v12 = &unk_279867C20;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = v3;
  v14 = v4;
  v6 = v3;
  [v5 enumerateIndexesUsingBlock:&v9];
  v7 = [v6 stateByDeletingObjectsAtIndexes:{*(a1 + 32), v9, v10, v11, v12}];

  return v7;
}

void __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifiers];
  v5 = [v4 objectAtIndexedSubscript:a2];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

BOOL __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_4;
  v7[3] = &unk_279867C70;
  v7[4] = *(a1 + 32);
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];
  if (v5)
  {
    [v3 removeObjectsAtIndexes:v4];
  }

  return v5 != 0;
}

uint64_t __50__MSPEditableQuery_deleteContentsObjectAtIndexes___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 storageIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)deleteContentsObjectAtIndex:(unint64_t)index
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__2;
  v5[4] = __Block_byref_object_dispose__2;
  v6 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke;
  v4[3] = &unk_279867CC0;
  v4[4] = v5;
  v4[5] = index;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke_2;
  v3[3] = &unk_279867C98;
  v3[4] = v5;
  [(MSPEditableQuery *)self _performEditWithStateTransformation:v4 containerEdit:v3];
  _Block_object_dispose(v5, 8);
}

id __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 objectAtIndexedSubscript:*(a1 + 40)];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 stateByDeletingObjectAtIndex:*(a1 + 40)];

  return v8;
}

BOOL __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke_3;
  v7[3] = &unk_279867C70;
  v7[4] = *(a1 + 32);
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  v5 = [v4 count];
  if (v5)
  {
    [v3 removeObjectsAtIndexes:v4];
  }

  return v5 != 0;
}

uint64_t __48__MSPEditableQuery_deleteContentsObjectAtIndex___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 storageIdentifier];
  v4 = [v3 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v4;
}

- (void)moveContentsObjectAtIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__2;
  v8[4] = __Block_byref_object_dispose__2;
  v9 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__2;
  v6[4] = __Block_byref_object_dispose__2;
  v7 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__MSPEditableQuery_moveContentsObjectAtIndex_toIndex___block_invoke;
  v5[3] = &unk_279867CE8;
  v5[4] = v8;
  v5[5] = v6;
  v5[6] = index;
  v5[7] = toIndex;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__MSPEditableQuery_moveContentsObjectAtIndex_toIndex___block_invoke_2;
  v4[3] = &unk_279867D10;
  v4[4] = v8;
  v4[5] = v6;
  [(MSPEditableQuery *)self _performEditWithStateTransformation:v5 containerEdit:v4];
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
}

id __54__MSPEditableQuery_moveContentsObjectAtIndex_toIndex___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 objectAtIndexedSubscript:a1[6]];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 identifiers];
  v9 = [v8 objectAtIndexedSubscript:a1[7]];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v3 stateByMovingObjectAtIndex:a1[6] toIndex:a1[7]];

  return v12;
}

uint64_t __54__MSPEditableQuery_moveContentsObjectAtIndex_toIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    obj = v3;
    while (2)
    {
      v10 = 0;
      v20 = v6 + v5;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [v11 storageIdentifier];
        v13 = [v12 isEqual:*(*(*(a1 + 32) + 8) + 40)];

        if (v13)
        {
          v9 = v6;
        }

        else
        {
          v14 = [v11 storageIdentifier];
          v15 = [v14 isEqual:*(*(*(a1 + 40) + 8) + 40)];

          if (v15)
          {
            v8 = v6;
          }
        }

        if (v9 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = obj;

          v17 = [obj objectAtIndexedSubscript:v9];
          [obj removeObjectAtIndex:v9];
          [obj insertObject:v17 atIndex:v8];
          v16 = 1;
          goto LABEL_16;
        }

        ++v6;
        ++v10;
      }

      while (v5 != v10);
      v3 = obj;
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v6 = v20;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
  v17 = v3;
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

@end