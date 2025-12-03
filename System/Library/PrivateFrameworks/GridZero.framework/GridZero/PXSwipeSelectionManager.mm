@interface PXSwipeSelectionManager
- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)location;
- (BOOL)isInMultiSelectMode;
- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (NSArray)gesturesForFailureRequirements;
- (NSArray)keyCommandsForSelectionExtension;
- (PXSimpleIndexPath)_currentIndexPath;
- (PXSimpleIndexPath)_itemIndexPathAtLocation:(SEL)location;
- (PXSimpleIndexPath)_itemIndexPathClosestAboveLocation:(SEL)location;
- (PXSimpleIndexPath)_itemIndexPathClosestLeadingLocation:(SEL)location;
- (PXSimpleIndexPath)_startingIndexPath;
- (PXSwipeSelectionManager)init;
- (PXSwipeSelectionManager)initWithSelectionManager:(id)manager scrollView:(id)view;
- (PXSwipeSelectionManagerDelegate)delegate;
- (id)targetForKeyCommands;
- (void)_beginSelectionFromIndexPath:(PXSimpleIndexPath *)path;
- (void)_endSelection;
- (void)_setCurrentIndexPath:(PXSimpleIndexPath *)path;
- (void)_setPausingChangesToken:(id)token;
- (void)_setStartingIndexPath:(PXSimpleIndexPath *)path;
- (void)_updateSelectedIndexPaths;
- (void)_updateSelectionWithHitIndexPath:(PXSimpleIndexPath *)path leadingClosestIndexPath:(PXSimpleIndexPath *)indexPath aboveClosestIndexPath:(PXSimpleIndexPath *)closestIndexPath;
- (void)_updateWithDataSource:(id)source changeHistory:(id)history;
- (void)autoScroller:(id)scroller didAutoscrollWithTimestamp:(double)timestamp;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection;
- (void)dealloc;
- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction;
- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)removeFromView;
- (void)setDelegate:(id)delegate;
- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point;
@end

@implementation PXSwipeSelectionManager

- (NSArray)keyCommandsForSelectionExtension
{
  v3 = objc_opt_respondsToSelector();
  v4 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    keyCommandsForSelectionExtension = [(UIMultiSelectInteraction *)self->_multiSelectInteraction keyCommandsForSelectionExtension];
    v6 = keyCommandsForSelectionExtension;
    if (keyCommandsForSelectionExtension)
    {
      v7 = keyCommandsForSelectionExtension;
    }

    else
    {
      v7 = v4;
    }

    v4 = v7;
  }

  return v4;
}

- (PXSimpleIndexPath)_currentIndexPath
{
  v3 = *&self[4].item;
  *&retstr->dataSourceIdentifier = *&self[4].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (void)_setStartingIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->__startingIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->__startingIndexPath.item = v3;
}

- (PXSimpleIndexPath)_startingIndexPath
{
  v3 = *&self[3].item;
  *&retstr->dataSourceIdentifier = *&self[3].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXSwipeSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)multiSelectInteraction:(id)interaction extendSelectionInDirection:(unint64_t)direction
{
  if (self->_delegateFlags.respondsToExtendSelectionInDirection)
  {
    if (direction > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_21AC7D678[direction];
    }

    delegate = [(PXSwipeSelectionManager *)self delegate];
    [delegate swipeSelectionManager:self extendSelectionInDirection:v6];
  }
}

- (void)didCancelMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  if ([(PXSwipeSelectionManager *)self _isSelecting:interaction])
  {

    [(PXSwipeSelectionManager *)self _endSelection];
  }
}

- (void)didEndMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  if ([(PXSwipeSelectionManager *)self _isSelecting:interaction])
  {

    [(PXSwipeSelectionManager *)self _endSelection];
  }
}

