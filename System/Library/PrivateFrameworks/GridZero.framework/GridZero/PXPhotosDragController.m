@interface PXPhotosDragController
- (BOOL)_addDraggedAssetReferences:(id)a3 toLocalSession:(id)a4;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (PXPhotosDragController)init;
- (PXPhotosDragController)initWithContentView:(id)a3 selectionManager:(id)a4 assetCollectionActionManager:(id)a5 delegate:(id)a6;
- (PXPhotosDragControllerDelegate)delegate;
- (UIView)contentView;
- (UIViewController)viewControllerForPresentation;
- (id)_actionManagerForDropSession:(id)a3;
- (id)_assetReferenceForDragItem:(id)a3;
- (id)_createDragItemForAssetReference:(id)a3;
- (id)_createLocalSession;
- (id)_draggableAssetReferenceAtLocation:(CGPoint)a3;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)scrollView;
- (id)undoManagerForActionPerformer:(id)a3;
- (unint64_t)_supportedDropOperationForSession:(id)a3;
- (void)_localSessionForDragSession:(id)a3 changeBlock:(id)a4;
- (void)_localSessionForDropSession:(id)a3 changeBlock:(id)a4;
- (void)_presentConfidentialityWarning;
- (void)_pruneLocalSessionIfFinished:(id)a3;
- (void)_removeDraggedAssetReferece:(id)a3 fromLocalSession:(id)a4;
- (void)_setupWithContentView:(id)a3;
- (void)_updateDraggedAssetReferences;
- (void)_updateDropTarget;
- (void)_updateExcludedAssets;
- (void)_updateIsDragSessionActive;
- (void)_updateTrackedAssetReferences;
- (void)dealloc;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)localDragSession:(id)a3 didChangeProperty:(SEL)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)removeFromView;
- (void)setCanDragIn:(BOOL)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDropTargetAssetReference:(id)a3;
- (void)setExcludedAssets:(id)a3;
- (void)setIsDragSessionActive:(BOOL)a3;
- (void)setReorderFeedbackEnabled:(BOOL)a3;
@end

@implementation PXPhotosDragController

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (PXPhotosDragControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)localDragSession:(id)a3 didChangeProperty:(SEL)a4
{
  if (![(PXPhotosDragController *)self isUpdatingExcludedAssets])
  {
    if (sel_draggedAssetReferences == a4)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
    }

    if (sel_dropTargetAssetReference == a4 || sel_hitAssetReference == a4)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDropTarget];
    }

    if (sel_isDragSessionActive == a4)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateIsDragSessionActive];
    }

    if (sel_draggedAssetReferences == a4 || sel_dropTargetAssetReference == a4 || sel_dropActionPerformer == a4 || sel_excludedAssets == a4 || sel_isDropActiveInsideView == a4 || sel_dropOperation == a4)
    {
      updater = self->_updater;

      [(PXUpdater *)updater setNeedsUpdateOf:sel__updateExcludedAssets];
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (SelectionManagerObserverContext != a5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:941 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    v11 = v9;
    [(PXPhotosDragController *)self _updateTrackedAssetReferences];
    v9 = v11;
  }
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = [(PXPhotosDragController *)self delegate];
  v5 = [v4 dragControllerUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(PXPhotosDragController *)self viewControllerForPresentation];
  [v7 dismissViewControllerAnimated:1 completion:v6];

  return 1;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosDragController *)self viewControllerForPresentation];
  [v6 presentViewController:v5 animated:1 completion:0];

  return 1;
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  [(PXPhotosDragController *)self _localSessionForDropSession:a4 changeBlock:&__block_literal_global_87];
  v5 = [(PXPhotosDragController *)self localDragSessions];
  v6 = [v5 count];

  if (!v6)
  {

    [(PXPhotosDragController *)self setReorderFeedbackEnabled:0];
  }
}

void __56__PXPhotosDragController_dropInteraction_sessionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDropActionPerformer:0];
  [v2 setDropSession:0];
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__PXPhotosDragController_dropInteraction_concludeDrop___block_invoke;
  v4[3] = &unk_2782980F8;
  v4[4] = self;
  [(PXPhotosDragController *)self _localSessionForDropSession:a4 changeBlock:v4];
}

