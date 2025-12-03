@interface TabDragDropInteractionController
+ (BOOL)canDelegateDragDropForTabCollectionView:(id)view;
- (BOOL)_canOpenInCurrentTabForSession:(id)session tabView:(id)view;
- (BOOL)_shouldMovePlaceholderItem:(id)item overTargetItem:(id)targetItem withDropLocation:(CGPoint)location interaction:(id)interaction;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (TabDragDropDataSource)dataSource;
- (TabDragDropInteractionController)initWithDataSource:(id)source dropHandler:(id)handler;
- (id)_insertPlaceholderIfNeededForSession:(id)session interaction:(id)interaction;
- (id)_newDragItemsAtPoint:(CGPoint)point excludingTabUUIDs:(id)ds interaction:(id)interaction session:(id)session;
- (id)_tabCollectionItemAtPoint:(CGPoint)point interaction:(id)interaction;
- (id)_viewForTransitionToItem:(id)item withTabCollectionView:(id)view;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_cleanUpDragPreviewForSesssion:(id)sesssion;
- (void)_cleanUpDropPlaceholderForSession:(id)session interaction:(id)interaction;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)_transitionToDragState:(int64_t)state fromDragState:(int64_t)dragState forTabCollectionItemsInSession:(id)session interaction:(id)interaction;
- (void)_unhideTabsForLocalDragSession:(id)session;
- (void)_updatePreviewsForInteraction:(id)interaction session:(id)session pinned:(BOOL)pinned;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
@end

@implementation TabDragDropInteractionController

- (TabDragDropInteractionController)initWithDataSource:(id)source dropHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = TabDragDropInteractionController;
  v8 = [(TabDragDropInteractionController *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeStrong(&v9->_dropHandler, handler);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sessionToPlaceholderItemMap = v9->_sessionToPlaceholderItemMap;
    v9->_sessionToPlaceholderItemMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    insertedTabsForDragItems = v9->_insertedTabsForDragItems;
    v9->_insertedTabsForDragItems = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    hasHiddenDocumentsForDragSessions = v9->_hasHiddenDocumentsForDragSessions;
    v9->_hasHiddenDocumentsForDragSessions = strongToStrongObjectsMapTable3;

    v16 = [MEMORY[0x277CBEB58] set];
    tabViewsPendingActivation = v9->_tabViewsPendingActivation;
    v9->_tabViewsPendingActivation = v16;

    v18 = v9;
  }

  return v9;
}