- (void)multiSelectInteraction:(id)interaction toggleSelectionStateUpToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v18 = 0u;
  v19 = 0u;
  [(PXSwipeSelectionManager *)self _itemIndexPathAtLocation:interaction, point.x];
  v16 = 0u;
  v17 = 0u;
  [(PXSwipeSelectionManager *)self _itemIndexPathClosestLeadingLocation:x, y];
  v14 = 0u;
  v15 = 0u;
  [(PXSwipeSelectionManager *)self _itemIndexPathClosestAboveLocation:x, y];
  v7 = *MEMORY[0x277D3CF78];
  if (*MEMORY[0x277D3CF78])
  {
    if (v18 == v7)
    {
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v8 = v14 != v16;
    if (v18 == v16)
    {
      if (v14 == v16)
      {
        return;
      }

LABEL_9:
      if (![(PXSwipeSelectionManager *)self _isSelecting])
      {
        return;
      }

      goto LABEL_10;
    }
  }

  [(PXSwipeSelectionManager *)self _startingIndexPath];
  if (*&v13[0] == v7 && v8)
  {
    goto LABEL_9;
  }

  if (*&v13[0] == v7)
  {
    return;
  }

LABEL_10:
  v13[0] = v18;
  v13[1] = v19;
  v12[0] = v16;
  v12[1] = v17;
  v11[0] = v14;
  v11[1] = v15;
  [(PXSwipeSelectionManager *)self _updateSelectionWithHitIndexPath:v13 leadingClosestIndexPath:v12 aboveClosestIndexPath:v11];
  _autoScroller = [(PXSwipeSelectionManager *)self _autoScroller];
  scrollView = [(PXSwipeSelectionManager *)self scrollView];
  [_autoScroller updateWithUserInteractionLocation:scrollView inCoordinateSpace:{x, y}];
}

- (void)willBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(PXSwipeSelectionManager *)self _isSelecting])
  {
    if (PXPointIsValid())
    {
      v8 = 0u;
      v9 = 0u;
      [(PXSwipeSelectionManager *)self _itemIndexPathAtLocation:x, y];
      v7[0] = v8;
      v7[1] = v9;
      [(PXSwipeSelectionManager *)self _beginSelectionFromIndexPath:v7];
    }
  }
}

- (BOOL)shouldBeginMultiSelectInteraction:(id)interaction atPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = point.y;
  v8 = point.x;
  isInMultiSelectMode = [(PXSwipeSelectionManager *)self isInMultiSelectMode];
  if (isInMultiSelectMode)
  {
    v11 = [(PXSwipeSelectionManager *)self _shouldBeginMultiSelectAtLocation:v8, v7];
    v12 = fabs(x) > fabs(y);
    LOBYTE(isInMultiSelectMode) = v11 && v12;
  }

  return isInMultiSelectMode;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)selection
{
  if (self->_delegateFlags.respondsToAutomaticallyTransitionToMultiSelectMode)
  {
    delegate = [(PXSwipeSelectionManager *)self delegate];
    [delegate swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:self];
  }
}

- (BOOL)isInMultiSelectMode
{
  selfCopy = self;
  delegate = [(PXSwipeSelectionManager *)self delegate];
  LOBYTE(selfCopy) = [delegate swipeSelectionManagerIsInMultiSelectMode:selfCopy];

  return selfCopy;
}

- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (self->_delegateFlags.respondsToShouldBeginSelectionAtLocation)
  {
    delegate = [(PXSwipeSelectionManager *)self delegate];
    v7 = [delegate swipeSelectionManager:self shouldBeginSelectionAtLocation:{x, y}];

    if (!v7)
    {
      return 0;
    }
  }

  [(PXSwipeSelectionManager *)self _itemIndexPathAtLocation:x, y];
  v8 = v12;
  v15 = v13;
  v16 = v14;
  if (v12 == *MEMORY[0x277D3CF78])
  {
    return 0;
  }

  if (!self->_delegateFlags.respondsToShouldSelectItemAtIndexPath)
  {
    return 1;
  }

  delegate2 = [(PXSwipeSelectionManager *)self delegate];
  v12 = v8;
  v13 = v15;
  v14 = v16;
  v9 = [delegate2 swipeSelectionManager:self shouldSelectItemAtIndexPath:&v12];

  return v9;
}