void __55__PXPhotosDragController_dropInteraction_concludeDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDropActionPerformer:0];
  v4 = [v3 dropOperation];

  if (v4 == 3 && [*(a1 + 32) reorderFeedbackEnabled])
  {
    v5 = [*(a1 + 32) reorderFeedbackGenerator];
    [v5 draggedObjectLanded];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_21ABF3000, v12, OS_LOG_TYPE_DEFAULT, "dropInteraction: %@ previewForDroppingItem: %@", buf, 0x16u);
  }

  v13 = [(PXPhotosDragController *)self _assetReferenceForDragItem:v10];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [(PXPhotosDragController *)self selectionManager];
  v15 = [v14 selectionSnapshot];
  v16 = [v15 dataSource];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v16 px_descriptionForAssertionMessage];
      [v27 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:877 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v29, v30}];
    }
  }

  v17 = [v16 assetReferenceForAssetReference:v13];
  v18 = [(PXPhotosDragController *)self delegate];
  v19 = [v18 dragController:self regionOfInterestForAssetReference:v13 image:0];

  v20 = 0;
  if (v19 && v17)
  {
    v21 = [(PXPhotosDragController *)self delegate];
    v22 = [v21 dragController:self scrollViewForAssetReference:v17];

    [v19 rectInCoordinateSpace:v22];
    PXRectGetCenter();
    v20 = [objc_alloc(MEMORY[0x277D75488]) initWithContainer:v22 center:{v23, v24}];
  }

  if (v20)
  {
    v25 = [v11 retargetedPreviewWithTarget:v20];
  }

  else
  {
LABEL_12:
    v25 = 0;
  }

  return v25;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(PXPhotosDragController *)self _supportedDropOperationForSession:v8];
  v10 = MEMORY[0x277D3CEF0];
  if (v9 != 3)
  {
    v10 = MEMORY[0x277D3CED0];
  }

  v11 = *v10;
  v12 = [(PXPhotosDragController *)self _actionManagerForDropSession:v8];
  v13 = [v12 actionPerformerForActionType:v11];
  v14 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_21ABF3000, v14, OS_LOG_TYPE_DEFAULT, "dropInteraction:%@ performDrop:%@ actionPerformer:%@", buf, 0x20u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke;
  v24[3] = &unk_2782980F8;
  v25 = v13;
  v15 = v13;
  [(PXPhotosDragController *)self _localSessionForDropSession:v8 changeBlock:v24];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_2;
  v18[3] = &unk_2782981C0;
  v19 = v7;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v23 = a2;
  v16 = v8;
  v17 = v7;
  [v15 performActionWithCompletionHandler:v18];
}

void __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138413058;
    v40 = v7;
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v10;
    v45 = 2112;
    v46 = v5;
    _os_log_impl(&dword_21ABF3000, v6, OS_LOG_TYPE_DEFAULT, "dropInteraction:%@ performDrop:%@ success:%@ error:%@", buf, 0x2Au);
  }

  if (*(a1 + 56) == 3)
  {
    v11 = [*(a1 + 48) selectionManager];
    v12 = [v11 dataSourceManager];

    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        v23 = *(a1 + 64);
        v24 = *(a1 + 48);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v12 px_descriptionForAssertionMessage];
        [v22 handleFailureInMethod:v23 object:v24 file:@"PXPhotosDragController.m" lineNumber:835 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.dataSourceManager", v26, v27}];
      }
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_77;
    v37[3] = &unk_278298170;
    v37[4] = *(a1 + 48);
    v13 = v12;
    v38 = v13;
    [v13 performChanges:v37];
    v14 = [*(a1 + 48) draggedAssetReferences];
    v15 = [v14 allObjects];

    v16 = [*(a1 + 48) delegate];
    v17 = [v16 dragController:*(a1 + 48) shouldSelectRearrangedAssetReferences:v15];

    if (v17)
    {
      v18 = [*(a1 + 48) selectionManager];
      v19 = [v18 selectionSnapshot];
      v20 = [v19 dataSource];

      if (v20)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = [MEMORY[0x277CCA890] currentHandler];
          v33 = *(a1 + 64);
          v29 = *(a1 + 48);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v20 px_descriptionForAssertionMessage];
          [v28 handleFailureInMethod:v33 object:v29 file:@"PXPhotosDragController.m" lineNumber:848 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"selectionManager.selectionSnapshot.dataSource", v31, v32}];
        }
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_2_81;
      v34[3] = &unk_278298198;
      v35 = v15;
      v36 = v20;
      v21 = v20;
      [v18 performChanges:v34];
    }
  }

  [*(a1 + 48) _localSessionForDropSession:*(a1 + 40) changeBlock:&__block_literal_global_84];
}

void __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_77(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) hitAssetReference];
  v4 = [v3 assetCollection];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(a1 + 40) dataSource];
    v5 = [v6 firstAssetCollection];

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  [v8 refreshResultsForAssetCollection:v5];

  v7 = v8;
LABEL_5:
}

void __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_2_81(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x277D3CF78];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v11 = *(a1 + 40);
        if (v11)
        {
          [v11 indexPathForAssetReference:v10];
          if (v15 != v8 && v16 != 0x7FFFFFFFFFFFFFFFLL && *(&v16 + 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14[0] = v15;
            v14[1] = v16;
            [v3 setSelectedState:1 forIndexPath:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

void __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setHitAssetReference:0];
  [v2 setDropTargetAssetReference:0];
  [v2 setIsDropActiveInsideView:0];
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v12 = a4;
  v5 = [(PXPhotosDragController *)self contentView];
  v6 = [v5 window];

  if (v6)
  {
    [v12 locationInView:v6];
    v7 = [v6 hitTest:0 withEvent:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXPhotosDragController *)self contentView];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [(PXPhotosDragController *)self contentView];
    v11 = [v7 isDescendantOfView:v10];

    if ((v11 & 1) == 0)
    {
      [(PXPhotosDragController *)self _localSessionForDropSession:v12 changeBlock:&__block_literal_global_76];
    }
  }
}

void __57__PXPhotosDragController_dropInteraction_sessionDidExit___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsDropActiveInsideView:0];
  [v2 setHitAssetReference:0];
  [v2 setDropTargetAssetReference:0];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosDragController *)self _supportedDropOperationForSession:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PXPhotosDragController_dropInteraction_sessionDidUpdate___block_invoke;
  v10[3] = &unk_278298148;
  v12 = self;
  v13 = v6;
  v11 = v5;
  v7 = v5;
  [(PXPhotosDragController *)self _localSessionForDropSession:v7 changeBlock:v10];
  v8 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:v6];

  return v8;
}

