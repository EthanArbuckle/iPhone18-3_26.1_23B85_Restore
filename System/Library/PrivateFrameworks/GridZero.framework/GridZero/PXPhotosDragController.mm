@interface PXPhotosDragController
- (BOOL)_addDraggedAssetReferences:(id)references toLocalSession:(id)session;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (PXPhotosDragController)init;
- (PXPhotosDragController)initWithContentView:(id)view selectionManager:(id)manager assetCollectionActionManager:(id)actionManager delegate:(id)delegate;
- (PXPhotosDragControllerDelegate)delegate;
- (UIView)contentView;
- (UIViewController)viewControllerForPresentation;
- (id)_actionManagerForDropSession:(id)session;
- (id)_assetReferenceForDragItem:(id)item;
- (id)_createDragItemForAssetReference:(id)reference;
- (id)_createLocalSession;
- (id)_draggableAssetReferenceAtLocation:(CGPoint)location;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)scrollView;
- (id)undoManagerForActionPerformer:(id)performer;
- (unint64_t)_supportedDropOperationForSession:(id)session;
- (void)_localSessionForDragSession:(id)session changeBlock:(id)block;
- (void)_localSessionForDropSession:(id)session changeBlock:(id)block;
- (void)_presentConfidentialityWarning;
- (void)_pruneLocalSessionIfFinished:(id)finished;
- (void)_removeDraggedAssetReferece:(id)referece fromLocalSession:(id)session;
- (void)_setupWithContentView:(id)view;
- (void)_updateDraggedAssetReferences;
- (void)_updateDropTarget;
- (void)_updateExcludedAssets;
- (void)_updateIsDragSessionActive;
- (void)_updateTrackedAssetReferences;
- (void)dealloc;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)localDragSession:(id)session didChangeProperty:(SEL)property;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)removeFromView;
- (void)setCanDragIn:(BOOL)in;
- (void)setDraggedAssetReferences:(id)references;
- (void)setDropTargetAssetReference:(id)reference;
- (void)setExcludedAssets:(id)assets;
- (void)setIsDragSessionActive:(BOOL)active;
- (void)setReorderFeedbackEnabled:(BOOL)enabled;
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

- (void)localDragSession:(id)session didChangeProperty:(SEL)property
{
  if (![(PXPhotosDragController *)self isUpdatingExcludedAssets])
  {
    if (sel_draggedAssetReferences == property)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
    }

    if (sel_dropTargetAssetReference == property || sel_hitAssetReference == property)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDropTarget];
    }

    if (sel_isDragSessionActive == property)
    {
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateIsDragSessionActive];
    }

    if (sel_draggedAssetReferences == property || sel_dropTargetAssetReference == property || sel_dropActionPerformer == property || sel_excludedAssets == property || sel_isDropActiveInsideView == property || sel_dropOperation == property)
    {
      updater = self->_updater;

      [(PXUpdater *)updater setNeedsUpdateOf:sel__updateExcludedAssets];
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (SelectionManagerObserverContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:941 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    v11 = observableCopy;
    [(PXPhotosDragController *)self _updateTrackedAssetReferences];
    observableCopy = v11;
  }
}