+ (BOOL)canDelegateDragDropForTabCollectionView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    view = [viewCopy view];
    v5 = view != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  v6 = tabViewFromInteraction(interaction);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 hidesInactiveTabs])
  {
    v7 = [MEMORY[0x277D28F40] canCreateNavigationIntentForDropSession:sessionCopy];
  }

  else
  {
    v7 = [TabDocumentDropHandler canHandleSession:sessionCopy];
  }

  v8 = v7;

  return v8;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didBeginTrackingSession:enterCopy];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  v8 = tabViewFromInteraction(interactionCopy);
  if (!v8 || (objc_opt_respondsToSelector() & 1) != 0 && [v8 presentationState] != 2)
  {
    v13 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
    goto LABEL_30;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 hidesInactiveTabs])
  {
    items = [updateCopy items];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __69__TabDragDropInteractionController_dropInteraction_sessionDidUpdate___block_invoke;
    v56[3] = &unk_2781DBB28;
    v57 = v8;
    v10 = [items safari_containsObjectPassingTest:v56];

    v11 = objc_alloc(MEMORY[0x277D754A8]);
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = [v11 initWithDropOperation:v12];

    goto LABEL_30;
  }

  view = [v8 view];
  [updateCopy locationInView:view];
  v16 = v15;
  v18 = v17;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v20 = +[TabDocumentDropHandler proposedOperationForSession:intoWindowWithPrivateBrowsingEnabled:](TabDocumentDropHandler, "proposedOperationForSession:intoWindowWithPrivateBrowsingEnabled:", updateCopy, [WeakRetained privateBrowsingEnabled]);
  v13 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:v20];
  if (v20 != 1)
  {
    v21 = [TabDocumentDropHandler canPinAllItemsInSession:updateCopy];
    v22 = [(NSMapTable *)self->_sessionToPlaceholderItemMap objectForKey:updateCopy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__TabDragDropInteractionController_dropInteraction_sessionDidUpdate___block_invoke_2;
    aBlock[3] = &unk_2781DBB50;
    v23 = v8;
    v47 = v23;
    v53 = v16;
    v54 = v18;
    v55 = v21;
    v44 = WeakRetained;
    v45 = v22;
    v48 = v45;
    v43 = WeakRetained;
    v49 = v43;
    v24 = updateCopy;
    v50 = v24;
    selfCopy = self;
    v25 = interactionCopy;
    v52 = v25;
    v26 = _Block_copy(aBlock);
    if ([(TabDragDropInteractionController *)self _canOpenInCurrentTabForSession:v24 tabView:v23])
    {
      v42 = v21;
      v27 = [v23 targetItemForDropAtPoint:{v16, v18}];
      [v23 frameForItem:?];
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
      CGRectGetMinX(v59);
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      CGRectGetMaxX(v60);
      _SFClampPercent();
      v33 = v32;
      if (v32 > 0.15 && v32 < 0.85)
      {
        v34 = [(NSMapTable *)self->_sessionToPlaceholderItemMap objectForKey:v24];
        if (v34)
        {
          [v43 removePlaceholderItem:v34];
          [(NSMapTable *)self->_sessionToPlaceholderItemMap removeObjectForKey:v24];
        }

        goto LABEL_27;
      }

      v34 = [(TabDragDropInteractionController *)self _insertPlaceholderIfNeededForSession:v24 interaction:v25];
      v26[2](v26, v34, v27);
      if (!(v42 | (([v27 isPinned] & 1) == 0)))
      {
        [v43 movePlaceholderToEndOfPinnedTabs:v34];
LABEL_27:
        WeakRetained = v44;
        goto LABEL_28;
      }

      WeakRetained = v44;
      if (v33 >= 0.15)
      {
LABEL_28:

        goto LABEL_29;
      }

      v38 = v43;
      v39 = v34;
      v40 = v27;
    }

    else
    {
      [(TabDragDropInteractionController *)self _insertPlaceholderIfNeededForSession:v24 interaction:v25];
      v36 = v35 = v25;
      v34 = [v23 targetItemForDropAtPoint:{v16, v18}];
      v26[2](v26, v36, v34);
      if (!(v21 | (([v34 isPinned] & 1) == 0)))
      {
        [v43 movePlaceholderToEndOfPinnedTabs:v36];
        WeakRetained = v44;
        v27 = v36;
        goto LABEL_28;
      }

      v27 = v36;
      v37 = [(TabDragDropInteractionController *)self _shouldMovePlaceholderItem:v36 overTargetItem:v34 withDropLocation:v35 interaction:v16, v18];
      WeakRetained = v44;
      if (!v37 || ![(TabDragDropInteractionController *)self _placeholderMoveSatisfiesDelay])
      {
        goto LABEL_28;
      }

      v38 = v43;
      v39 = v36;
      v40 = v34;
    }

    [v38 movePlaceholder:v39 overTabItem:v40];
    goto LABEL_28;
  }

LABEL_29:

LABEL_30:

  return v13;
}

BOOL __69__TabDragDropInteractionController_dropInteraction_sessionDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_localSourceTabView];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __69__TabDragDropInteractionController_dropInteraction_sessionDidUpdate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) shouldPinItemsDroppedAtPoint:{*(a1 + 80), *(a1 + 88)}];
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 96))
  {
    v7 = [v5 isPinned] | v6;
    if ([v14 isPinned] != (v7 & 1))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ([v14 isPinned])
    {
LABEL_10:
      [v14 setPinned:v7 & 1];
      [*(a1 + 48) beginFixingTabBarItems];
      [*(a1 + 48) movePlaceholderToEndOfPinnedTabs:v14];
      [*(a1 + 48) endFixingTabBarItems];
      goto LABEL_11;
    }
  }

  v8 = *(a1 + 40);
  if (v8 && v8 != v14)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = [*(a1 + 56) localDragSession];
  v10 = [v9 items];
  v11 = [v10 firstObject];
  v12 = v7 & 1;
  v13 = [v11 safari_dragPreviewRequiresUpdateForTabView:*(a1 + 32) pinned:v12];

  if ((v13 & 1) != 0 || v12 != [v14 isPinned])
  {
    [*(a1 + 64) _updatePreviewsForInteraction:*(a1 + 72) session:*(a1 + 56) pinned:v12];
  }
}

