@interface PXSwipeSelectionManager
- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)a3;
- (BOOL)isInMultiSelectMode;
- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (NSArray)gesturesForFailureRequirements;
- (NSArray)keyCommandsForSelectionExtension;
- (PXSimpleIndexPath)_currentIndexPath;
- (PXSimpleIndexPath)_itemIndexPathAtLocation:(SEL)a3;
- (PXSimpleIndexPath)_itemIndexPathClosestAboveLocation:(SEL)a3;
- (PXSimpleIndexPath)_itemIndexPathClosestLeadingLocation:(SEL)a3;
- (PXSimpleIndexPath)_startingIndexPath;
- (PXSwipeSelectionManager)init;
- (PXSwipeSelectionManager)initWithSelectionManager:(id)a3 scrollView:(id)a4;
- (PXSwipeSelectionManagerDelegate)delegate;
- (id)targetForKeyCommands;
- (void)_beginSelectionFromIndexPath:(PXSimpleIndexPath *)a3;
- (void)_endSelection;
- (void)_setCurrentIndexPath:(PXSimpleIndexPath *)a3;
- (void)_setPausingChangesToken:(id)a3;
- (void)_setStartingIndexPath:(PXSimpleIndexPath *)a3;
- (void)_updateSelectedIndexPaths;
- (void)_updateSelectionWithHitIndexPath:(PXSimpleIndexPath *)a3 leadingClosestIndexPath:(PXSimpleIndexPath *)a4 aboveClosestIndexPath:(PXSimpleIndexPath *)a5;
- (void)_updateWithDataSource:(id)a3 changeHistory:(id)a4;
- (void)autoScroller:(id)a3 didAutoscrollWithTimestamp:(double)a4;
- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3;
- (void)dealloc;
- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4;
- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)removeFromView;
- (void)setDelegate:(id)a3;
- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4;
@end

@implementation PXSwipeSelectionManager

- (NSArray)keyCommandsForSelectionExtension
{
  v3 = objc_opt_respondsToSelector();
  v4 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = [(UIMultiSelectInteraction *)self->_multiSelectInteraction keyCommandsForSelectionExtension];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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

- (void)_setStartingIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->__startingIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
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

- (void)multiSelectInteraction:(id)a3 extendSelectionInDirection:(unint64_t)a4
{
  if (self->_delegateFlags.respondsToExtendSelectionInDirection)
  {
    if (a4 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_21AC7D678[a4];
    }

    v7 = [(PXSwipeSelectionManager *)self delegate];
    [v7 swipeSelectionManager:self extendSelectionInDirection:v6];
  }
}

- (void)didCancelMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  if ([(PXSwipeSelectionManager *)self _isSelecting:a3])
  {

    [(PXSwipeSelectionManager *)self _endSelection];
  }
}

- (void)didEndMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  if ([(PXSwipeSelectionManager *)self _isSelecting:a3])
  {

    [(PXSwipeSelectionManager *)self _endSelection];
  }
}

- (void)multiSelectInteraction:(id)a3 toggleSelectionStateUpToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v18 = 0u;
  v19 = 0u;
  [(PXSwipeSelectionManager *)self _itemIndexPathAtLocation:a3, a4.x];
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
  v9 = [(PXSwipeSelectionManager *)self _autoScroller];
  v10 = [(PXSwipeSelectionManager *)self scrollView];
  [v9 updateWithUserInteractionLocation:v10 inCoordinateSpace:{x, y}];
}

- (void)willBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
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

- (BOOL)shouldBeginMultiSelectInteraction:(id)a3 atPoint:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v10 = [(PXSwipeSelectionManager *)self isInMultiSelectMode];
  if (v10)
  {
    v11 = [(PXSwipeSelectionManager *)self _shouldBeginMultiSelectAtLocation:v8, v7];
    v12 = fabs(x) > fabs(y);
    LOBYTE(v10) = v11 && v12;
  }

  return v10;
}