- (void)autoScroller:(id)scroller didAutoscrollWithTimestamp:(double)timestamp
{
  if (self->_delegateFlags.respondsToDidAutoScroll)
  {
    v6 = [(PXSwipeSelectionManager *)self delegate:scroller];
    [v6 swipeSelectionManagerDidAutoScroll:self];
  }
}

- (void)_updateWithDataSource:(id)source changeHistory:(id)history
{
  v32 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  historyCopy = history;
  _currentDataSourceIdentifier = [(PXSwipeSelectionManager *)self _currentDataSourceIdentifier];
  if (_currentDataSourceIdentifier != *MEMORY[0x277D3CF78])
  {
    v9 = _currentDataSourceIdentifier;
    identifier = [sourceCopy identifier];
    v11 = [historyCopy changeDetailsFromDataSourceIdentifier:v9 toDataSourceIdentifier:identifier];
    v29 = 0u;
    v30 = 0u;
    [(PXSwipeSelectionManager *)self _startingIndexPath];
    v27 = 0u;
    v28 = 0u;
    v25 = v29;
    v26 = v30;
    [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v11 toIndexPath:&v25 hasIncrementalChanges:0 objectChanged:0];
    v25 = v27;
    v26 = v28;
    [(PXSwipeSelectionManager *)self _setStartingIndexPath:&v25];
    _selectedIndexPathsBeforeSwipe = [(PXSwipeSelectionManager *)self _selectedIndexPathsBeforeSwipe];
    v13 = [MEMORY[0x277D3CDD0] indexPathSetAfterApplyingChanges:v11 toIndexPathSet:_selectedIndexPathsBeforeSwipe hasIncrementalChanges:0];
    [(PXSwipeSelectionManager *)self _setSelectedIndexPathsBeforeSwipe:v13];
    [(PXSwipeSelectionManager *)self _setCurrentDataSourceIdentifier:identifier];
    if (identifier != v27)
    {
      [(PXSwipeSelectionManager *)self _endSelection];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      multiSelectInteraction = [(PXSwipeSelectionManager *)self multiSelectInteraction];
      gesturesForFailureRequirements = [multiSelectInteraction gesturesForFailureRequirements];

      v16 = [gesturesForFailureRequirements countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(gesturesForFailureRequirements);
            }

            v20 = *(*(&v21 + 1) + 8 * i);
            [v20 setEnabled:0];
            [v20 setEnabled:1];
          }

          v17 = [gesturesForFailureRequirements countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v17);
      }
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if ((changeCopy & 1) != 0 && PXSwipeSelectionManagerDataSourceObserverContext == context)
  {
    v11 = observableCopy;
    dataSource = [observableCopy dataSource];
    changeHistory = [v11 changeHistory];
    [(PXSwipeSelectionManager *)self _updateWithDataSource:dataSource changeHistory:changeHistory];

    observableCopy = v11;
  }
}