- (BOOL)_canOpenInCurrentTabForSession:(id)session tabView:(id)view
{
  sessionCopy = session;
  viewCopy = view;
  items = [sessionCopy items];
  v9 = [items count];

  if (v9 == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [viewCopy canDragOntoActiveTab])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (+[TabDocumentDropHandler proposedOperationForSession:intoWindowWithPrivateBrowsingEnabled:](TabDocumentDropHandler, "proposedOperationForSession:intoWindowWithPrivateBrowsingEnabled:", sessionCopy, [WeakRetained privateBrowsingEnabled]) == 2)
    {
      view = [viewCopy view];
      [sessionCopy locationInView:view];
      v13 = v12;
      v15 = v14;

      v16 = [viewCopy targetItemForDropAtPoint:{v13, v15}];
      uUID = [v16 UUID];
      v18 = [WeakRetained tabWithUUID:uUID];

      isActive = [v18 isActive];
    }

    else
    {
      isActive = 0;
    }
  }

  else
  {
    isActive = 0;
  }

  return isActive;
}

- (BOOL)_shouldMovePlaceholderItem:(id)item overTargetItem:(id)targetItem withDropLocation:(CGPoint)location interaction:(id)interaction
{
  y = location.y;
  x = location.x;
  itemCopy = item;
  targetItemCopy = targetItem;
  v12 = tabViewFromInteraction(interaction);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 isStandalone])
      {
        secondaryItem = [itemCopy secondaryItem];

        itemCopy = secondaryItem;
      }
    }
  }

  v14 = 0;
  if (targetItemCopy && itemCopy != targetItemCopy)
  {
    v14 = 0;
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v12 presentationState] == 2)
    {
      v52 = x;
      v53 = y;
      [v12 frameForItem:itemCopy];
      [v12 frameForItem:targetItemCopy];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      UIRectGetCenter();
      v24 = v23;
      v26 = v25;
      UIRectGetCenter();
      rect = v27;
      v29 = v28 - v26;
      v55.origin.x = v16;
      v55.origin.y = v18;
      v55.size.width = v20;
      v55.size.height = v22;
      Width = CGRectGetWidth(v55);
      v56.origin.x = v16;
      v56.origin.y = v18;
      v56.size.width = v20;
      v56.size.height = v22;
      Height = CGRectGetHeight(v56);
      v32 = (objc_opt_respondsToSelector() & 1) != 0 ? [v12 layoutAxes] : 3;
      if (v29 == 0.0 && (v32 & 2) != 0 && ((v48 = v24, v57.origin.x = v16, v57.origin.y = v18, v57.size.width = v20, v57.size.height = v22, v53 < CGRectGetMinY(v57)) || (v58.origin.x = v16, v58.origin.y = v18, v58.size.width = v20, v58.size.height = v22, v53 > CGRectGetMaxY(v58))) || (v33 = Height / 3.0, v29 > 0.0) && (v59.origin.x = v16, v59.origin.y = v18, v59.size.width = v20, v59.size.height = v22, v53 > CGRectGetMaxY(v59) - v33) || v29 < 0.0 && (v60.origin.x = v16, v60.origin.y = v18, v60.size.width = v20, v60.size.height = v22, v53 < v33 + CGRectGetMinY(v60)) || (v34 = rect - v24, rect - v24 == 0.0) && (v32 & 1) != 0 && ((v61.origin.x = v16, v61.origin.y = v18, v61.size.width = v20, v61.size.height = v22, v52 < CGRectGetMinX(v61)) || (v62.origin.x = v16, v62.origin.y = v18, v62.size.width = v20, v62.size.height = v22, v53 > CGRectGetMaxX(v62))) || (v35 = Width / 3.0, [v12 view], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "bounds"), v38 = v37, v40 = v39, v54 = v41, recta = v42, v36, v34 > 0.0) && (v63.origin.x = v16, v63.origin.y = v18, v63.size.width = v20, v63.size.height = v22, v49 = v35, MaxX = CGRectGetMaxX(v63), v64.origin.x = v38, v64.origin.y = v40, v64.size.width = v54, v64.size.height = recta, v44 = fmin(MaxX, CGRectGetMaxX(v64) + -100.0), v35 = v49, v52 > v44 - v49) || v34 < 0.0 && (v65.origin.x = v16, v65.origin.y = v18, v65.size.width = v20, v65.size.height = v22, v45 = v35, MinX = CGRectGetMinX(v65), v66.origin.x = v38, v66.origin.y = v40, v66.size.width = v54, v66.size.height = recta, v52 < v45 + fmax(MinX, CGRectGetMinX(v66) + 100.0)))
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

- (void)_cleanUpDropPlaceholderForSession:(id)session interaction:(id)interaction
{
  sessionCopy = session;
  v6 = [(NSMapTable *)self->_sessionToPlaceholderItemMap objectForKey:sessionCopy];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__TabDragDropInteractionController__cleanUpDropPlaceholderForSession_interaction___block_invoke;
    v9[3] = &unk_2781D58E8;
    v9[4] = self;
    v10 = v6;
    v8 = sessionCopy;
    v11 = v8;
    [WeakRetained performBatchUpdatesWithBlock:v9];

    [(NSMapTable *)self->_sessionToPlaceholderItemMap removeObjectForKey:v8];
  }
}