- (void)automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:(BOOL)a3
{
  if (self->_delegateFlags.respondsToAutomaticallyTransitionToMultiSelectMode)
  {
    v5 = [(PXSwipeSelectionManager *)self delegate];
    [v5 swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:self];
  }
}

- (BOOL)isInMultiSelectMode
{
  v2 = self;
  v3 = [(PXSwipeSelectionManager *)self delegate];
  LOBYTE(v2) = [v3 swipeSelectionManagerIsInMultiSelectMode:v2];

  return v2;
}

- (BOOL)_shouldBeginMultiSelectAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_delegateFlags.respondsToShouldBeginSelectionAtLocation)
  {
    v6 = [(PXSwipeSelectionManager *)self delegate];
    v7 = [v6 swipeSelectionManager:self shouldBeginSelectionAtLocation:{x, y}];

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

  v10 = [(PXSwipeSelectionManager *)self delegate];
  v12 = v8;
  v13 = v15;
  v14 = v16;
  v9 = [v10 swipeSelectionManager:self shouldSelectItemAtIndexPath:&v12];

  return v9;
}

- (void)autoScroller:(id)a3 didAutoscrollWithTimestamp:(double)a4
{
  if (self->_delegateFlags.respondsToDidAutoScroll)
  {
    v6 = [(PXSwipeSelectionManager *)self delegate:a3];
    [v6 swipeSelectionManagerDidAutoScroll:self];
  }
}

- (void)_updateWithDataSource:(id)a3 changeHistory:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PXSwipeSelectionManager *)self _currentDataSourceIdentifier];
  if (v8 != *MEMORY[0x277D3CF78])
  {
    v9 = v8;
    v10 = [v6 identifier];
    v11 = [v7 changeDetailsFromDataSourceIdentifier:v9 toDataSourceIdentifier:v10];
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
    v12 = [(PXSwipeSelectionManager *)self _selectedIndexPathsBeforeSwipe];
    v13 = [MEMORY[0x277D3CDD0] indexPathSetAfterApplyingChanges:v11 toIndexPathSet:v12 hasIncrementalChanges:0];
    [(PXSwipeSelectionManager *)self _setSelectedIndexPathsBeforeSwipe:v13];
    [(PXSwipeSelectionManager *)self _setCurrentDataSourceIdentifier:v10];
    if (v10 != v27)
    {
      [(PXSwipeSelectionManager *)self _endSelection];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [(PXSwipeSelectionManager *)self multiSelectInteraction];
      v15 = [v14 gesturesForFailureRequirements];

      v16 = [v15 countByEnumeratingWithState:&v21 objects:v31 count:16];
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
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v21 + 1) + 8 * i);
            [v20 setEnabled:0];
            [v20 setEnabled:1];
          }

          v17 = [v15 countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v17);
      }
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if ((v6 & 1) != 0 && PXSwipeSelectionManagerDataSourceObserverContext == a5)
  {
    v11 = v8;
    v9 = [v8 dataSource];
    v10 = [v11 changeHistory];
    [(PXSwipeSelectionManager *)self _updateWithDataSource:v9 changeHistory:v10];

    v8 = v11;
  }
}