- (id)undoManagerForActionPerformer:(id)performer
{
  delegate = [(PXPhotosDragController *)self delegate];
  v5 = [delegate dragControllerUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  viewControllerForPresentation = [(PXPhotosDragController *)self viewControllerForPresentation];
  [viewControllerForPresentation dismissViewControllerAnimated:1 completion:handlerCopy];

  return 1;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  viewControllerForPresentation = [(PXPhotosDragController *)self viewControllerForPresentation];
  [viewControllerForPresentation presentViewController:controllerCopy animated:1 completion:0];

  return 1;
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  [(PXPhotosDragController *)self _localSessionForDropSession:end changeBlock:&__block_literal_global_87];
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v6 = [localDragSessions count];

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

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__PXPhotosDragController_dropInteraction_concludeDrop___block_invoke;
  v4[3] = &unk_2782980F8;
  v4[4] = self;
  [(PXPhotosDragController *)self _localSessionForDropSession:drop changeBlock:v4];
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

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  v35 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  v12 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = interactionCopy;
    v33 = 2112;
    v34 = itemCopy;
    _os_log_impl(&dword_21ABF3000, v12, OS_LOG_TYPE_DEFAULT, "dropInteraction: %@ previewForDroppingItem: %@", buf, 0x16u);
  }

  v13 = [(PXPhotosDragController *)self _assetReferenceForDragItem:itemCopy];
  if (!v13)
  {
    goto LABEL_12;
  }

  selectionManager = [(PXPhotosDragController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:877 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v29, px_descriptionForAssertionMessage}];
    }
  }

  v17 = [dataSource assetReferenceForAssetReference:v13];
  delegate = [(PXPhotosDragController *)self delegate];
  v19 = [delegate dragController:self regionOfInterestForAssetReference:v13 image:0];

  v20 = 0;
  if (v19 && v17)
  {
    delegate2 = [(PXPhotosDragController *)self delegate];
    v22 = [delegate2 dragController:self scrollViewForAssetReference:v17];

    [v19 rectInCoordinateSpace:v22];
    PXRectGetCenter();
    v20 = [objc_alloc(MEMORY[0x277D75488]) initWithContainer:v22 center:{v23, v24}];
  }

  if (v20)
  {
    v25 = [defaultCopy retargetedPreviewWithTarget:v20];
  }

  else
  {
LABEL_12:
    v25 = 0;
  }

  return v25;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v32 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  dropCopy = drop;
  v9 = [(PXPhotosDragController *)self _supportedDropOperationForSession:dropCopy];
  v10 = MEMORY[0x277D3CEF0];
  if (v9 != 3)
  {
    v10 = MEMORY[0x277D3CED0];
  }

  v11 = *v10;
  v12 = [(PXPhotosDragController *)self _actionManagerForDropSession:dropCopy];
  v13 = [v12 actionPerformerForActionType:v11];
  v14 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = interactionCopy;
    v28 = 2112;
    v29 = dropCopy;
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
  [(PXPhotosDragController *)self _localSessionForDropSession:dropCopy changeBlock:v24];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__PXPhotosDragController_dropInteraction_performDrop___block_invoke_2;
  v18[3] = &unk_2782981C0;
  v19 = interactionCopy;
  v20 = dropCopy;
  selfCopy = self;
  v22 = v9;
  v23 = a2;
  v16 = dropCopy;
  v17 = interactionCopy;
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

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  contentView = [(PXPhotosDragController *)self contentView];
  window = [contentView window];

  if (window)
  {
    [exitCopy locationInView:window];
    v7 = [window hitTest:0 withEvent:?];
  }

  else
  {
    v7 = 0;
  }

  contentView2 = [(PXPhotosDragController *)self contentView];
  v9 = contentView2;
  if (v7 == contentView2)
  {
  }

  else
  {
    contentView3 = [(PXPhotosDragController *)self contentView];
    v11 = [v7 isDescendantOfView:contentView3];

    if ((v11 & 1) == 0)
    {
      [(PXPhotosDragController *)self _localSessionForDropSession:exitCopy changeBlock:&__block_literal_global_76];
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

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  v6 = [(PXPhotosDragController *)self _supportedDropOperationForSession:updateCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PXPhotosDragController_dropInteraction_sessionDidUpdate___block_invoke;
  v10[3] = &unk_278298148;
  selfCopy = self;
  v13 = v6;
  v11 = updateCopy;
  v7 = updateCopy;
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

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v8 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = interactionCopy;
    v14 = 2112;
    v15 = sessionCopy;
    _os_log_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_DEFAULT, "dropInteraction: %@ canHandleSession: %@", &v12, 0x16u);
  }

  if ([(PXPhotosDragController *)self canDragIn])
  {
    v9 = [(PXPhotosDragController *)self _actionManagerForDropSession:sessionCopy];
    v10 = [v9 canPerformActionType:*MEMORY[0x277D3CED0]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_supportedDropOperationForSession:(id)session
{
  sessionCopy = session;
  selectionManager = [(PXPhotosDragController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:733 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v19, px_descriptionForAssertionMessage}];
    }
  }

  v9 = [(PXPhotosDragController *)self _actionManagerForDropSession:sessionCopy];
  if (-[PXPhotosDragController isDragSessionActive](self, "isDragSessionActive") && [sessionCopy allowsMoveOperation] && (objc_msgSend(dataSource, "isSorted") & 1) == 0 && objc_msgSend(v9, "canPerformActionType:", *MEMORY[0x277D3CEF0]) && (objc_msgSend(sessionCopy, "items"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v12 = objc_msgSend(dataSource, "totalNumberOfItems"), -[PXPhotosDragController excludedAssets](self, "excludedAssets"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count") + v12, v13, v10, v11 < v14))
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

- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v39 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemsCopy = items;
  v10 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v41.x = x;
    v41.y = y;
    v11 = NSStringFromCGPoint(v41);
    *buf = 138412802;
    v34 = interactionCopy;
    v35 = 2112;
    v36 = itemsCopy;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_21ABF3000, v10, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ sessionForAddingItems: %@ withTouchAtPoint: %@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v13 = [localDragSessions countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v13)
  {

LABEL_16:
    if ([itemsCopy count] == 1)
    {
      lastObject = [itemsCopy lastObject];
    }

    else
    {
      lastObject = 0;
    }

    goto LABEL_19;
  }

  v14 = v13;
  v26 = itemsCopy;
  lastObject = 0;
  v16 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(localDragSessions);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      dragSession = [v18 dragSession];
      if (dragSession)
      {
        v20 = dragSession;
        identifier = [v18 identifier];
        localContext = [lastObject localContext];
        identifier2 = [localContext identifier];

        if (identifier > identifier2)
        {
          dragSession2 = [v18 dragSession];

          lastObject = dragSession2;
        }
      }
    }

    v14 = [localDragSessions countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v14);

  itemsCopy = v26;
  if (!lastObject)
  {
    goto LABEL_16;
  }

LABEL_19:

  return lastObject;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  sessionCopy = session;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__PXPhotosDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v9[3] = &unk_278298120;
  v9[4] = self;
  v10 = sessionCopy;
  v8 = sessionCopy;
  [animator addCompletion:v9];
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

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v33 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  v11 = [(PXPhotosDragController *)self _assetReferenceForDragItem:itemCopy];
  if (v11)
  {
    v24 = interactionCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    localDragSessions = [(PXPhotosDragController *)self localDragSessions];
    v13 = [localDragSessions countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v13)
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = v13;
    v22 = animatorCopy;
    v23 = itemCopy;
    v15 = 0;
    v16 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(localDragSessions);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        draggedAssetReferences = [v18 draggedAssetReferences];
        v20 = [draggedAssetReferences containsObject:v11];

        if (v20)
        {
          v21 = v18;

          v15 = v21;
        }
      }

      v14 = [localDragSessions countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);

    itemCopy = v23;
    interactionCopy = v24;
    animatorCopy = v22;
    if (v15)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __77__PXPhotosDragController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
      v25[3] = &unk_2782980D0;
      v25[4] = self;
      v26 = v11;
      v27 = v15;
      localDragSessions = v15;
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

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v17 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v10 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = interactionCopy;
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2048;
    operationCopy = operation;
    _os_log_impl(&dword_21ABF3000, v10, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ session: %@ didEndWithOperation: %lu", &v11, 0x20u);
  }

  [(PXPhotosDragController *)self _localSessionForDragSession:sessionCopy changeBlock:&__block_literal_global_4558];
}

void __70__PXPhotosDragController_dragInteraction_session_didEndWithOperation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDragSession:0];
  [v2 setIsDragSessionActive:0];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  interactionCopy = interaction;
  beginCopy = begin;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__PXPhotosDragController_dragInteraction_sessionWillBegin___block_invoke;
  v10[3] = &unk_278298088;
  v10[4] = self;
  v11 = interactionCopy;
  v12 = beginCopy;
  v8 = beginCopy;
  v9 = interactionCopy;
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

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  v33 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = interactionCopy;
    *&buf[12] = 2112;
    *&buf[14] = defaultCopy;
    _os_log_impl(&dword_21ABF3000, v11, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ previewForCancellingItem: %@", buf, 0x16u);
  }

  viewControllerForPresentation = [(PXPhotosDragController *)self viewControllerForPresentation];
  px_isVisible = [viewControllerForPresentation px_isVisible];

  if (px_isVisible)
  {
    v14 = [(PXPhotosDragController *)self _assetReferenceForDragItem:itemCopy];
    delegate = [(PXPhotosDragController *)self delegate];
    v16 = [delegate dragController:self regionOfInterestForAssetReference:v14 image:0];

    if (v16)
    {
      delegate2 = [(PXPhotosDragController *)self delegate];
      v18 = [delegate2 dragController:self scrollViewForAssetReference:v14];

      [v16 rectInCoordinateSpace:v18];
      PXRectGetCenter();
      v20 = v19;
      v22 = v21;
      delegate3 = [(PXPhotosDragController *)self delegate];
      v24 = [delegate3 dragController:self shouldResizeCancelledPreviewForAssetReference:v14];

      v32 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v24)
      {
        [defaultCopy size];
        [defaultCopy size];
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
      v25 = [defaultCopy retargetedPreviewWithTarget:v28];
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

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v38 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = interactionCopy;
    v34 = 2112;
    v35 = itemCopy;
    v36 = 2112;
    v37 = sessionCopy;
    _os_log_impl(&dword_21ABF3000, v11, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ previewForLiftingItem: %@ session: %@", buf, 0x20u);
  }

  viewControllerForPresentation = [(PXPhotosDragController *)self viewControllerForPresentation];
  px_isVisible = [viewControllerForPresentation px_isVisible];

  if (px_isVisible)
  {
    v14 = [(PXPhotosDragController *)self _assetReferenceForDragItem:itemCopy];
    delegate = [(PXPhotosDragController *)self delegate];
    v31 = 0;
    v16 = [delegate dragController:self regionOfInterestForAssetReference:v14 image:&v31];
    v17 = v31;

    v18 = 0;
    if (v16 && v17)
    {
      coordinateSpace = [v16 coordinateSpace];
      [v16 rectInCoordinateSpace:coordinateSpace];
      v30 = PXPreviewImageViewForImage();

      delegate2 = [(PXPhotosDragController *)self delegate];
      v21 = [delegate2 dragController:self scrollViewForAssetReference:v14];

      [v16 rectInCoordinateSpace:v21];
      PXRectGetCenter();
      v23 = v22;
      v25 = v24;
      v26 = objc_alloc_init(MEMORY[0x277D75480]);
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v26 setBackgroundColor:clearColor];

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

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  itemsCopy = items;
  if (forInteraction == interaction)
  {
    sessionCopy = session;
    selectionManager = [(PXPhotosDragController *)self selectionManager];
    dataSourceManager = [selectionManager dataSourceManager];

    if (dataSourceManager)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        px_descriptionForAssertionMessage = [dataSourceManager px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:576 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.dataSourceManager", v19, px_descriptionForAssertionMessage}];
      }
    }

    dataSource = [dataSourceManager dataSource];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__PXPhotosDragController_dragInteraction_session_willAddItems_forInteraction___block_invoke;
    v21[3] = &unk_278298088;
    v22 = itemsCopy;
    selfCopy = self;
    v24 = dataSource;
    v16 = dataSource;
    [(PXPhotosDragController *)self _localSessionForDragSession:sessionCopy changeBlock:v21];
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

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v21 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v11 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23.x = x;
    v23.y = y;
    v12 = NSStringFromCGPoint(v23);
    *buf = 138412802;
    *&buf[4] = interactionCopy;
    *&buf[12] = 2112;
    *&buf[14] = sessionCopy;
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
  [(PXPhotosDragController *)self _localSessionForDragSession:sessionCopy changeBlock:v16];
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v33 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v9 = PXGridZeroDNDGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = interactionCopy;
    *&buf[12] = 2112;
    *&buf[14] = sessionCopy;
    _os_log_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_DEFAULT, "dragInteraction: %@ itemsForBeginningSession: %@", buf, 0x16u);
  }

  if (![(PXPhotosDragController *)self canDragOut])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:503 description:@"Trying to start a dragging session when Drag & Drop is not enabled."];
  }

  delegate = [(PXPhotosDragController *)self delegate];
  v11 = [delegate dragControllerAssetReferenceForBeginningSession:self];

  if (!v11)
  {
    contentView = [(PXPhotosDragController *)self contentView];
    [sessionCopy locationInView:contentView];
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
  selfCopy = self;
  v28 = a2;
  v19 = v17;
  v26 = v19;
  v27 = buf;
  [(PXPhotosDragController *)self _localSessionForDragSession:sessionCopy changeBlock:v23];
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

- (id)_draggableAssetReferenceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  delegate = [(PXPhotosDragController *)self delegate];
  v7 = [delegate dragController:self draggableAssetReferenceAtLocation:{x, y}];

  return v7;
}

- (void)_presentConfidentialityWarning
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(PXPhotosDragController *)self px_confidentialityAlertWithActions:v4];

  viewControllerForPresentation = [(PXPhotosDragController *)self viewControllerForPresentation];
  [viewControllerForPresentation presentViewController:v5 animated:1 completion:0];
}