void __82__TabDragDropInteractionController__cleanUpDropPlaceholderForSession_interaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained removePlaceholderItem:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) localDragSession];
  [v3 _unhideTabsForLocalDragSession:v4];
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  v7 = tabViewFromInteraction(interaction);
  if (objc_opt_respondsToSelector())
  {
    hidesInactiveTabs = [v7 hidesInactiveTabs];
  }

  else
  {
    hidesInactiveTabs = 0;
  }

  if ([(TabDragDropInteractionController *)self _canOpenInCurrentTabForSession:dropCopy tabView:v7])
  {
    v9 = [(NSMapTable *)self->_sessionToPlaceholderItemMap objectForKey:dropCopy];
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if ((hidesInactiveTabs | v10))
  {
    builder = [MEMORY[0x277D28F40] builder];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke;
    v16[3] = &unk_2781D5D00;
    v17 = v7;
    [builder buildNavigationIntentForDropSession:dropCopy completionHandler:v16];

    v12 = v17;
  }

  else
  {
    dropHandler = self->_dropHandler;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_2;
    v14[3] = &unk_2781D85C0;
    v14[4] = self;
    v15 = dropCopy;
    [(TabDocumentDropHandler *)dropHandler dropItemsForSession:v15 withInsertionHandler:v14];
    v12 = v15;
  }
}

uint64_t __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) performDropWithNavigationIntent:a2];
  }

  return result;
}

void __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_53;
  v13[3] = &unk_2781DBB78;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v5;
  v17 = &v18;
  v6 = WeakRetained;
  v15 = v6;
  v7 = v3;
  v16 = v7;
  [v6 performBatchUpdatesWithBlock:v13];
  v8 = [v19[5] firstObject];
  v9 = [v8 webExtensionsController];

  v10 = [v9 tabIDToTabPositionForTabsInTransit];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v19[5]];
    [v9 fireAppropriateTabMovementEventForTabState:v12];
  }

  _Block_object_dispose(&v18, 8);
}

void __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_53(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v25 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v2 = [*(a1 + 48) replacePlaceholderItem:? withTabsForDropSession:? dragItems:?];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 64) + 8) + 40);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_2_54;
  v43[3] = &unk_2781D7408;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v44 = v6;
  v45 = v7;
  [v5 enumerateObjectsUsingBlock:v43];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = a1;
  obj = *(a1 + 56);
  v29 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v29)
  {
    v27 = *v40;
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v8;
        v9 = *(*(&v39 + 1) + 8 * v8);
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v10 = [*(*(v28 + 32) + 16) objectForKey:v9];
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          do
          {
            v14 = 0;
            do
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v35 + 1) + 8 * v14);
              v16 = [v9 _sf_localBookmark];
              if ([v16 isFolder])
              {
                v17 = 3;
              }

              else
              {
                v17 = 2;
              }

              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v18 = [v15 tabCollectionItems];
              v19 = [v18 countByEnumeratingWithState:&v31 objects:v46 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v32;
                do
                {
                  v22 = 0;
                  do
                  {
                    if (*v32 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [*(*(&v31 + 1) + 8 * v22++) setDragState:v17];
                  }

                  while (v20 != v22);
                  v20 = [v18 countByEnumeratingWithState:&v31 objects:v46 count:16];
                }

                while (v20);
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
          }

          while (v12);
        }

        v8 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v29);
  }

  [*(*(v28 + 32) + 8) removeObjectForKey:*(v28 + 40)];
  v23 = *(v28 + 32);
  v24 = [*(v28 + 40) localDragSession];
  [v23 _unhideTabsForLocalDragSession:v24];
}