void __59__PXPhotosDragController_dropInteraction_sessionDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  [v20 setIsDropActiveInsideView:1];
  if (*(a1 + 48) == 3)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) contentView];
    [v3 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [*(a1 + 40) delegate];
    v10 = [v9 dragController:*(a1 + 40) dropTargetAssetReferenceForLocation:{v6, v8}];

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) scrollView];
    [v11 locationInView:v12];
    v14 = v13;
    v16 = v15;

    [v20 setScrollViewLocation:{v14, v16}];
    [v20 velocity];
    if (hypot(v17, v18) <= 100.0)
    {
      v10 = v10;
      [*(a1 + 40) setReorderFeedbackEnabled:1];
      v19 = v10;
    }

    else
    {
      v19 = [v20 dropTargetAssetReference];
    }
  }

  else
  {
    v10 = 0;
    v19 = 0;
  }

  [v20 setHitAssetReference:v10];
  [v20 setDropTargetAssetReference:v19];
  [v20 setDropOperation:*(a1 + 48)];
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_DEFAULT, "dropInteraction: %@ canHandleSession: %@", &v12, 0x16u);
  }

  if ([(PXPhotosDragController *)self canDragIn])
  {
    v9 = [(PXPhotosDragController *)self _actionManagerForDropSession:v7];
    v10 = [v9 canPerformActionType:*MEMORY[0x277D3CED0]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_supportedDropOperationForSession:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosDragController *)self selectionManager];
  v7 = [v6 selectionSnapshot];
  v8 = [v7 dataSource];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v8 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:733 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v19, v20}];
    }
  }

  v9 = [(PXPhotosDragController *)self _actionManagerForDropSession:v5];
  if (-[PXPhotosDragController isDragSessionActive](self, "isDragSessionActive") && [v5 allowsMoveOperation] && (objc_msgSend(v8, "isSorted") & 1) == 0 && objc_msgSend(v9, "canPerformActionType:", *MEMORY[0x277D3CEF0]) && (objc_msgSend(v5, "items"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v12 = objc_msgSend(v8, "totalNumberOfItems"), -[PXPhotosDragController excludedAssets](self, "excludedAssets"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count") + v12, v13, v10, v11 < v14))
  {
    v15 = 3;
  }

  else if (-[PXPhotosDragController isDragSessionActive](self, "isDragSessionActive") || ([v9 canPerformActionType:*MEMORY[0x277D3CED0]] & 1) == 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  return v15;
}

- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v39 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v9 = a4;
  v10 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v41.x = x;
    v41.y = y;
    v11 = NSStringFromCGPoint(v41);
    *buf = 138412802;
    v34 = v27;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_21ABF3000, v10, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ sessionForAddingItems: %@ withTouchAtPoint: %@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(PXPhotosDragController *)self localDragSessions];
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v13)
  {

LABEL_16:
    if ([v9 count] == 1)
    {
      v15 = [v9 lastObject];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_19;
  }

  v14 = v13;
  v26 = v9;
  v15 = 0;
  v16 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      v19 = [v18 dragSession];
      if (v19)
      {
        v20 = v19;
        v21 = [v18 identifier];
        v22 = [v15 localContext];
        v23 = [v22 identifier];

        if (v21 > v23)
        {
          v24 = [v18 dragSession];

          v15 = v24;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v14);

  v9 = v26;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_19:

  return v15;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__PXPhotosDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v9[3] = &unk_278298120;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [a4 addCompletion:v9];
}

uint64_t __78__PXPhotosDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = *(result + 40);
      v5 = *(result + 32);

      return [v5 _localSessionForDragSession:v4 changeBlock:&__block_literal_global_71];
    }
  }

  else
  {
    v8[5] = v2;
    v8[6] = v3;
    v7 = *(result + 32);
    v6 = *(result + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__PXPhotosDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_3;
    v8[3] = &unk_2782980F8;
    v8[4] = v7;
    return [v7 _localSessionForDragSession:v6 changeBlock:v8];
  }

  return result;
}

void __78__PXPhotosDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 dropOperation] == 3 && objc_msgSend(*(a1 + 32), "reorderFeedbackEnabled"))
  {
    v3 = [*(a1 + 32) reorderFeedbackGenerator];
    [v3 draggedObjectLifted];
  }
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPhotosDragController *)self _assetReferenceForDragItem:v9];
  if (v11)
  {
    v24 = v8;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [(PXPhotosDragController *)self localDragSessions];
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v13)
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = v13;
    v22 = v10;
    v23 = v9;
    v15 = 0;
    v16 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 draggedAssetReferences];
        v20 = [v19 containsObject:v11];

        if (v20)
        {
          v21 = v18;

          v15 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);

    v9 = v23;
    v8 = v24;
    v10 = v22;
    if (v15)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __77__PXPhotosDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
      v25[3] = &unk_2782980D0;
      v25[4] = self;
      v26 = v11;
      v27 = v15;
      v12 = v15;
      [v22 addCompletion:v25];

      goto LABEL_13;
    }
  }

LABEL_14:
}

uint64_t __77__PXPhotosDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _removeDraggedAssetReferece:*(result + 40) fromLocalSession:*(result + 48)];
  }

  return result;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_21ABF3000, v10, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ session: %@ didEndWithOperation: %lu", &v11, 0x20u);
  }

  [(PXPhotosDragController *)self _localSessionForDragSession:v9 changeBlock:&__block_literal_global_4558];
}