- (void)_updateSelectedIndexPaths
{
  if (self->_needsUpdateFlags.selectedIndexPaths)
  {
    v31 = v2;
    v32 = v3;
    self->_needsUpdateFlags.selectedIndexPaths = 0;
    _selectedIndexPathsBeforeSwipe = [(PXSwipeSelectionManager *)self _selectedIndexPathsBeforeSwipe];
    if (!_selectedIndexPathsBeforeSwipe)
    {
LABEL_19:

      return;
    }

    v29 = 0u;
    v30 = 0u;
    [(PXSwipeSelectionManager *)self _startingIndexPath];
    v27 = 0u;
    v28 = 0u;
    [(PXSwipeSelectionManager *)self _currentIndexPath];
    selectionManager = [(PXSwipeSelectionManager *)self selectionManager];
    dataSourceManager = [selectionManager dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    if (*MEMORY[0x277D3CF78])
    {
      v9 = v27 == *MEMORY[0x277D3CF78];
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      indexPathSet = [MEMORY[0x277D3CD58] indexPathSet];
    }

    else
    {
      if (self->_delegateFlags.respondsToIndexPathSetFromIndexPathToIndexPath)
      {
        delegate = [(PXSwipeSelectionManager *)self delegate];
        v26 = v30;
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v12 = [delegate swipeSelectionManager:self indexPathSetFromIndexPath:&v25 toIndexPath:&v23];

LABEL_13:
        if (self->_delegateFlags.respondsToShouldSelectItemAtIndexPath)
        {
          indexPathSet2 = [MEMORY[0x277D3CD78] indexPathSet];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __52__PXSwipeSelectionManager__updateSelectedIndexPaths__block_invoke;
          v21[3] = &unk_2782993B8;
          v21[4] = self;
          v22 = indexPathSet2;
          v14 = indexPathSet2;
          [v12 enumerateAllIndexPathsUsingBlock:v21];
          v15 = [v12 mutableCopy];
          [v15 minusIndexPathSet:v14];

          v12 = v15;
        }

        v16 = [_selectedIndexPathsBeforeSwipe mutableCopy];
        if ([(PXSwipeSelectionManager *)self state]== 1)
        {
          [v16 unionIndexPathSet:v12];
        }

        else
        {
          [v16 minusIndexPathSet:v12];
        }

        selectionManager2 = [(PXSwipeSelectionManager *)self selectionManager];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __52__PXSwipeSelectionManager__updateSelectedIndexPaths__block_invoke_2;
        v19[3] = &unk_278297820;
        v20 = v16;
        v18 = v16;
        [selectionManager2 performChanges:v19];

        goto LABEL_19;
      }

      v26 = v30;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      indexPathSet = [dataSource indexPathSetFromIndexPath:&v25 toIndexPath:&v23];
    }

    v12 = indexPathSet;
    goto LABEL_13;
  }
}

void __52__PXSwipeSelectionManager__updateSelectedIndexPaths__block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  v7 = [v4 swipeSelectionManager:v5 shouldSelectItemAtIndexPath:&v10];

  if ((v7 & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = a2[1];
    v10 = *a2;
    v11 = v9;
    [v8 addIndexPath:&v10];
  }
}

- (void)_setCurrentIndexPath:(PXSimpleIndexPath *)path
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->__currentIndexPath.dataSourceIdentifier, *&path->dataSourceIdentifier), vceqq_s64(*&self->__currentIndexPath.item, *&path->item)))) & 1) == 0)
  {
    v4 = *&path->item;
    *&self->__currentIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&self->__currentIndexPath.item = v4;
    [(PXSwipeSelectionManager *)self _invalidateSelectedIndexPaths];

    [(PXSwipeSelectionManager *)self _updateSelectedIndexPaths];
  }
}

- (void)_setPausingChangesToken:(id)token
{
  tokenCopy = token;
  p_pausingChangesToken = &self->__pausingChangesToken;
  pausingChangesToken = self->__pausingChangesToken;
  if (pausingChangesToken != tokenCopy)
  {
    v8 = pausingChangesToken;
    if (v8)
    {
      selectionManager = [(PXSwipeSelectionManager *)self selectionManager];
      dataSourceManager = [selectionManager dataSourceManager];

      v12 = v8;
      v11 = dataSourceManager;
      px_dispatch_on_main_queue();
    }

    objc_storeStrong(p_pausingChangesToken, token);
  }
}

void __51__PXSwipeSelectionManager__setPausingChangesToken___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PXSwipeSelectionManager__setPausingChangesToken___block_invoke_2;
  v2[3] = &unk_2782977F8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

- (void)_endSelection
{
  [(PXSwipeSelectionManager *)self _setState:0];
  [(PXSwipeSelectionManager *)self _setCurrentDataSourceIdentifier:*MEMORY[0x277D3CF78]];
  [(PXSwipeSelectionManager *)self _setSelectedIndexPathsBeforeSwipe:0];
  v4 = *(MEMORY[0x277D3CFD8] + 16);
  v6 = *MEMORY[0x277D3CFD8];
  v5 = v6;
  v7 = v4;
  [(PXSwipeSelectionManager *)self _setStartingIndexPath:&v6];
  v6 = v5;
  v7 = v4;
  [(PXSwipeSelectionManager *)self _setCurrentIndexPath:&v6];
  _autoScroller = [(PXSwipeSelectionManager *)self _autoScroller];
  [_autoScroller stop];

  [(PXSwipeSelectionManager *)self _setPausingChangesToken:0];
}