void __64__TabDragDropInteractionController_dropInteraction_performDrop___block_invoke_2_54(uint64_t a1, void *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [*(*(a1 + 40) + 16) objectForKey:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 arrayByAddingObject:v5];
  }

  else
  {
    v10[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  [*(*(a1 + 40) + 16) setObject:v9 forKey:v6];
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  v19 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained didEndTrackingSession:endCopy];

  [(TabDragDropInteractionController *)self _cleanUpDropPlaceholderForSession:endCopy interaction:interactionCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = [endCopy items];
  v10 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(items);
        }

        [(NSMapTable *)self->_insertedTabsForDragItems removeObjectForKey:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  defaultCopy = default;
  v10 = tabViewFromInteraction(interaction);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 hidesInactiveTabs] & 1) != 0 || (-[NSMapTable objectForKey:](self->_insertedTabsForDragItems, "objectForKey:", itemCopy), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, !v12))
  {
    v41 = 0;
  }

  else
  {
    v13 = [(NSMapTable *)self->_insertedTabsForDragItems objectForKey:itemCopy];
    firstObject = [v13 firstObject];
    v15 = [firstObject itemForTabCollectionView:v10];

    if ([v13 count] < 2)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v10 targetedDragPreviewForDroppingItem:v15], (v41 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 supportsDropTransitionToItemView])
        {
          v42 = [(TabDragDropInteractionController *)self _viewForTransitionToItem:v15 withTabCollectionView:v10];
          if (v42)
          {
            v43 = objc_alloc_init(MEMORY[0x277D75480]);
            clearColor = [MEMORY[0x277D75348] clearColor];
            [v43 setBackgroundColor:clearColor];

            v41 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v42 parameters:v43];
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          v41 = 0;
        }
      }
    }

    else
    {
      [v10 frameForItem:v15];
      x = v16;
      y = v18;
      width = v20;
      height = v22;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v24 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
      v25 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v49;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v49 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v48 + 1) + 8 * i) itemForTabCollectionView:v10];
            [v10 frameForItem:v29];
            v57.origin.x = v30;
            v57.origin.y = v31;
            v57.size.width = v32;
            v57.size.height = v33;
            v55.origin.x = x;
            v55.origin.y = y;
            v55.size.width = width;
            v55.size.height = height;
            v56 = CGRectUnion(v55, v57);
            x = v56.origin.x;
            y = v56.origin.y;
            width = v56.size.width;
            height = v56.size.height;
          }

          v26 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v26);
      }

      UIRectGetCenter();
      v35 = v34;
      v37 = v36;
      memset(&v47, 0, sizeof(v47));
      CGAffineTransformMakeScale(&v47, 0.0, 0.0);
      v38 = objc_alloc(MEMORY[0x277D75488]);
      view = [v10 view];
      v46 = v47;
      v40 = [v38 initWithContainer:view center:&v46 transform:{v35, v37}];
      v41 = [defaultCopy retargetedPreviewWithTarget:v40];
    }
  }

  return v41;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  v46 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  animatorCopy = animator;
  v10 = tabViewFromInteraction(interaction);
  selfCopy = self;
  v31 = itemCopy;
  v11 = [(NSMapTable *)self->_insertedTabsForDragItems objectForKey:itemCopy];
  v12 = [v11 count];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  v14 = &unk_2781D7788;
  if (v13)
  {
    v15 = v13;
    v16 = *v42;
    v32 = v10;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = [v18 itemForTabCollectionView:v10];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __85__TabDragDropInteractionController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
        v40[3] = v14;
        v40[4] = v18;
        [animatorCopy addCompletion:v40];
        if (v12 <= 1)
        {
          v20 = [(TabDragDropInteractionController *)selfCopy _viewForTransitionToItem:v19 withTabCollectionView:v10];
          v21 = v20;
          if (v20)
          {
            v22 = v15;
            v23 = MEMORY[0x277D75D18];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __85__TabDragDropInteractionController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke_2;
            v38[3] = &unk_2781D4D40;
            v24 = v16;
            v25 = v14;
            v26 = animatorCopy;
            v27 = v12;
            v28 = v20;
            v39 = v28;
            v29 = v23;
            v15 = v22;
            [v29 performWithoutAnimation:v38];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __85__TabDragDropInteractionController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke_3;
            v36[3] = &unk_2781D4D40;
            v30 = v28;
            v12 = v27;
            animatorCopy = v26;
            v14 = v25;
            v16 = v24;
            v10 = v32;
            v37 = v30;
            [animatorCopy addAnimations:v36];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v15);
  }

  ++selfCopy->_dropAnimationCount;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __85__TabDragDropInteractionController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke_4;
  v35[3] = v14;
  v35[4] = selfCopy;
  [animatorCopy addCompletion:v35];
}