void __70__PXPhotosDragController_dragInteraction_session_didEndWithOperation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDragSession:0];
  [v2 setIsDragSessionActive:0];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PXPhotosDragController_dragInteraction_sessionWillBegin___block_invoke;
  v10[3] = &unk_278298088;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(PXPhotosDragController *)self _localSessionForDragSession:v8 changeBlock:v10];
}

void __59__PXPhotosDragController_dragInteraction_sessionWillBegin___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v4 = a1[4], [v3 draggedAssetReferences], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "px_confidentialWarningRequiredForAssetReferences:", v5), v5, v4))
  {
    v6 = dispatch_time(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PXPhotosDragController_dragInteraction_sessionWillBegin___block_invoke_2;
    block[3] = &unk_278299118;
    block[4] = a1[4];
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = PXGridZeroDNDGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_21ABF3000, v7, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ sessionWillBegin: %@", buf, 0x16u);
    }

    [v3 setIsDragSessionActive:1];
  }
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_21ABF3000, v11, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ previewForCancellingItem: %@", buf, 0x16u);
  }

  v12 = [(PXPhotosDragController *)self viewControllerForPresentation];
  v13 = [v12 px_isVisible];

  if (v13)
  {
    v14 = [(PXPhotosDragController *)self _assetReferenceForDragItem:v9];
    v15 = [(PXPhotosDragController *)self delegate];
    v16 = [v15 dragController:self regionOfInterestForAssetReference:v14 image:0];

    if (v16)
    {
      v17 = [(PXPhotosDragController *)self delegate];
      v18 = [v17 dragController:self scrollViewForAssetReference:v14];

      [v16 rectInCoordinateSpace:v18];
      PXRectGetCenter();
      v20 = v19;
      v22 = v21;
      v23 = [(PXPhotosDragController *)self delegate];
      v24 = [v23 dragController:self shouldResizeCancelledPreviewForAssetReference:v14];

      v32 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v24)
      {
        [v10 size];
        [v10 size];
        PXAffineTransformMakeFromRects();
      }

      else
      {
        v26 = *(MEMORY[0x277CBF2C0] + 16);
        *buf = *MEMORY[0x277CBF2C0];
        *&buf[16] = v26;
        v32 = *(MEMORY[0x277CBF2C0] + 32);
      }

      v27 = objc_alloc(MEMORY[0x277D75488]);
      v30[0] = *buf;
      v30[1] = *&buf[16];
      v30[2] = v32;
      v28 = [v27 initWithContainer:v18 center:v30 transform:{v20, v22}];
      v25 = [v10 retargetedPreviewWithTarget:v28];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_21ABF3000, v11, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ previewForLiftingItem: %@ session: %@", buf, 0x20u);
  }

  v12 = [(PXPhotosDragController *)self viewControllerForPresentation];
  v13 = [v12 px_isVisible];

  if (v13)
  {
    v14 = [(PXPhotosDragController *)self _assetReferenceForDragItem:v9];
    v15 = [(PXPhotosDragController *)self delegate];
    v31 = 0;
    v16 = [v15 dragController:self regionOfInterestForAssetReference:v14 image:&v31];
    v17 = v31;

    v18 = 0;
    if (v16 && v17)
    {
      v19 = [v16 coordinateSpace];
      [v16 rectInCoordinateSpace:v19];
      v30 = PXPreviewImageViewForImage();

      v20 = [(PXPhotosDragController *)self delegate];
      v21 = [v20 dragController:self scrollViewForAssetReference:v14];

      [v16 rectInCoordinateSpace:v21];
      PXRectGetCenter();
      v23 = v22;
      v25 = v24;
      v26 = objc_alloc_init(MEMORY[0x277D75480]);
      v27 = [MEMORY[0x277D75348] clearColor];
      [v26 setBackgroundColor:v27];

      v28 = [objc_alloc(MEMORY[0x277D75488]) initWithContainer:v21 center:{v23, v25}];
      v18 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v30 parameters:v26 target:v28];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willAddItems:(id)a5 forInteraction:(id)a6
{
  v11 = a5;
  if (a6 == a3)
  {
    v12 = a4;
    v13 = [(PXPhotosDragController *)self selectionManager];
    v14 = [v13 dataSourceManager];

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = [MEMORY[0x277CCA890] currentHandler];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v14 px_descriptionForAssertionMessage];
        [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:576 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.dataSourceManager", v19, v20}];
      }
    }

    v15 = [v14 dataSource];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__PXPhotosDragController_dragInteraction_session_willAddItems_forInteraction___block_invoke;
    v21[3] = &unk_278298088;
    v22 = v11;
    v23 = self;
    v24 = v15;
    v16 = v15;
    [(PXPhotosDragController *)self _localSessionForDragSession:v12 changeBlock:v21];
  }
}