- (void)_removeDraggedAssetReferece:(id)referece fromLocalSession:(id)session
{
  sessionCopy = session;
  refereceCopy = referece;
  draggedAssetReferences = [sessionCopy draggedAssetReferences];
  v10 = [draggedAssetReferences mutableCopy];

  [v10 removeObject:refereceCopy];
  v9 = [MEMORY[0x277CBEB98] setWithSet:v10];
  [sessionCopy setDraggedAssetReferences:v9];

  [(PXPhotosDragController *)self _updateDraggedAssetReferences];
}

- (BOOL)_addDraggedAssetReferences:(id)references toLocalSession:(id)session
{
  referencesCopy = references;
  sessionCopy = session;
  draggedAssetReferences = [sessionCopy draggedAssetReferences];
  if (draggedAssetReferences)
  {
    v9 = draggedAssetReferences;
    v10 = [draggedAssetReferences setByAddingObjectsFromSet:referencesCopy];
  }

  else
  {
    v10 = referencesCopy;
  }

  [sessionCopy setDraggedAssetReferences:v10];
  [(PXPhotosDragController *)self _updateDraggedAssetReferences];

  return 1;
}

- (id)_createDragItemForAssetReference:(id)reference
{
  referenceCopy = reference;
  if (objc_opt_respondsToSelector())
  {
    asset = [referenceCopy asset];
    v6 = [(PXPhotosDragController *)self px_dragAndDropItemProviderForDisplayAsset:asset];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  delegate = [(PXPhotosDragController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PXPhotosDragController *)self delegate];
    v6 = [delegate2 dragController:self itemProviderForAssetReference:referenceCopy];

    if (v6)
    {
LABEL_5:
      v10 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v6];
      v11 = [objc_alloc(MEMORY[0x277D3CD28]) initWithAssetReference:referenceCopy];
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

- (id)_assetReferenceForDragItem:(id)item
{
  localObject = [item localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetReference = [localObject assetReference];
  }

  else
  {
    assetReference = 0;
  }

  return assetReference;
}

- (void)_updateTrackedAssetReferences
{
  v22 = *MEMORY[0x277D85DE8];
  selectionManager = [(PXPhotosDragController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:420 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.selectionSnapshot.dataSource", v15, px_descriptionForAssertionMessage}];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v8 = [localDragSessions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(localDragSessions);
        }

        [*(*(&v17 + 1) + 8 * v11++) updateWithDataSource:dataSource];
      }

      while (v9 != v11);
      v9 = [localDragSessions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  updater = [(PXPhotosDragController *)self updater];
  [updater updateIfNeeded];
}

- (void)_updateExcludedAssets
{
  selfCopy = self;
  v68 = *MEMORY[0x277D85DE8];
  isUpdatingExcludedAssets = [(PXPhotosDragController *)self isUpdatingExcludedAssets];
  [(PXPhotosDragController *)selfCopy setIsUpdatingExcludedAssets:1];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  excludedAssets = [(PXPhotosDragController *)selfCopy excludedAssets];
  selectionManager = [(PXPhotosDragController *)selfCopy selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  v41 = dataSourceManager;
  if (dataSourceManager)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      px_descriptionForAssertionMessage = [dataSourceManager px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXPhotosDragController.m" lineNumber:385 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"selectionManager.dataSourceManager", v37, px_descriptionForAssertionMessage}];

      dataSourceManager = v41;
    }
  }

  dataSource = [dataSourceManager dataSource];
  v47 = objc_alloc_init(MEMORY[0x277D3CD78]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  localDragSessions = [(PXPhotosDragController *)selfCopy localDragSessions];
  v9 = [localDragSessions countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    v43 = localDragSessions;
    v44 = selfCopy;
    v42 = *v62;
    do
    {
      v12 = 0;
      v45 = v10;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(localDragSessions);
        }

        v46 = v12;
        v13 = *(*(&v61 + 1) + 8 * v12);
        dropActionPerformer = [v13 dropActionPerformer];
        if (dropActionPerformer && (v15 = dropActionPerformer, [v13 excludedAssets], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
        {
          excludedAssets2 = [v13 excludedAssets];
          [v4 unionSet:excludedAssets2];
        }

        else
        {
          if ([v13 dropOperation] != 3)
          {
            goto LABEL_29;
          }

          dropTargetAssetReference = [v13 dropTargetAssetReference];
          if (dropTargetAssetReference)
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
          excludedAssets2 = [v13 draggedAssetReferences];
          v19 = [excludedAssets2 countByEnumeratingWithState:&v57 objects:v66 count:16];
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
                  objc_enumerationMutation(excludedAssets2);
                }

                v23 = *(*(&v57 + 1) + 8 * i);
                asset = [v23 asset];
                v25 = [excludedAssets containsObject:asset];

                if ((v25 & 1) == 0)
                {
                  v55 = 0u;
                  v56 = 0u;
                  if (dataSource)
                  {
                    [dataSource indexPathForAssetReference:v23];
                  }

                  v54[0] = v55;
                  v54[1] = v56;
                  [v47 addIndexPath:v54];
                }

                asset2 = [v23 asset];
                [v4 addObject:asset2];
              }

              v20 = [excludedAssets2 countByEnumeratingWithState:&v57 objects:v66 count:16];
            }

            while (v20);
            localDragSessions = v43;
            selfCopy = v44;
            v11 = v42;
            v10 = v45;
          }
        }

LABEL_29:
        v12 = v46 + 1;
      }

      while (v46 + 1 != v10);
      v10 = [localDragSessions countByEnumeratingWithState:&v61 objects:v67 count:16];
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
  [(PXPhotosDragController *)selfCopy setExcludedAssets:v27];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  localDragSessions2 = [(PXPhotosDragController *)selfCopy localDragSessions];
  v29 = [localDragSessions2 countByEnumeratingWithState:&v48 objects:v65 count:16];
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
          objc_enumerationMutation(localDragSessions2);
        }

        v33 = *(*(&v48 + 1) + 8 * j);
        excludedAssets3 = [(PXPhotosDragController *)selfCopy excludedAssets];
        [v33 setExcludedAssets:excludedAssets3];
      }

      v30 = [localDragSessions2 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v30);
  }

  [(PXPhotosDragController *)selfCopy setIsUpdatingExcludedAssets:isUpdatingExcludedAssets];
}