void __85__TabDragDropInteractionController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) tabCollectionItems];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) setDragState:0];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  interactionCopy = interaction;
  v17 = tabViewFromInteraction(interactionCopy);
  if (v17)
  {
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didStartDragWithDragContentType:{objc_msgSend(v17, "itemDragContentType")}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained willBeginDragSession:beginCopy];

  items = [beginCopy items];
  v11 = [TabDocumentDropHandler tabsForDragItems:items];

  v12 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v11];
  v13 = [v12 mutableCopy];
  firstObject = [v11 firstObject];
  webExtensionsController = [firstObject webExtensionsController];
  [webExtensionsController setTabIDToTabPositionForTabsInTransit:v13];

  pendingDragSession = self->_pendingDragSession;
  self->_pendingDragSession = 0;

  [(TabDragDropInteractionController *)self _transitionToDragState:1 fromDragState:-1 forTabCollectionItemsInSession:beginCopy interaction:interactionCopy];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  if (self->_pendingDragSession || self->_dropAnimationCount)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = tabViewFromInteraction(interactionCopy);
    if (([(NSMutableSet *)self->_tabViewsPendingActivation containsObject:v10]& 1) != 0)
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    else
    {
      objc_storeStrong(&self->_pendingDragSession, session);
      view = [v10 view];
      [sessionCopy locationInView:view];
      v8 = [(TabDragDropInteractionController *)self _newDragItemsAtPoint:0 excludingTabUUIDs:interactionCopy interaction:sessionCopy session:?];
    }
  }

  return v8;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v31 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  view = [interactionCopy view];
  v11 = MEMORY[0x277CBEB58];
  items = [sessionCopy items];
  v13 = [v11 setWithCapacity:{objc_msgSend(items, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  items2 = [sessionCopy items];
  v15 = [items2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(items2);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        safari_localWBTab = [v19 safari_localWBTab];

        if (safari_localWBTab)
        {
          safari_localWBTab2 = [v19 safari_localWBTab];
          uuid = [safari_localWBTab2 uuid];
          [v13 addObject:uuid];
        }
      }

      v16 = [items2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  [view convertPoint:view toView:{x, y}];
  v23 = [(TabDragDropInteractionController *)self _newDragItemsAtPoint:v13 excludingTabUUIDs:interactionCopy interaction:sessionCopy session:?];

  return v23;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  safari_localWBTab = [itemCopy safari_localWBTab];
  safari_localTabItem = [itemCopy safari_localTabItem];

  window = 0;
  if (safari_localWBTab && safari_localTabItem)
  {
    v11 = tabViewFromInteraction(interactionCopy);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v11 targetedDragPreviewForLiftingItem:safari_localTabItem], (window = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [v11 viewForItem:safari_localTabItem];
        window = [v12 window];

        if (window)
        {
          window = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v12];
        }
      }

      else
      {
        window = 0;
      }
    }
  }

  return window;
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained willEndDragSession:sessionCopy];

  items = [sessionCopy items];
  v13 = [TabDocumentDropHandler tabsForDragItems:items];

  firstObject = [v13 firstObject];
  webExtensionsController = [firstObject webExtensionsController];
  [webExtensionsController setTabIDToTabPositionForTabsInTransit:0];

  [(TabDragDropInteractionController *)self _transitionToDragState:0 fromDragState:1 forTabCollectionItemsInSession:sessionCopy interaction:interactionCopy];
  [(NSMapTable *)self->_hasHiddenDocumentsForDragSessions removeObjectForKey:sessionCopy];
  [(TabDragDropInteractionController *)self _cleanUpDragPreviewForSesssion:sessionCopy];
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  itemsCopy = items;
  sessionCopy = session;
  interactionCopy = interaction;
  items = [sessionCopy items];
  v12 = [TabDocumentDropHandler tabsForDragItems:items];

  v13 = [MEMORY[0x277D4A8B0] tabIDToTabPositionDictionaryForTabs:v12];
  firstObject = [v12 firstObject];
  webExtensionsController = [firstObject webExtensionsController];
  tabIDToTabPositionForTabsInTransit = [webExtensionsController tabIDToTabPositionForTabsInTransit];
  [tabIDToTabPositionForTabsInTransit addEntriesFromDictionary:v13];

  [(TabDragDropInteractionController *)self _transitionToDragState:1 fromDragState:-1 forTabCollectionItemsInSession:sessionCopy interaction:interactionCopy];
  v17 = [(NSMapTable *)self->_hasHiddenDocumentsForDragSessions objectForKey:sessionCopy];

  LODWORD(sessionCopy) = [v17 BOOLValue];
  if (sessionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained hideTabsForDragItems:itemsCopy];
  }
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  [(TabDragDropInteractionController *)self _cleanUpDragPreviewForSesssion:self->_pendingDragSession];
  pendingDragSession = self->_pendingDragSession;
  self->_pendingDragSession = 0;
}