void __78__PXPhotosDragController_dragInteraction_session_willAddItems_forInteraction___block_invoke(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [a1[5] _assetReferenceForDragItem:{*(*(&v13 + 1) + 8 * v9), v13}];
        if (v10)
        {
          v11 = v10;
          v12 = [a1[6] assetReferenceForAssetReference:v10];

          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [a1[5] _addDraggedAssetReferences:v4 toLocalSession:v3];
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23.x = x;
    v23.y = y;
    v12 = NSStringFromCGPoint(v23);
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v18 = v12;
    _os_log_impl(&dword_21ABF3000, v11, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ itemsForAddingToSession: %@ withTouchAtPoint: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__4564;
  v19 = __Block_byref_object_dispose__4565;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__PXPhotosDragController_dragInteraction_itemsForAddingToSession_withTouchAtPoint___block_invoke;
  v16[3] = &unk_278298060;
  *&v16[6] = x;
  *&v16[7] = y;
  v16[4] = self;
  v16[5] = buf;
  [(PXPhotosDragController *)self _localSessionForDragSession:v10 changeBlock:v16];
  if (*(*&buf[8] + 40))
  {
    v13 = *(*&buf[8] + 40);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*&buf[8] + 40), v13);
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v14;
}

void __83__PXPhotosDragController_dragInteraction_itemsForAddingToSession_withTouchAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _draggableAssetReferenceAtLocation:{*(a1 + 48), *(a1 + 56)}];
  if (v4)
  {
    v5 = [v3 draggedAssetReferences];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 32) _createDragItemForAssetReference:v4];
      v8 = v7;
      if (v7)
      {
        v12[0] = v7;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ itemsForBeginningSession: %@", buf, 0x16u);
  }

  if (![(PXPhotosDragController *)self canDragOut])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:503 description:@"Trying to start a dragging session when Drag & Drop is not enabled."];
  }

  v10 = [(PXPhotosDragController *)self delegate];
  v11 = [v10 dragControllerAssetReferenceForBeginningSession:self];

  if (!v11)
  {
    v12 = [(PXPhotosDragController *)self contentView];
    [v8 locationInView:v12];
    v14 = v13;
    v16 = v15;

    v11 = [(PXPhotosDragController *)self _draggableAssetReferenceAtLocation:v14, v16];
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__4564;
  v31 = __Block_byref_object_dispose__4565;
  v32 = MEMORY[0x277CBEBF8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__PXPhotosDragController_dragInteraction_itemsForBeginningSession___block_invoke;
  v23[3] = &unk_278298038;
  v18 = v11;
  v24 = v18;
  v25 = self;
  v28 = a2;
  v19 = v17;
  v26 = v19;
  v27 = buf;
  [(PXPhotosDragController *)self _localSessionForDragSession:v8 changeBlock:v23];
  v20 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v20;
}

void __67__PXPhotosDragController_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 draggedAssetReferences];
    v6 = [v5 containsObject:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [*(a1 + 40) selectionManager];
      v9 = [v8 selectionSnapshot];

      v10 = [v9 dataSource];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          v16 = *(a1 + 64);
          v17 = *(a1 + 40);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v10 px_descriptionForAssertionMessage];
          [v15 handleFailureInMethod:v16 object:v17 file:@"PXPhotosDragController.m" lineNumber:522 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v19, v20}];
        }
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        [v11 indexPath];
      }

      else
      {
        memset(v26, 0, sizeof(v26));
      }

      if ([v9 isIndexPathSelected:v26])
      {
        v12 = [v9 selectedIndexPaths];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __67__PXPhotosDragController_dragInteraction_itemsForBeginningSession___block_invoke_2;
        v21[3] = &unk_278298010;
        v13 = v10;
        v14 = *(a1 + 40);
        v22 = v13;
        v23 = v14;
        v24 = v7;
        v25 = *(a1 + 48);
        [v12 enumerateItemIndexPathsUsingBlock:v21];
      }

      else
      {
        v12 = [*(a1 + 40) _createDragItemForAssetReference:*(a1 + 32)];
        if (v12)
        {
          [v7 addObject:v12];
          [*(a1 + 48) addObject:*(a1 + 32)];
        }
      }

      if ([*(a1 + 48) count] && objc_msgSend(*(a1 + 40), "_addDraggedAssetReferences:toLocalSession:", *(a1 + 48), v4))
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
      }
    }
  }
}

void __67__PXPhotosDragController_dragInteraction_itemsForBeginningSession___block_invoke_2(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = [v3 assetReferenceAtItemIndexPath:v7];
  v6 = [*(a1 + 40) _createDragItemForAssetReference:v5];
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
    [*(a1 + 56) addObject:v5];
  }
}

- (id)_draggableAssetReferenceAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXPhotosDragController *)self delegate];
  v7 = [v6 dragController:self draggableAssetReferenceAtLocation:{x, y}];

  return v7;
}

- (void)_presentConfidentialityWarning
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(PXPhotosDragController *)self px_confidentialityAlertWithActions:v4];

  v6 = [(PXPhotosDragController *)self viewControllerForPresentation];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (void)_removeDraggedAssetReferece:(id)a3 fromLocalSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 draggedAssetReferences];
  v10 = [v8 mutableCopy];

  [v10 removeObject:v7];
  v9 = [MEMORY[0x277CBEB98] setWithSet:v10];
  [v6 setDraggedAssetReferences:v9];

  [(PXPhotosDragController *)self _updateDraggedAssetReferences];
}

- (BOOL)_addDraggedAssetReferences:(id)a3 toLocalSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 draggedAssetReferences];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 setByAddingObjectsFromSet:v6];
  }

  else
  {
    v10 = v6;
  }

  [v7 setDraggedAssetReferences:v10];
  [(PXPhotosDragController *)self _updateDraggedAssetReferences];

  return 1;
}

- (id)_createDragItemForAssetReference:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 asset];
    v6 = [(PXPhotosDragController *)self px_dragAndDropItemProviderForDisplayAsset:v5];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [(PXPhotosDragController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXPhotosDragController *)self delegate];
    v6 = [v9 dragController:self itemProviderForAssetReference:v4];

    if (v6)
    {
LABEL_5:
      v10 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v6];
      v11 = [objc_alloc(MEMORY[0x277D3CD28]) initWithAssetReference:v4];
      [v10 setLocalObject:v11];

      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)_assetReferenceForDragItem:(id)a3
{
  v3 = [a3 localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 assetReference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateTrackedAssetReferences
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(PXPhotosDragController *)self selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = [v5 dataSource];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v6 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:420 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v15, v16}];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(PXPhotosDragController *)self localDragSessions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * v11++) updateWithDataSource:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = [(PXPhotosDragController *)self updater];
  [v12 updateIfNeeded];
}