- (void)_updateSelectedIndexPaths
{
  if (self->_needsUpdateFlags.selectedIndexPaths)
  {
    v31 = v2;
    v32 = v3;
    self->_needsUpdateFlags.selectedIndexPaths = 0;
    v5 = [(PXSwipeSelectionManager *)self _selectedIndexPathsBeforeSwipe];
    if (!v5)
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
    v6 = [(PXSwipeSelectionManager *)self selectionManager];
    v7 = [v6 dataSourceManager];
    v8 = [v7 dataSource];

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
      v10 = [MEMORY[0x277D3CD58] indexPathSet];
    }

    else
    {
      if (self->_delegateFlags.respondsToIndexPathSetFromIndexPathToIndexPath)
      {
        v11 = [(PXSwipeSelectionManager *)self delegate];
        v26 = v30;
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v12 = [v11 swipeSelectionManager:self indexPathSetFromIndexPath:&v25 toIndexPath:&v23];

LABEL_13:
        if (self->_delegateFlags.respondsToShouldSelectItemAtIndexPath)
        {
          v13 = [MEMORY[0x277D3CD78] indexPathSet];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __52__PXSwipeSelectionManager__updateSelectedIndexPaths__block_invoke;
          v21[3] = &unk_2782993B8;
          v21[4] = self;
          v22 = v13;
          v14 = v13;
          [v12 enumerateAllIndexPathsUsingBlock:v21];
          v15 = [v12 mutableCopy];
          [v15 minusIndexPathSet:v14];

          v12 = v15;
        }

        v16 = [v5 mutableCopy];
        if ([(PXSwipeSelectionManager *)self state]== 1)
        {
          [v16 unionIndexPathSet:v12];
        }

        else
        {
          [v16 minusIndexPathSet:v12];
        }

        v17 = [(PXSwipeSelectionManager *)self selectionManager];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __52__PXSwipeSelectionManager__updateSelectedIndexPaths__block_invoke_2;
        v19[3] = &unk_278297820;
        v20 = v16;
        v18 = v16;
        [v17 performChanges:v19];

        goto LABEL_19;
      }

      v26 = v30;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v10 = [v8 indexPathSetFromIndexPath:&v25 toIndexPath:&v23];
    }

    v12 = v10;
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

- (void)_setCurrentIndexPath:(PXSimpleIndexPath *)a3
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->__currentIndexPath.dataSourceIdentifier, *&a3->dataSourceIdentifier), vceqq_s64(*&self->__currentIndexPath.item, *&a3->item)))) & 1) == 0)
  {
    v4 = *&a3->item;
    *&self->__currentIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
    *&self->__currentIndexPath.item = v4;
    [(PXSwipeSelectionManager *)self _invalidateSelectedIndexPaths];

    [(PXSwipeSelectionManager *)self _updateSelectedIndexPaths];
  }
}

- (void)_setPausingChangesToken:(id)a3
{
  v5 = a3;
  p_pausingChangesToken = &self->__pausingChangesToken;
  pausingChangesToken = self->__pausingChangesToken;
  if (pausingChangesToken != v5)
  {
    v8 = pausingChangesToken;
    if (v8)
    {
      v9 = [(PXSwipeSelectionManager *)self selectionManager];
      v10 = [v9 dataSourceManager];

      v12 = v8;
      v11 = v10;
      px_dispatch_on_main_queue();
    }

    objc_storeStrong(p_pausingChangesToken, a3);
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
  v3 = [(PXSwipeSelectionManager *)self _autoScroller];
  [v3 stop];

  [(PXSwipeSelectionManager *)self _setPausingChangesToken:0];
}

- (void)_updateSelectionWithHitIndexPath:(PXSimpleIndexPath *)a3 leadingClosestIndexPath:(PXSimpleIndexPath *)a4 aboveClosestIndexPath:(PXSimpleIndexPath *)a5
{
  [(PXSwipeSelectionManager *)self _startingIndexPath];
  v10 = *MEMORY[0x277D3CF78];
  if (v21 == *MEMORY[0x277D3CF78])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXSwipeSelectionManager.m" lineNumber:202 description:@"Starting indexPath should be set"];
  }

  dataSourceIdentifier = a3->dataSourceIdentifier;
  v12 = a4->dataSourceIdentifier;
  v13 = a5->dataSourceIdentifier;
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
      v17 = a5;
    }

    else
    {
      v17 = a4;
    }

    if (dataSourceIdentifier != v10)
    {
      v17 = a3;
    }

    v18 = *&v17->item;
    v21 = *&v17->dataSourceIdentifier;
    v22 = v18;
  }

  v20[0] = v21;
  v20[1] = v22;
  [(PXSwipeSelectionManager *)self _setCurrentIndexPath:v20];
}