- (void)_cleanUpDragPreviewForSesssion:(id)sesssion
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [sesssion items];
  v4 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(items);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        safari_localSourceTabView = [v8 safari_localSourceTabView];
        if (objc_opt_respondsToSelector())
        {
          safari_localTabItem = [v8 safari_localTabItem];
          [safari_localSourceTabView cleanUpDragPreviewForItem:safari_localTabItem];
        }
      }

      v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)_newDragItemsAtPoint:(CGPoint)point excludingTabUUIDs:(id)ds interaction:(id)interaction session:(id)session
{
  y = point.y;
  x = point.x;
  v28[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  interactionCopy = interaction;
  sessionCopy = session;
  v14 = [(TabDragDropInteractionController *)self _tabCollectionItemAtPoint:interactionCopy interaction:x, y];
  v15 = v14;
  if (v14 && ![v14 dragState])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    uUID = [v15 UUID];
    v19 = [WeakRetained tabWithUUID:uUID];
    wbTab = [v19 wbTab];

    if (wbTab && ([wbTab uuid], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(dsCopy, "containsObject:", v21), v21, (v22 & 1) == 0) && (objc_msgSend(sessionCopy, "items"), v23 = objc_claimAutoreleasedReturnValue(), v24 = +[TabDocumentDropHandler canAddTab:toSessionWithDragItems:](TabDocumentDropHandler, "canAddTab:toSessionWithDragItems:", wbTab, v23), v23, v24))
    {
      v25 = tabViewFromInteraction(interactionCopy);
      if (objc_opt_respondsToSelector() & 1) != 0 && [v25 presentationState] != 2 || objc_msgSend(wbTab, "isBlank") && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v25, "hidesInactiveTabs"))
      {
        v16 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v27 = [WeakRetained dragItemForTab:wbTab tabItem:v15];
        v28[0] = v27;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      }
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)_tabCollectionItemAtPoint:(CGPoint)point interaction:(id)interaction
{
  y = point.y;
  x = point.x;
  v6 = tabViewFromInteraction(interaction);
  v7 = [v6 itemAtPoint:{x, y}];

  return v7;
}

- (void)_unhideTabsForLocalDragSession:(id)session
{
  if (session)
  {
    sessionCopy = session;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    items = [sessionCopy items];
    [WeakRetained unhideTabsForDragItems:items];

    [(NSMapTable *)self->_hasHiddenDocumentsForDragSessions setObject:MEMORY[0x277CBEC28] forKey:sessionCopy];
  }
}

- (id)_viewForTransitionToItem:(id)item withTabCollectionView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [viewCopy supportsDropTransitionToItemView])
  {
    v7 = [viewCopy viewForItem:itemCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_insertPlaceholderIfNeededForSession:(id)session interaction:(id)interaction
{
  sessionCopy = session;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = [(NSMapTable *)self->_sessionToPlaceholderItemMap objectForKey:sessionCopy];
  if (v19[5] && [WeakRetained isPlaceholderItemValid:?])
  {
    v9 = v19[5];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__TabDragDropInteractionController__insertPlaceholderIfNeededForSession_interaction___block_invoke;
    v12[3] = &unk_2781DBBA0;
    v17 = &v18;
    v13 = WeakRetained;
    v14 = interactionCopy;
    v10 = sessionCopy;
    v15 = v10;
    selfCopy = self;
    [v13 performBatchUpdatesWithBlock:v12];
    [(NSMapTable *)self->_sessionToPlaceholderItemMap setObject:v19[5] forKey:v10];
    v9 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __85__TabDragDropInteractionController__insertPlaceholderIfNeededForSession_interaction___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) removePlaceholderItem:?];
  }

  v12 = tabViewFromInteraction(*(a1 + 40));
  v2 = *(a1 + 48);
  v3 = [v12 view];
  [v2 locationInView:v3];
  v4 = [v12 targetItemForDropAtPoint:?];

  v5 = [*(a1 + 48) localDragSession];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 items];
    [v7 hideTabsForDragItems:v8];

    [*(*(a1 + 56) + 32) setObject:MEMORY[0x277CBEC38] forKey:v6];
  }

  v9 = [*(a1 + 32) insertPlaceholderAfterTabItem:v4];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)_transitionToDragState:(int64_t)state fromDragState:(int64_t)dragState forTabCollectionItemsInSession:(id)session interaction:(id)interaction
{
  v38 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [session items];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        safari_localTabItem = [v13 safari_localTabItem];
        if (safari_localTabItem)
        {
          safari_localTabItem2 = [v13 safari_localTabItem];
          v36 = safari_localTabItem2;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        }

        else
        {
          v16 = [(NSMapTable *)self->_insertedTabsForDragItems objectForKey:v13];
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * j);
              if (dragState == -1 || [*(*(&v27 + 1) + 8 * j) dragState] == dragState)
              {
                [v22 setDragState:state];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v19);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v10);
  }

  view = [interactionCopy view];
  [view setNeedsLayout];
}