- (void)_updateExcludedAssets
{
  v3 = self;
  v68 = *MEMORY[0x277D85DE8];
  v40 = [(PXPhotosDragController *)self isUpdatingExcludedAssets];
  [(PXPhotosDragController *)v3 setIsUpdatingExcludedAssets:1];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(PXPhotosDragController *)v3 excludedAssets];
  v39 = [(PXPhotosDragController *)v3 selectionManager];
  v6 = [v39 dataSourceManager];
  v41 = v6;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v6 px_descriptionForAssertionMessage];
      [v35 handleFailureInMethod:a2 object:v3 file:@"PXPhotosDragController.m" lineNumber:385 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"selectionManager.dataSourceManager", v37, v38}];

      v6 = v41;
    }
  }

  v7 = [v6 dataSource];
  v47 = objc_alloc_init(MEMORY[0x277D3CD78]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = [(PXPhotosDragController *)v3 localDragSessions];
  v9 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    v43 = v8;
    v44 = v3;
    v42 = *v62;
    do
    {
      v12 = 0;
      v45 = v10;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v46 = v12;
        v13 = *(*(&v61 + 1) + 8 * v12);
        v14 = [v13 dropActionPerformer];
        if (v14 && (v15 = v14, [v13 excludedAssets], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
        {
          v17 = [v13 excludedAssets];
          [v4 unionSet:v17];
        }

        else
        {
          if ([v13 dropOperation] != 3)
          {
            goto LABEL_29;
          }

          v18 = [v13 dropTargetAssetReference];
          if (v18)
          {
          }

          else if (![v13 isDropActiveInsideView])
          {
            goto LABEL_29;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v17 = [v13 draggedAssetReferences];
          v19 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v58;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v58 != v21)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = *(*(&v57 + 1) + 8 * i);
                v24 = [v23 asset];
                v25 = [v5 containsObject:v24];

                if ((v25 & 1) == 0)
                {
                  v55 = 0u;
                  v56 = 0u;
                  if (v7)
                  {
                    [v7 indexPathForAssetReference:v23];
                  }

                  v54[0] = v55;
                  v54[1] = v56;
                  [v47 addIndexPath:v54];
                }

                v26 = [v23 asset];
                [v4 addObject:v26];
              }

              v20 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
            }

            while (v20);
            v8 = v43;
            v3 = v44;
            v11 = v42;
            v10 = v45;
          }
        }

LABEL_29:
        v12 = v46 + 1;
      }

      while (v46 + 1 != v10);
      v10 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v10);
  }

  if ([v47 count] >= 1)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __47__PXPhotosDragController__updateExcludedAssets__block_invoke;
    v52[3] = &unk_278298570;
    v53 = v47;
    [v41 performChanges:v52];
  }

  v27 = [v4 copy];
  [(PXPhotosDragController *)v3 setExcludedAssets:v27];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = [(PXPhotosDragController *)v3 localDragSessions];
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v48 + 1) + 8 * j);
        v34 = [(PXPhotosDragController *)v3 excludedAssets];
        [v33 setExcludedAssets:v34];
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v30);
  }

  [(PXPhotosDragController *)v3 setIsUpdatingExcludedAssets:v40];
}

- (void)_updateIsDragSessionActive
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(PXPhotosDragController *)self localDragSessions];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDragSessionActive])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(PXPhotosDragController *)self setIsDragSessionActive:v4];
}

- (void)_updateDropTarget
{
  v2 = self;
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(PXPhotosDragController *)self localDragSessions];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {

    v6 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  v5 = v4;
  v23 = v2;
  v24 = 0;
  v6 = 0;
  LOBYTE(v2) = 0;
  LOBYTE(v7) = 0;
  v8 = 0;
  v9 = *v27;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v26 + 1) + 8 * i);
      if (v2)
      {
        LODWORD(v2) = 1;
        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        LODWORD(v2) = [*(*(&v26 + 1) + 8 * i) dropOperation] == 3;
        if ((v7 & 1) == 0)
        {
LABEL_8:
          v7 = [v11 isDropActiveInsideView];
          goto LABEL_11;
        }
      }

      v7 = 1;
LABEL_11:
      if ([v11 identifier] <= v8)
      {
        continue;
      }

      v12 = [v11 dropTargetAssetReference];
      if (v12)
      {
      }

      else
      {
        v13 = [v11 hitAssetReference];

        if (!v13)
        {
          continue;
        }
      }

      v14 = [v11 dropTargetAssetReference];

      v15 = [v11 hitAssetReference];
      v16 = v6;
      v6 = v15;

      v8 = [v11 identifier];
      v24 = v14;
    }

    v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v5);

  if ((v2 & v7) == 1)
  {
    v2 = v23;
    v17 = v24;
    if ([(PXPhotosDragController *)v23 reorderFeedbackEnabled])
    {
      v18 = [v24 asset];
      v19 = [(PXPhotosDragController *)v23 dropTargetAssetReference];
      v20 = [v19 asset];
      v21 = v20;
      if (v18 == v20)
      {

LABEL_26:
      }

      else
      {
        v22 = [v18 isEqual:v20];

        if ((v22 & 1) == 0)
        {
          v18 = [(PXPhotosDragController *)v23 reorderFeedbackGenerator];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __43__PXPhotosDragController__updateDropTarget__block_invoke;
          v25[3] = &unk_278299118;
          v25[4] = v23;
          [v18 performFeedbackWithDelay:v25 insideBlock:0.05];
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    v2 = v23;
    v17 = v24;
  }

LABEL_27:
  [(PXPhotosDragController *)v2 setHitAssetReference:v6];
  [(PXPhotosDragController *)v2 setDropTargetAssetReference:v17];
}

void __43__PXPhotosDragController__updateDropTarget__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reorderFeedbackGenerator];
  [v1 objectSnapped];
}