- (void)_beginSelectionFromIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [(PXSwipeSelectionManager *)self selectionManager];
  v6 = [v5 dataSourceManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__PXSwipeSelectionManager__beginSelectionFromIndexPath___block_invoke;
  v18[3] = &unk_2782977D0;
  v18[4] = self;
  v18[5] = 0x404E000000000000;
  [v6 performChanges:v18];

  v7 = [(PXSwipeSelectionManager *)self selectionManager];
  v8 = [v7 selectionSnapshot];
  v9 = [v8 selectedIndexPaths];

  [(PXSwipeSelectionManager *)self _setSelectedIndexPathsBeforeSwipe:v9];
  v10 = *&a3->item;
  v16 = *&a3->dataSourceIdentifier;
  v17 = v10;
  [(PXSwipeSelectionManager *)self _setStartingIndexPath:&v16];
  v11 = [(PXSwipeSelectionManager *)self selectionManager];
  v12 = [v11 selectionSnapshot];
  v13 = [v12 dataSource];
  -[PXSwipeSelectionManager _setCurrentDataSourceIdentifier:](self, "_setCurrentDataSourceIdentifier:", [v13 identifier]);

  v14 = *&a3->item;
  v16 = *&a3->dataSourceIdentifier;
  v17 = v14;
  if ([v9 containsIndexPath:&v16])
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

- (PXSimpleIndexPath)_itemIndexPathClosestAboveLocation:(SEL)a3
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE3(self->section) == 1)
  {
    v8 = self;
    v9 = [(PXSimpleIndexPath *)self delegate];
    v10 = v9;
    if (v9)
    {
      [v9 swipeSelectionManager:v8 itemIndexPathClosestAboveLocation:{x, y}];
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

- (PXSimpleIndexPath)_itemIndexPathClosestLeadingLocation:(SEL)a3
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE2(self->section) == 1)
  {
    v8 = self;
    v9 = [(PXSimpleIndexPath *)self delegate];
    v10 = v9;
    if (v9)
    {
      [v9 swipeSelectionManager:v8 itemIndexPathClosestLeadingLocation:{x, y}];
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

- (PXSimpleIndexPath)_itemIndexPathAtLocation:(SEL)a3
{
  y = a4.y;
  x = a4.x;
  v7 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v7;
  if (BYTE1(self->section) == 1)
  {
    v8 = self;
    v9 = [(PXSimpleIndexPath *)self delegate];
    v10 = v9;
    if (v9)
    {
      [v9 swipeSelectionManager:v8 itemIndexPathAtLocation:{x, y}];
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
  v2 = [(UIMultiSelectInteraction *)self->_multiSelectInteraction gesturesForFailureRequirements];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(UIMultiSelectInteraction *)self->_multiSelectInteraction view];
  [v3 removeInteraction:self->_multiSelectInteraction];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSwipeSelectionManager.m" lineNumber:91 description:@"Not supported"];

  abort();
}

- (PXSwipeSelectionManager)initWithSelectionManager:(id)a3 scrollView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PXSwipeSelectionManager;
  v9 = [(PXSwipeSelectionManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selectionManager, a3);
    objc_storeStrong(&v10->_scrollView, a4);
    v11 = objc_alloc_init(MEMORY[0x277D75748]);
    multiSelectInteraction = v10->_multiSelectInteraction;
    v10->_multiSelectInteraction = v11;

    [(UIMultiSelectInteraction *)v10->_multiSelectInteraction setDelegate:v10];
    [(UIMultiSelectInteraction *)v10->_multiSelectInteraction setSingleTouchPanGestureHysteresis:5.0];
    [v8 addInteraction:v10->_multiSelectInteraction];
    v13 = [objc_alloc(MEMORY[0x277D3CE18]) initWithTargetScrollView:v8];
    autoScroller = v10->__autoScroller;
    v10->__autoScroller = v13;

    [(PXUIAutoScroller *)v10->__autoScroller setDelegate:v10];
    v10->__currentDataSourceIdentifier = *MEMORY[0x277D3CF78];
    v15 = [v7 dataSourceManager];
    [v15 registerChangeObserver:v10 context:PXSwipeSelectionManagerDataSourceObserverContext];
  }

  return v10;
}

@end