- (void)_updateSelectionWithHitIndexPath:(PXSimpleIndexPath *)path leadingClosestIndexPath:(PXSimpleIndexPath *)indexPath aboveClosestIndexPath:(PXSimpleIndexPath *)closestIndexPath
{
  [(PXSwipeSelectionManager *)self _startingIndexPath];
  v10 = *MEMORY[0x277D3CF78];
  if (v21 == *MEMORY[0x277D3CF78])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwipeSelectionManager.m" lineNumber:202 description:@"Starting indexPath should be set"];
  }

  dataSourceIdentifier = path->dataSourceIdentifier;
  v12 = indexPath->dataSourceIdentifier;
  v13 = closestIndexPath->dataSourceIdentifier;
  v21 = 0u;
  v22 = 0u;
  if ([(PXSwipeSelectionManager *)self _isSelecting])
  {
    [(PXSwipeSelectionManager *)self _currentIndexPath];
  }

  else
  {
    v14 = *(MEMORY[0x277D3CFD8] + 16);
    v21 = *MEMORY[0x277D3CFD8];
    v22 = v14;
  }

  if (dataSourceIdentifier != v10 || v12 != v10 || v13 != v10)
  {
    if (v12 == v10)
    {
      pathCopy = closestIndexPath;
    }

    else
    {
      pathCopy = indexPath;
    }

    if (dataSourceIdentifier != v10)
    {
      pathCopy = path;
    }

    v18 = *&pathCopy->item;
    v21 = *&pathCopy->dataSourceIdentifier;
    v22 = v18;
  }

  v20[0] = v21;
  v20[1] = v22;
  [(PXSwipeSelectionManager *)self _setCurrentIndexPath:v20];
}

- (void)_beginSelectionFromIndexPath:(PXSimpleIndexPath *)path
{
  selectionManager = [(PXSwipeSelectionManager *)self selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__PXSwipeSelectionManager__beginSelectionFromIndexPath___block_invoke;
  v18[3] = &unk_2782977D0;
  v18[4] = self;
  v18[5] = 0x404E000000000000;
  [dataSourceManager performChanges:v18];

  selectionManager2 = [(PXSwipeSelectionManager *)self selectionManager];
  selectionSnapshot = [selectionManager2 selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

  [(PXSwipeSelectionManager *)self _setSelectedIndexPathsBeforeSwipe:selectedIndexPaths];
  v10 = *&path->item;
  v16 = *&path->dataSourceIdentifier;
  v17 = v10;
  [(PXSwipeSelectionManager *)self _setStartingIndexPath:&v16];
  selectionManager3 = [(PXSwipeSelectionManager *)self selectionManager];
  selectionSnapshot2 = [selectionManager3 selectionSnapshot];
  dataSource = [selectionSnapshot2 dataSource];
  -[PXSwipeSelectionManager _setCurrentDataSourceIdentifier:](self, "_setCurrentDataSourceIdentifier:", [dataSource identifier]);

  v14 = *&path->item;
  v16 = *&path->dataSourceIdentifier;
  v17 = v14;
  if ([selectedIndexPaths containsIndexPath:&v16])
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [(PXSwipeSelectionManager *)self _setState:v15];
}

void __56__PXSwipeSelectionManager__beginSelectionFromIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:@"PXSwipeSelectionManager" identifier:*(a1 + 40)];
  [*(a1 + 32) _setPausingChangesToken:v3];
}

- (PXSimpleIndexPath)_itemIndexPathClosestAboveLocation:(SEL)location
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE3(self->section) == 1)
  {
    selfCopy = self;
    delegate = [(PXSimpleIndexPath *)self delegate];
    v10 = delegate;
    if (delegate)
    {
      [delegate swipeSelectionManager:selfCopy itemIndexPathClosestAboveLocation:{x, y}];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *&retstr->dataSourceIdentifier = v11;
    *&retstr->item = v12;
  }

  return self;
}