- (void)_updateDraggedAssetReferences
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PXPhotosDragController *)self localDragSessions];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isDragSessionActive])
        {
          v10 = [v9 draggedAssetReferences];
          [v3 unionSet:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(PXPhotosDragController *)self setDraggedAssetReferences:v3];
}

- (void)_localSessionForDropSession:(id)a3 changeBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 localDragSession];
  v9 = [v8 localContext];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;

    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(PXPhotosDragController *)self localDragSessions];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      v17 = [v16 dropSession];

      if (v17 == v6)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v10 = v16;

    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_14:
  }

  v10 = [(PXPhotosDragController *)self _createLocalSession];
  [v10 setDropSession:v6];
LABEL_17:
  v7[2](v7, v10);
  [(PXPhotosDragController *)self _pruneLocalSessionIfFinished:v10];
  v18 = [(PXPhotosDragController *)self updater];
  [v18 updateIfNeeded];
}

- (void)_localSessionForDragSession:(id)a3 changeBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 localContext];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [(PXPhotosDragController *)self _createLocalSession];
  [v8 setDragSession:v10];
  [v10 setLocalContext:v8];
LABEL_7:
  v6[2](v6, v8);
  [(PXPhotosDragController *)self _pruneLocalSessionIfFinished:v8];
  v9 = [(PXPhotosDragController *)self updater];
  [v9 updateIfNeeded];
}

