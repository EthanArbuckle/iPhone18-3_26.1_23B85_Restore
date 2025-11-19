@interface CNComposeDragSource
- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4;
- (BOOL)dragInteraction:(id)a3 sessionIsRestrictedToDraggingApplication:(id)a4;
- (CNComposeDragSource)initWithView:(id)a3 delegate:(id)a4;
- (CNComposeDragSourceDelegate)delegate;
- (UIView)sourceView;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)setAllowsDragOverridingMasterSwitch:(BOOL)a3;
@end

@implementation CNComposeDragSource

- (CNComposeDragSource)initWithView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CNComposeDragSource;
  v8 = [(CNComposeDragSource *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_sourceView, v6);
    [(CNComposeDragSource *)v9 setDelegate:v7];
    v9->_delegateFlags.respondsToTeamDataForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToLocalObjectForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToTargetedPreviewForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToPreviewForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToSuggestedNameForItem = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToDragWillEnd = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToAllowsMoveOperation = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToIsRestrictedToMail = objc_opt_respondsToSelector() & 1;
    v9->_delegateFlags.respondsToDataOwner = objc_opt_respondsToSelector() & 1;
    v10 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v9];
    [(CNComposeDragSource *)v9 setDragInteraction:v10];

    v11 = [(CNComposeDragSource *)v9 sourceView];
    v12 = [(CNComposeDragSource *)v9 dragInteraction];
    [v11 addInteraction:v12];

    [(CNComposeDragSource *)v9 setAllowsDragOverridingMasterSwitch:0];
  }

  return v9;
}

- (void)setAllowsDragOverridingMasterSwitch:(BOOL)a3
{
  if (self->_allowsDragOverridingMasterSwitch != a3)
  {
    v4 = a3;
    self->_allowsDragOverridingMasterSwitch = a3;
    v6 = [MEMORY[0x1E69DC988] isEnabledByDefault];
    v7 = [(CNComposeDragSource *)self dragInteraction];
    [v7 setEnabled:v6 | v4];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(CNComposeDragSource *)self delegate];
  v13 = [v12 dragSource:self draggableItemsAtPoint:{v9, v11}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__CNComposeDragSource_dragInteraction_itemsForBeginningSession___block_invoke;
  v17[3] = &unk_1E7CD1C08;
  v17[4] = self;
  v18 = v12;
  v14 = v12;
  v15 = [v13 _cn_map:v17];

  return v15;
}

id __64__CNComposeDragSource_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v3];
  v5 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v4];
  v6 = *(a1 + 32);
  if (v6[12] == 1)
  {
    v7 = [*(a1 + 40) dragSource:? localObjectForDraggableItem:?];
    [v5 setLocalObject:v7];

    v6 = *(a1 + 32);
  }

  if (v6[8] == 1)
  {
    v8 = [*(a1 + 40) dragSource:? teamDataForDraggableItem:?];
    v9 = [v5 itemProvider];
    [v9 setTeamData:v8];

    v6 = *(a1 + 32);
  }

  if (v6[11] == 1)
  {
    v10 = [*(a1 + 40) dragSource:? suggestedNameForDraggableItem:?];
    v11 = [v5 itemProvider];
    [v11 setSuggestedName:v10];
  }

  return v5;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_delegateFlags.respondsToTargetedPreviewForItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [v9 localObject];
    v13 = [WeakRetained dragSource:self targetedPreviewForDraggableItem:v12];
  }

  else if (self->_delegateFlags.respondsToPreviewForItem)
  {
    v14 = [(CNComposeDragSource *)self delegate];
    v15 = [v9 localObject];
    v16 = [v14 dragSource:self previewForDraggableItem:v15];

    v17 = [v16 window];

    if (v17)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v16];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E69DC9A8]);
      v19 = [v8 view];
      [v16 center];
      v21 = v20;
      v23 = v22;
      if (v16)
      {
        [v16 transform];
      }

      else
      {
        memset(v28, 0, sizeof(v28));
      }

      v24 = [v18 initWithContainer:v19 center:v28 transform:{v21, v23}];

      v25 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
      v26 = [MEMORY[0x1E69DC888] clearColor];
      [v25 setBackgroundColor:v26];

      v13 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v16 parameters:v25 target:v24];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  if (self->_delegateFlags.respondsToDragWillEnd)
  {
    v8 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 items];

    [WeakRetained dragSource:self willEndInteractionWithItems:v9 dropOperation:a5];
  }
}

- (BOOL)dragInteraction:(id)a3 sessionAllowsMoveOperation:(id)a4
{
  if (!self->_delegateFlags.respondsToAllowsMoveOperation)
  {
    return 1;
  }

  v4 = self;
  v5 = a4;
  v6 = [(CNComposeDragSource *)v4 delegate];
  LOBYTE(v4) = [v6 dragSource:v4 sessionAllowsMoveOperation:v5];

  return v4;
}

- (BOOL)dragInteraction:(id)a3 sessionIsRestrictedToDraggingApplication:(id)a4
{
  if (!self->_delegateFlags.respondsToIsRestrictedToMail)
  {
    return 0;
  }

  v4 = self;
  v5 = a4;
  v6 = [(CNComposeDragSource *)v4 delegate];
  LOBYTE(v4) = [v6 dragSource:v4 sessionIsRestrictedToMail:v5];

  return v4;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  if (!self->_delegateFlags.respondsToDataOwner)
  {
    return 3;
  }

  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained dragSource:self dataOwnerForSession:v5];

  return v7;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (CNComposeDragSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end