- (PXSimpleIndexPath)_itemIndexPathClosestLeadingLocation:(SEL)location
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE2(self->section) == 1)
  {
    selfCopy = self;
    delegate = [(PXSimpleIndexPath *)self delegate];
    v10 = delegate;
    if (delegate)
    {
      [delegate swipeSelectionManager:selfCopy itemIndexPathClosestLeadingLocation:{x, y}];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *&retstr->dataSourceIdentifier = v11;
    *&retstr->item = v12;
  }

  return self;
}

- (PXSimpleIndexPath)_itemIndexPathAtLocation:(SEL)location
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE1(self->section) == 1)
  {
    selfCopy = self;
    delegate = [(PXSimpleIndexPath *)self delegate];
    v10 = delegate;
    if (delegate)
    {
      [delegate swipeSelectionManager:selfCopy itemIndexPathAtLocation:{x, y}];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *&retstr->dataSourceIdentifier = v11;
    *&retstr->item = v12;
  }

  return self;
}

- (id)targetForKeyCommands
{
  if (self->_multiSelectInteraction)
  {
    self = self->_multiSelectInteraction;
  }

  return self;
}

- (NSArray)gesturesForFailureRequirements
{
  gesturesForFailureRequirements = [(UIMultiSelectInteraction *)self->_multiSelectInteraction gesturesForFailureRequirements];
  v3 = gesturesForFailureRequirements;
  if (gesturesForFailureRequirements)
  {
    v4 = gesturesForFailureRequirements;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToItemIndexPathAtLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToItemIndexPathClosestLeadingLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToItemIndexPathClosestAboveLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldSelectItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldBeginSelectionAtLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldAutomaticallyTransitionToMultiSelectModeAtPoint = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToAutomaticallyTransitionToMultiSelectMode = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToIndexPathSetFromIndexPathToIndexPath = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToExtendSelectionInDirection = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidAutoScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (void)removeFromView
{
  view = [(UIMultiSelectInteraction *)self->_multiSelectInteraction view];
  [view removeInteraction:self->_multiSelectInteraction];

  multiSelectInteraction = self->_multiSelectInteraction;
  self->_multiSelectInteraction = 0;

  [(PXSwipeSelectionManager *)self _setPausingChangesToken:0];
}

- (void)dealloc
{
  [(PXSwipeSelectionManager *)self _setPausingChangesToken:0];
  v3.receiver = self;
  v3.super_class = PXSwipeSelectionManager;
  [(PXSwipeSelectionManager *)&v3 dealloc];
}

- (PXSwipeSelectionManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwipeSelectionManager.m" lineNumber:91 description:@"Not supported"];

  abort();
}

- (PXSwipeSelectionManager)initWithSelectionManager:(id)manager scrollView:(id)view
{
  managerCopy = manager;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = PXSwipeSelectionManager;
  v9 = [(PXSwipeSelectionManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectionManager, manager);
    objc_storeStrong(&v10->_scrollView, view);
    v11 = objc_alloc_init(MEMORY[0x277D75748]);
    multiSelectInteraction = v10->_multiSelectInteraction;
    v10->_multiSelectInteraction = v11;

    [(UIMultiSelectInteraction *)v10->_multiSelectInteraction setDelegate:v10];
    [(UIMultiSelectInteraction *)v10->_multiSelectInteraction setSingleTouchPanGestureHysteresis:5.0];
    [viewCopy addInteraction:v10->_multiSelectInteraction];
    v13 = [objc_alloc(MEMORY[0x277D3CE18]) initWithTargetScrollView:viewCopy];
    autoScroller = v10->__autoScroller;
    v10->__autoScroller = v13;

    [(PXUIAutoScroller *)v10->__autoScroller setDelegate:v10];
    v10->__currentDataSourceIdentifier = *MEMORY[0x277D3CF78];
    dataSourceManager = [managerCopy dataSourceManager];
    [dataSourceManager registerChangeObserver:v10 context:PXSwipeSelectionManagerDataSourceObserverContext];
  }

  return v10;
}

@end