- (void)_pruneLocalSessionIfFinished:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 dragSession];
    if (v5 || ([v12 dropSession], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
LABEL_5:

      v4 = v12;
      goto LABEL_6;
    }

    v7 = [v12 dropActionPerformer];

    v4 = v12;
    if (!v7)
    {
      v8 = [(PXPhotosDragController *)self localDragSessions];
      [v8 removeObject:v12];

      v9 = [(PXPhotosDragController *)self updater];
      [v9 setNeedsUpdateOf:sel__updateDraggedAssetReferences];

      v10 = [(PXPhotosDragController *)self updater];
      [v10 setNeedsUpdateOf:sel__updateDropTarget];

      v11 = [(PXPhotosDragController *)self updater];
      [v11 setNeedsUpdateOf:sel__updateIsDragSessionActive];

      v6 = [(PXPhotosDragController *)self updater];
      [v6 setNeedsUpdateOf:sel__updateExcludedAssets];
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (id)_createLocalSession
{
  v3 = objc_alloc_init(PXLocalDragSession);
  [(PXLocalDragSession *)v3 setDelegate:self];
  v4 = [(PXPhotosDragController *)self localDragSessions];
  [v4 addObject:v3];

  return v3;
}

- (void)setCanDragIn:(BOOL)a3
{
  if (self->_canDragIn != a3)
  {
    v3 = a3;
    v5 = [(PXPhotosDragController *)self dropInteraction];

    if (v5)
    {
      v6 = [(PXPhotosDragController *)self contentView];
      v7 = [(PXPhotosDragController *)self dropInteraction];
      [v6 removeInteraction:v7];

      [(PXPhotosDragController *)self setDropInteraction:0];
    }

    self->_canDragIn = v3;
    if (v3)
    {
      v9 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:self];
      [v9 setAllowsSimultaneousDropSessions:1];
      v8 = [(PXPhotosDragController *)self contentView];
      [v8 addInteraction:v9];

      [(PXPhotosDragController *)self setDropInteraction:v9];
    }
  }
}

- (void)setReorderFeedbackEnabled:(BOOL)a3
{
  if (self->_reorderFeedbackEnabled != a3)
  {
    self->_reorderFeedbackEnabled = a3;
    reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
    if (a3)
    {
      [(_UIDragSnappingFeedbackGenerator *)reorderFeedbackGenerator userInteractionStarted];
    }

    else
    {
      [(_UIDragSnappingFeedbackGenerator *)reorderFeedbackGenerator userInteractionEnded];
    }
  }
}

- (void)setExcludedAssets:(id)a3
{
  v6 = a3;
  v7 = self->_excludedAssets;
  v8 = v7;
  if (v7 == v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = [(NSSet *)v7 isEqual:v6];

  if ((v9 & 1) == 0)
  {
    v8 = [(NSSet *)self->_excludedAssets mutableCopy];
    if ([(NSSet *)v6 count])
    {
      [(NSSet *)v8 minusSet:v6];
    }

    objc_storeStrong(&self->_excludedAssets, a3);
    if ([(NSSet *)v8 count])
    {
      v10 = [(PXPhotosDragController *)self selectionManager];
      v11 = [v10 dataSourceManager];

      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = [v11 px_descriptionForAssertionMessage];
          [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:232 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.dataSourceManager", v14, v15}];
        }
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__PXPhotosDragController_setExcludedAssets___block_invoke;
      v16[3] = &unk_278298570;
      v17 = v8;
      [v11 performChanges:v16];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __44__PXPhotosDragController_setExcludedAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allObjects];
  [v3 stopExcludingAssets:v4];
}

- (void)setIsDragSessionActive:(BOOL)a3
{
  if (self->_isDragSessionActive != a3)
  {
    v4 = a3;
    self->_isDragSessionActive = a3;
    v6 = [(PXPhotosDragController *)self delegate];
    [v6 dragController:self isDragSessionActiveDidChange:v4];
  }
}

- (void)setDropTargetAssetReference:(id)a3
{
  v9 = a3;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 != v9)
  {
    v7 = [(PXAssetReference *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_dropTargetAssetReference, a3);
    v6 = [(PXPhotosDragController *)self delegate];
    [v6 dragController:self dropTargetAssetReferenceDidChange:v9];
  }

  v8 = v9;
LABEL_5:
}

- (void)setDraggedAssetReferences:(id)a3
{
  v9 = a3;
  v5 = self->_draggedAssetReferences;
  v6 = v5;
  if (v5 != v9)
  {
    v7 = [(NSSet *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_draggedAssetReferences, a3);
    v6 = [(PXPhotosDragController *)self delegate];
    [v6 dragController:self draggedAssetReferencesDidChange:v9];
  }

  v8 = v9;
LABEL_5:
}

- (id)scrollView
{
  v3 = [(PXPhotosDragController *)self delegate];
  v4 = [v3 dragController:self scrollViewForAssetReference:0];

  return v4;
}

- (UIViewController)viewControllerForPresentation
{
  v3 = [(PXPhotosDragController *)self delegate];
  v4 = [v3 dragControllerViewControllerForPresentation:self];

  return v4;
}

- (void)_setupWithContentView:(id)a3
{
  v6 = a3;
  if ([(PXPhotosDragController *)self canDragOut])
  {
    v4 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
    [v6 addInteraction:v4];
    [(UIDragInteraction *)v4 setEnabled:1];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v4;
  }
}

- (id)_actionManagerForDropSession:(id)a3
{
  v4 = a3;
  v5 = [v4 localDragSession];
  v6 = [v5 localContext];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXPhotosDragController *)self assetCollectionActionManager];
  [v8 setDropSession:v4];

  v9 = [v7 dragSession];
  [v8 setDragSession:v9];

  v10 = [(PXPhotosDragController *)self hitAssetReference];
  [v8 setDropTargetAssetReference:v10];

  v11 = [v8 performerDelegate];

  if (!v11)
  {
    [v8 setPerformerDelegate:self];
  }

  return v8;
}

- (void)removeFromView
{
  v3 = [(PXPhotosDragController *)self dragInteraction];
  v4 = [v3 view];
  v5 = [(PXPhotosDragController *)self dragInteraction];
  [v4 removeInteraction:v5];

  v8 = [(PXPhotosDragController *)self dropInteraction];
  v6 = [v8 view];
  v7 = [(PXPhotosDragController *)self dropInteraction];
  [v6 removeInteraction:v7];
}

- (void)dealloc
{
  v3 = [(PXPhotosDragController *)self dragInteraction];
  v4 = [(PXPhotosDragController *)self dropInteraction];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __33__PXPhotosDragController_dealloc__block_invoke;
  v11 = &unk_278298598;
  v12 = v3;
  v13 = v4;
  v5 = v4;
  v6 = v3;
  px_dispatch_on_main_queue();

  v7.receiver = self;
  v7.super_class = PXPhotosDragController;
  [(PXPhotosDragController *)&v7 dealloc];
}

void __33__PXPhotosDragController_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 view];
    [v3 removeInteraction:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 view];
    [v5 removeInteraction:*(a1 + 40)];
  }
}

- (PXPhotosDragController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:137 description:{@"%s is not available as initializer", "-[PXPhotosDragController init]"}];

  abort();
}

- (PXPhotosDragController)initWithContentView:(id)a3 selectionManager:(id)a4 assetCollectionActionManager:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PXPhotosDragController;
  v14 = [(PXPhotosDragController *)&v24 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v14];
    updater = v14->_updater;
    v14->_updater = v15;

    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateDraggedAssetReferences];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateDropTarget];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateIsDragSessionActive];
    [(PXUpdater *)v14->_updater addUpdateSelector:sel__updateExcludedAssets];
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    localDragSessions = v14->_localDragSessions;
    v14->_localDragSessions = v17;

    objc_storeWeak(&v14->_delegate, v13);
    objc_storeStrong(&v14->_selectionManager, a4);
    [v11 registerChangeObserver:v14 context:SelectionManagerObserverContext];
    objc_storeStrong(&v14->_assetCollectionActionManager, a5);
    v19 = [MEMORY[0x277D75F18] defaultConfiguration];
    v20 = [v19 tweakedConfigurationForClass:objc_opt_class() usage:@"reorder"];

    v21 = [objc_alloc(MEMORY[0x277D75F10]) initWithConfiguration:v20 view:v10];
    reorderFeedbackGenerator = v14->_reorderFeedbackGenerator;
    v14->_reorderFeedbackGenerator = v21;

    objc_storeWeak(&v14->_contentView, v10);
    [(PXPhotosDragController *)v14 _setupWithContentView:v10];
    [(PXPhotosDragController *)v14 setCanDragIn:1];
  }

  return v14;
}

@end