- (void)_updatePreviewsForInteraction:(id)interaction session:(id)session pinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v8 = tabViewFromInteraction(interaction);
  if (objc_opt_respondsToSelector())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = sessionCopy;
    localDragSession = [sessionCopy localDragSession];
    items = [localDragSession items];

    v11 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(items);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          safari_localTabItem = [v15 safari_localTabItem];
          safari_localSourceTabView = [v15 safari_localSourceTabView];
          if (safari_localTabItem)
          {
            v18 = objc_opt_class();
            if (v18 == objc_opt_class())
            {
              v19 = [v8 dragPreviewForItem:safari_localTabItem pinned:pinnedCopy];
              v20 = v19;
              if (v19)
              {
                v22[0] = MEMORY[0x277D85DD0];
                v22[1] = 3221225472;
                v22[2] = __81__TabDragDropInteractionController__updatePreviewsForInteraction_session_pinned___block_invoke;
                v22[3] = &unk_2781D5CD8;
                v23 = v19;
                [v15 setPreviewProvider:v22];
              }
            }
          }
        }

        v12 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    sessionCopy = v21;
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v8 = tabViewFromInteraction(interactionCopy);
  if (([(NSMutableSet *)self->_tabViewsPendingActivation containsObject:v8]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(TabDragDropInteractionController *)self _tabCollectionItemAtPoint:interactionCopy interaction:x, y];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (!v10 || [v10 dragState] || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v8, "presentationState") != 2)
    {
      v9 = 0;
    }

    else
    {
      uUID = [v10 UUID];
      v14 = [WeakRetained tabWithUUID:uUID];

      if (v14)
      {
        tabMenuProviderDataSource = [WeakRetained tabMenuProviderDataSource];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldUseAddressFieldContextMenuForItem:v10])
        {
          v16 = [TabMenuProvider addressFieldActionProviderForTab:v14 dataSource:tabMenuProviderDataSource];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v17 = [v8 contextMenuOptionsForItem:v10];
          }

          else
          {
            v17 = 53622;
          }

          v16 = [TabMenuProvider actionProviderForTab:v14 dataSource:tabMenuProviderDataSource options:v17];
        }

        v18 = v16;
        if (v16)
        {
          if (objc_opt_respondsToSelector())
          {
            [v8 willBeginShowingContextMenuForItem:v10];
          }

          v19 = [TabContextMenuIdentifier alloc];
          uUID2 = [v10 UUID];
          v21 = [(TabContextMenuIdentifier *)v19 initWithTabUUID:uUID2 sourceItem:v10];

          v9 = [MEMORY[0x277D753B0] configurationWithIdentifier:v21 previewProvider:0 actionProvider:v18];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = tabViewFromInteraction(interaction);
  sourceItem = [identifierCopy sourceItem];

  if (objc_opt_respondsToSelector())
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 targetedDragPreviewForLiftingItem:sourceItem], (window = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [v7 viewForItem:sourceItem];
      window = [v10 window];

      if (window)
      {
        window = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v10];
      }
    }
  }

  else
  {
    window = 0;
  }

  return window;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v11 = tabViewFromInteraction(interactionCopy);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([identifierCopy sourceItem], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "targetedPreviewForDismissingMenuForItem:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = [(TabDragDropInteractionController *)self contextMenuInteraction:interactionCopy configuration:configurationCopy highlightPreviewForItemWithIdentifier:identifierCopy];
  }

  return v13;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  v10 = tabViewFromInteraction(interaction);
  identifier = [configurationCopy identifier];

  sourceItem = [identifier sourceItem];

  if (sourceItem)
  {
    [(NSMutableSet *)self->_tabViewsPendingActivation addObject:v10];
    [animatorCopy setPreferredCommitStyle:0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __117__TabDragDropInteractionController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v13[3] = &unk_2781D58E8;
    v13[4] = self;
    v14 = v10;
    v15 = sourceItem;
    [animatorCopy addCompletion:v13];
  }
}

uint64_t __117__TabDragDropInteractionController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(void *a1)
{
  [*(a1[4] + 48) removeObject:a1[5]];
  v2 = a1[5];
  v3 = a1[6];

  return [v2 activateItem:v3];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  v9 = tabViewFromInteraction(interaction);
  if (objc_opt_respondsToSelector())
  {
    identifier = [configurationCopy identifier];
    sourceItem = [identifier sourceItem];

    if (sourceItem)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __92__TabDragDropInteractionController_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
      v12[3] = &unk_2781D4C88;
      v13 = v9;
      v14 = sourceItem;
      [animatorCopy addCompletion:v12];
    }
  }
}

- (TabDragDropDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end