- (void)_updateIsDragSessionActive
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v4 = [localDragSessions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(localDragSessions);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDragSessionActive])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [localDragSessions countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v4 = [localDragSessions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {

    v6 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  v5 = v4;
  v23 = selfCopy;
  v24 = 0;
  v6 = 0;
  LOBYTE(selfCopy) = 0;
  LOBYTE(isDropActiveInsideView) = 0;
  identifier = 0;
  v9 = *v27;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(localDragSessions);
      }

      v11 = *(*(&v26 + 1) + 8 * i);
      if (selfCopy)
      {
        LODWORD(selfCopy) = 1;
        if ((isDropActiveInsideView & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        LODWORD(selfCopy) = [*(*(&v26 + 1) + 8 * i) dropOperation] == 3;
        if ((isDropActiveInsideView & 1) == 0)
        {
LABEL_8:
          isDropActiveInsideView = [v11 isDropActiveInsideView];
          goto LABEL_11;
        }
      }

      isDropActiveInsideView = 1;
LABEL_11:
      if ([v11 identifier] <= identifier)
      {
        continue;
      }

      dropTargetAssetReference = [v11 dropTargetAssetReference];
      if (dropTargetAssetReference)
      {
      }

      else
      {
        hitAssetReference = [v11 hitAssetReference];

        if (!hitAssetReference)
        {
          continue;
        }
      }

      dropTargetAssetReference2 = [v11 dropTargetAssetReference];

      hitAssetReference2 = [v11 hitAssetReference];
      v16 = v6;
      v6 = hitAssetReference2;

      identifier = [v11 identifier];
      v24 = dropTargetAssetReference2;
    }

    v5 = [localDragSessions countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v5);

  if ((selfCopy & isDropActiveInsideView) == 1)
  {
    selfCopy = v23;
    v17 = v24;
    if ([(PXPhotosDragController *)v23 reorderFeedbackEnabled])
    {
      asset = [v24 asset];
      dropTargetAssetReference3 = [(PXPhotosDragController *)v23 dropTargetAssetReference];
      asset2 = [dropTargetAssetReference3 asset];
      v21 = asset2;
      if (asset == asset2)
      {

LABEL_26:
      }

      else
      {
        v22 = [asset isEqual:asset2];

        if ((v22 & 1) == 0)
        {
          asset = [(PXPhotosDragController *)v23 reorderFeedbackGenerator];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __43__PXPhotosDragController__updateDropTarget__block_invoke;
          v25[3] = &unk_278299118;
          v25[4] = v23;
          [asset performFeedbackWithDelay:v25 insideBlock:0.05];
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    selfCopy = v23;
    v17 = v24;
  }

LABEL_27:
  [(PXPhotosDragController *)selfCopy setHitAssetReference:v6];
  [(PXPhotosDragController *)selfCopy setDropTargetAssetReference:v17];
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
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v5 = [localDragSessions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(localDragSessions);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isDragSessionActive])
        {
          draggedAssetReferences = [v9 draggedAssetReferences];
          [v3 unionSet:draggedAssetReferences];
        }
      }

      v6 = [localDragSessions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(PXPhotosDragController *)self setDraggedAssetReferences:v3];
}

- (void)_localSessionForDropSession:(id)session changeBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  blockCopy = block;
  localDragSession = [sessionCopy localDragSession];
  localContext = [localDragSession localContext];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    _createLocalSession = localContext;

    if (_createLocalSession)
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
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  v12 = [localDragSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(localDragSessions);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      dropSession = [v16 dropSession];

      if (dropSession == sessionCopy)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [localDragSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    _createLocalSession = v16;

    if (_createLocalSession)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_14:
  }

  _createLocalSession = [(PXPhotosDragController *)self _createLocalSession];
  [_createLocalSession setDropSession:sessionCopy];
LABEL_17:
  blockCopy[2](blockCopy, _createLocalSession);
  [(PXPhotosDragController *)self _pruneLocalSessionIfFinished:_createLocalSession];
  updater = [(PXPhotosDragController *)self updater];
  [updater updateIfNeeded];
}

- (void)_localSessionForDragSession:(id)session changeBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  localContext = [sessionCopy localContext];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    _createLocalSession = localContext;

    if (_createLocalSession)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  _createLocalSession = [(PXPhotosDragController *)self _createLocalSession];
  [_createLocalSession setDragSession:sessionCopy];
  [sessionCopy setLocalContext:_createLocalSession];
LABEL_7:
  blockCopy[2](blockCopy, _createLocalSession);
  [(PXPhotosDragController *)self _pruneLocalSessionIfFinished:_createLocalSession];
  updater = [(PXPhotosDragController *)self updater];
  [updater updateIfNeeded];
}

- (void)_pruneLocalSessionIfFinished:(id)finished
{
  finishedCopy = finished;
  if (finishedCopy)
  {
    v12 = finishedCopy;
    dragSession = [finishedCopy dragSession];
    if (dragSession || ([v12 dropSession], (dragSession = objc_claimAutoreleasedReturnValue()) != 0))
    {
      updater4 = dragSession;
LABEL_5:

      finishedCopy = v12;
      goto LABEL_6;
    }

    dropActionPerformer = [v12 dropActionPerformer];

    finishedCopy = v12;
    if (!dropActionPerformer)
    {
      localDragSessions = [(PXPhotosDragController *)self localDragSessions];
      [localDragSessions removeObject:v12];

      updater = [(PXPhotosDragController *)self updater];
      [updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];

      updater2 = [(PXPhotosDragController *)self updater];
      [updater2 setNeedsUpdateOf:sel__updateDropTarget];

      updater3 = [(PXPhotosDragController *)self updater];
      [updater3 setNeedsUpdateOf:sel__updateIsDragSessionActive];

      updater4 = [(PXPhotosDragController *)self updater];
      [updater4 setNeedsUpdateOf:sel__updateExcludedAssets];
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (id)_createLocalSession
{
  v3 = objc_alloc_init(PXLocalDragSession);
  [(PXLocalDragSession *)v3 setDelegate:self];
  localDragSessions = [(PXPhotosDragController *)self localDragSessions];
  [localDragSessions addObject:v3];

  return v3;
}

- (void)setCanDragIn:(BOOL)in
{
  if (self->_canDragIn != in)
  {
    inCopy = in;
    dropInteraction = [(PXPhotosDragController *)self dropInteraction];

    if (dropInteraction)
    {
      contentView = [(PXPhotosDragController *)self contentView];
      dropInteraction2 = [(PXPhotosDragController *)self dropInteraction];
      [contentView removeInteraction:dropInteraction2];

      [(PXPhotosDragController *)self setDropInteraction:0];
    }

    self->_canDragIn = inCopy;
    if (inCopy)
    {
      v9 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:self];
      [v9 setAllowsSimultaneousDropSessions:1];
      contentView2 = [(PXPhotosDragController *)self contentView];
      [contentView2 addInteraction:v9];

      [(PXPhotosDragController *)self setDropInteraction:v9];
    }
  }
}

- (void)setReorderFeedbackEnabled:(BOOL)enabled
{
  if (self->_reorderFeedbackEnabled != enabled)
  {
    self->_reorderFeedbackEnabled = enabled;
    reorderFeedbackGenerator = self->_reorderFeedbackGenerator;
    if (enabled)
    {
      [(_UIDragSnappingFeedbackGenerator *)reorderFeedbackGenerator userInteractionStarted];
    }

    else
    {
      [(_UIDragSnappingFeedbackGenerator *)reorderFeedbackGenerator userInteractionEnded];
    }
  }
}

- (void)setExcludedAssets:(id)assets
{
  assetsCopy = assets;
  v7 = self->_excludedAssets;
  v8 = v7;
  if (v7 == assetsCopy)
  {
LABEL_10:

    goto LABEL_11;
  }

  v9 = [(NSSet *)v7 isEqual:assetsCopy];

  if ((v9 & 1) == 0)
  {
    v8 = [(NSSet *)self->_excludedAssets mutableCopy];
    if ([(NSSet *)assetsCopy count])
    {
      [(NSSet *)v8 minusSet:assetsCopy];
    }

    objc_storeStrong(&self->_excludedAssets, assets);
    if ([(NSSet *)v8 count])
    {
      selectionManager = [(PXPhotosDragController *)self selectionManager];
      dataSourceManager = [selectionManager dataSourceManager];

      if (dataSourceManager)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          px_descriptionForAssertionMessage = [dataSourceManager px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:232 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.selectionManager.dataSourceManager", v14, px_descriptionForAssertionMessage}];
        }
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__PXPhotosDragController_setExcludedAssets___block_invoke;
      v16[3] = &unk_278298570;
      v17 = v8;
      [dataSourceManager performChanges:v16];
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

- (void)setIsDragSessionActive:(BOOL)active
{
  if (self->_isDragSessionActive != active)
  {
    activeCopy = active;
    self->_isDragSessionActive = active;
    delegate = [(PXPhotosDragController *)self delegate];
    [delegate dragController:self isDragSessionActiveDidChange:activeCopy];
  }
}

- (void)setDropTargetAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_dropTargetAssetReference;
  delegate = v5;
  if (v5 != referenceCopy)
  {
    v7 = [(PXAssetReference *)v5 isEqual:referenceCopy];

    v8 = referenceCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_dropTargetAssetReference, reference);
    delegate = [(PXPhotosDragController *)self delegate];
    [delegate dragController:self dropTargetAssetReferenceDidChange:referenceCopy];
  }

  v8 = referenceCopy;
LABEL_5:
}

- (void)setDraggedAssetReferences:(id)references
{
  referencesCopy = references;
  v5 = self->_draggedAssetReferences;
  delegate = v5;
  if (v5 != referencesCopy)
  {
    v7 = [(NSSet *)v5 isEqual:referencesCopy];

    v8 = referencesCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_draggedAssetReferences, references);
    delegate = [(PXPhotosDragController *)self delegate];
    [delegate dragController:self draggedAssetReferencesDidChange:referencesCopy];
  }

  v8 = referencesCopy;
LABEL_5:
}

- (id)scrollView
{
  delegate = [(PXPhotosDragController *)self delegate];
  v4 = [delegate dragController:self scrollViewForAssetReference:0];

  return v4;
}

- (UIViewController)viewControllerForPresentation
{
  delegate = [(PXPhotosDragController *)self delegate];
  v4 = [delegate dragControllerViewControllerForPresentation:self];

  return v4;
}

- (void)_setupWithContentView:(id)view
{
  viewCopy = view;
  if ([(PXPhotosDragController *)self canDragOut])
  {
    v4 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
    [viewCopy addInteraction:v4];
    [(UIDragInteraction *)v4 setEnabled:1];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v4;
  }
}

- (id)_actionManagerForDropSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];
  localContext = [localDragSession localContext];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = localContext;
  }

  else
  {
    v7 = 0;
  }

  assetCollectionActionManager = [(PXPhotosDragController *)self assetCollectionActionManager];
  [assetCollectionActionManager setDropSession:sessionCopy];

  dragSession = [v7 dragSession];
  [assetCollectionActionManager setDragSession:dragSession];

  hitAssetReference = [(PXPhotosDragController *)self hitAssetReference];
  [assetCollectionActionManager setDropTargetAssetReference:hitAssetReference];

  performerDelegate = [assetCollectionActionManager performerDelegate];

  if (!performerDelegate)
  {
    [assetCollectionActionManager setPerformerDelegate:self];
  }

  return assetCollectionActionManager;
}

- (void)removeFromView
{
  dragInteraction = [(PXPhotosDragController *)self dragInteraction];
  view = [dragInteraction view];
  dragInteraction2 = [(PXPhotosDragController *)self dragInteraction];
  [view removeInteraction:dragInteraction2];

  dropInteraction = [(PXPhotosDragController *)self dropInteraction];
  view2 = [dropInteraction view];
  dropInteraction2 = [(PXPhotosDragController *)self dropInteraction];
  [view2 removeInteraction:dropInteraction2];
}

- (void)dealloc
{
  dragInteraction = [(PXPhotosDragController *)self dragInteraction];
  dropInteraction = [(PXPhotosDragController *)self dropInteraction];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __33__PXPhotosDragController_dealloc__block_invoke;
  v11 = &unk_278298598;
  v12 = dragInteraction;
  v13 = dropInteraction;
  v5 = dropInteraction;
  v6 = dragInteraction;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDragController.m" lineNumber:137 description:{@"%s is not available as initializer", "-[PXPhotosDragController init]"}];

  abort();
}

- (PXPhotosDragController)initWithContentView:(id)view selectionManager:(id)manager assetCollectionActionManager:(id)actionManager delegate:(id)delegate
{
  viewCopy = view;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  delegateCopy = delegate;
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

    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v14->_selectionManager, manager);
    [managerCopy registerChangeObserver:v14 context:SelectionManagerObserverContext];
    objc_storeStrong(&v14->_assetCollectionActionManager, actionManager);
    defaultConfiguration = [MEMORY[0x277D75F18] defaultConfiguration];
    v20 = [defaultConfiguration tweakedConfigurationForClass:objc_opt_class() usage:@"reorder"];

    v21 = [objc_alloc(MEMORY[0x277D75F10]) initWithConfiguration:v20 view:viewCopy];
    reorderFeedbackGenerator = v14->_reorderFeedbackGenerator;
    v14->_reorderFeedbackGenerator = v21;

    objc_storeWeak(&v14->_contentView, viewCopy);
    [(PXPhotosDragController *)v14 _setupWithContentView:viewCopy];
    [(PXPhotosDragController *)v14 setCanDragIn:1];
  }

  return v14;
}

@end