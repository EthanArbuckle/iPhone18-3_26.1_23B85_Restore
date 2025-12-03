@interface CKMediaObjectAssetActionManager
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)shouldHideInteractions;
- (BOOL)supportsActionType:(id)type;
- (CKMediaObjectAssetActionHelper)chatActionHelper;
- (CKMediaObjectAssetActionManager)initWithChatItem:(id)item presentedFromInlineReply:(BOOL)reply chatActionHelper:(id)helper selectionManager:(id)manager;
- (SEL)_barButtonSelectorByActionType:(id)type;
- (UIMenu)actionContextMenu;
- (id)_currentlySelectedChatItemsOutCursorItem:(id *)item;
- (id)_selectionSnapshotForPerformerClass:(Class)class;
- (id)actionKeyCommands;
- (id)actionPerformerForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)contextMenu;
- (id)contextMenuForChatItems:(id)items cursorChatItem:(id)item isCMM:(BOOL)m;
- (id)menuBuilder:(id)builder tapbackElementsForChatItem:(id)item;
- (id)previewActionForActionType:(id)type;
- (void)_keyCommandCopy:(id)copy;
- (void)_keyCommandQuickLook:(id)look;
- (void)_keyCommandReply:(id)reply;
- (void)_keyCommandSelectAll:(id)all;
- (void)_keyCommandTapback:(id)tapback;
- (void)_runDeleteActionPerformer;
- (void)executeActionForActionType:(id)type withCompletionHandler:(id)handler;
- (void)menuBuilder:(id)builder copyChatItems:(id)items;
- (void)menuBuilder:(id)builder forwardChatItems:(id)items;
- (void)menuBuilder:(id)builder quickLookChatItem:(id)item;
- (void)menuBuilder:(id)builder replyChatItem:(id)item;
- (void)menuBuilder:(id)builder tapbackChatItem:(id)item;
@end

@implementation CKMediaObjectAssetActionManager

- (CKMediaObjectAssetActionManager)initWithChatItem:(id)item presentedFromInlineReply:(BOOL)reply chatActionHelper:(id)helper selectionManager:(id)manager
{
  itemCopy = item;
  helperCopy = helper;
  v18.receiver = self;
  v18.super_class = CKMediaObjectAssetActionManager;
  v13 = [(CKMediaObjectAssetActionManager *)&v18 initWithSelectionManager:manager];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_chatItem, item);
    objc_storeWeak(&v14->_chatActionHelper, helperCopy);
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    performerClassByType = v14->_performerClassByType;
    v14->_performerClassByType = v15;

    if (!reply)
    {
      [(NSMutableDictionary *)v14->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C47A0]];
      [(NSMutableDictionary *)v14->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C4630]];
      [(NSMutableDictionary *)v14->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C4680]];
      [(NSMutableDictionary *)v14->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C4838]];
    }

    [(NSMutableDictionary *)v14->_performerClassByType setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C4668]];
  }

  return v14;
}

- (UIMenu)actionContextMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CKMediaObjectAssetActionManager *)self previewActionForActionType:*MEMORY[0x1E69C47A0]];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(CKMediaObjectAssetActionManager *)self previewActionForActionType:*MEMORY[0x1E69C4668]];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(CKMediaObjectAssetActionManager *)self previewActionForActionType:*MEMORY[0x1E69C4680]];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v3];

  return v7;
}

- (BOOL)shouldHideInteractions
{
  selfCopy = self;
  chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
  LOBYTE(selfCopy) = [chatActionHelper shouldHideInteractionsForActionManager:selfCopy];

  return selfCopy;
}

- (BOOL)supportsActionType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  performerClassByType = [(CKMediaObjectAssetActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  if (typeCopy && -[PXActionManager isActionTypeAllowed:](self, "isActionTypeAllowed:", typeCopy) && (-[CKMediaObjectAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v7 = [v6 canPerformWithActionManager:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if (-[CKMediaObjectAssetActionManager canPerformActionType:](self, "canPerformActionType:", typeCopy) && (-[CKMediaObjectAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v7 = [[v6 alloc] initWithActionType:typeCopy];
    v8 = [(CKMediaObjectAssetActionManager *)self _selectionSnapshotForPerformerClass:v6];
    [v7 setSelectionSnapshot:v8];

    selectionManager = [(CKMediaObjectAssetActionManager *)self selectionManager];
    [v7 setSelectionManager:selectionManager];

    chatItem = [(CKMediaObjectAssetActionManager *)self chatItem];
    [v7 setChatItem:chatItem];

    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [v7 setChatActionHelper:chatActionHelper];

    performerDelegate = [(PXActionManager *)self performerDelegate];
    [v7 setDelegate:performerDelegate];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(CKMediaObjectAssetActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  v7 = [(CKMediaObjectAssetActionManager *)self _barButtonSelectorByActionType:typeCopy];

  return [v6 createBarButtonItemWithTarget:self action:v7 actionManager:self];
}

- (id)previewActionForActionType:(id)type
{
  typeCopy = type;
  if (-[CKMediaObjectAssetActionManager canPerformActionType:](self, "canPerformActionType:", typeCopy) && (-[CKMediaObjectAssetActionManager performerClassByType](self, "performerClassByType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 objectForKeyedSubscript:typeCopy], v5, v6))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__CKMediaObjectAssetActionManager_previewActionForActionType___block_invoke;
    v9[3] = &unk_1E72EFBD8;
    v9[4] = self;
    v10 = typeCopy;
    v7 = [v6 createPreviewActionWithActionManager:self handler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenu
{
  v7 = 0;
  v3 = [(CKMediaObjectAssetActionManager *)self _currentlySelectedChatItemsOutCursorItem:&v7];
  v4 = v7;
  if ([v3 count])
  {
    v5 = [(CKMediaObjectAssetActionManager *)self contextMenuForChatItems:v3 cursorChatItem:v4 isCMM:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)actionKeyCommands
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel__keyCommandQuickLook_];
  v10[0] = v2;
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE88] modifierFlags:0 action:sel__keyCommandDelete_];
  v10[1] = v3;
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"r" modifierFlags:0x100000 action:sel__keyCommandReply_];
  v10[2] = v4;
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"t" modifierFlags:0x100000 action:sel__keyCommandTapback_];
  v10[3] = v5;
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"a" modifierFlags:0x100000 action:sel__keyCommandSelectAll_];
  v10[4] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"c" modifierFlags:0x100000 action:sel__keyCommandCopy_];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v6 = [(CKMediaObjectAssetActionManager *)self selectionManager:action];
  selectionSnapshot = [v6 selectionSnapshot];

  if (sel__keyCommandQuickLook_ == action || sel__keyCommandDelete_ == action || sel__keyCommandCopy_ == action)
  {
    LOBYTE(v8) = [selectionSnapshot isAnyItemSelected];
  }

  else if (sel__keyCommandReply_ == action || sel__keyCommandTapback_ == action)
  {
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    if ([selectedIndexPaths count] == 1)
    {
      v8 = ![(CKMediaObjectAssetActionManager *)self shouldHideInteractions];
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = sel__keyCommandSelectAll_ == action;
  }

  return v8;
}

- (void)_keyCommandQuickLook:(id)look
{
  v7 = 0;
  v4 = [(CKMediaObjectAssetActionManager *)self _currentlySelectedChatItemsOutCursorItem:&v7];
  v5 = v7;
  if (v5)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self quickLookChatItem:v5];
  }

  else
  {
    chatActionHelper = IMLogHandleForCategory();
    if (os_log_type_enabled(chatActionHelper, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager _keyCommandQuickLook:];
    }
  }
}

- (void)_keyCommandReply:(id)reply
{
  v7 = 0;
  v4 = [(CKMediaObjectAssetActionManager *)self _currentlySelectedChatItemsOutCursorItem:&v7];
  v5 = v7;
  if (v5)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self presentInlineReplyControllerForChatItem:v5];
  }

  else
  {
    chatActionHelper = IMLogHandleForCategory();
    if (os_log_type_enabled(chatActionHelper, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager _keyCommandReply:];
    }
  }
}

- (void)_keyCommandTapback:(id)tapback
{
  v7 = 0;
  v4 = [(CKMediaObjectAssetActionManager *)self _currentlySelectedChatItemsOutCursorItem:&v7];
  v5 = v7;
  if (v5)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self tapbackChatItem:v5];
  }

  else
  {
    chatActionHelper = IMLogHandleForCategory();
    if (os_log_type_enabled(chatActionHelper, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager _keyCommandTapback:];
    }
  }
}

- (void)_keyCommandSelectAll:(id)all
{
  chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
  [chatActionHelper selectAllForActionManager:self];
}

- (void)_keyCommandCopy:(id)copy
{
  v4 = [(CKMediaObjectAssetActionManager *)self _currentlySelectedChatItemsOutCursorItem:0];
  if ([v4 count])
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self copyChatItems:v4];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager _keyCommandCopy:];
    }
  }
}

- (id)contextMenuForChatItems:(id)items cursorChatItem:(id)item isCMM:(BOOL)m
{
  mCopy = m;
  itemsCopy = items;
  itemCopy = item;
  menuBuilder = self->_menuBuilder;
  if (!menuBuilder)
  {
    v11 = objc_alloc_init(CKMediaObjectAssetMenuBuilder);
    v12 = self->_menuBuilder;
    self->_menuBuilder = v11;

    [(CKMediaObjectAssetMenuBuilder *)self->_menuBuilder setDelegate:self];
    menuBuilder = self->_menuBuilder;
  }

  v13 = [(CKMediaObjectAssetMenuBuilder *)menuBuilder contextMenuForChatItems:itemsCopy cursorChatItem:itemCopy isCMM:mCopy];

  return v13;
}

- (void)menuBuilder:(id)builder quickLookChatItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self quickLookChatItem:itemCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:quickLookChatItem:];
    }
  }
}

- (void)menuBuilder:(id)builder tapbackChatItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self tapbackChatItem:itemCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:tapbackChatItem:];
    }
  }
}

- (id)menuBuilder:(id)builder tapbackElementsForChatItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    v7 = [chatActionHelper actionManager:self tapbackElementsForChatItem:itemCopy];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:tapbackElementsForChatItem:];
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)menuBuilder:(id)builder replyChatItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self presentInlineReplyControllerForChatItem:itemCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:replyChatItem:];
    }
  }
}

- (void)menuBuilder:(id)builder copyChatItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self copyChatItems:itemsCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:copyChatItems:];
    }
  }
}

- (void)menuBuilder:(id)builder forwardChatItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    chatActionHelper = [(CKMediaObjectAssetActionManager *)self chatActionHelper];
    [chatActionHelper actionManager:self forwardChatItems:itemsCopy];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectAssetActionManager menuBuilder:forwardChatItems:];
    }
  }
}

- (SEL)_barButtonSelectorByActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69C4630]])
  {
    v4 = sel__handleAddToLibraryBarButtonItem_;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E69C47A0]])
  {
    v4 = sel__handleReplyBarButtonItem_;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E69C4838]])
  {
    v4 = sel__handleDeleteBarButtonItem_;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)executeActionForActionType:(id)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(CKMediaObjectAssetActionManager *)self actionPerformerForActionType:type];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__CKMediaObjectAssetActionManager_executeActionForActionType_withCompletionHandler___block_invoke;
  v9[3] = &unk_1E72F3C38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 performActionWithCompletionHandler:v9];
}

uint64_t __84__CKMediaObjectAssetActionManager_executeActionForActionType_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_selectionSnapshotForPerformerClass:(Class)class
{
  selectionManager = [(CKMediaObjectAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if (([selectionSnapshot isAnyItemSelected] & 1) != 0 || (-[CKMediaObjectAssetActionManager objectReference](self, "objectReference"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    if (-[objc_class canPerformOnImplicitSelection](class, "canPerformOnImplicitSelection") && ([selectionSnapshot isAnyItemSelected] & 1) == 0)
    {
      dataSource = [selectionSnapshot dataSource];
      v14 = objc_alloc(MEMORY[0x1E69C45D8]);
      allItemIndexPaths = [dataSource allItemIndexPaths];
      v16 = [v14 initWithDataSource:dataSource selectedIndexPaths:allItemIndexPaths];

      selectionSnapshot = v16;
    }
  }

  else
  {
    dataSource2 = [selectionSnapshot dataSource];
    identifier = [dataSource2 identifier];
    objectReference = [(CKMediaObjectAssetActionManager *)self objectReference];
    v11 = objectReference;
    if (objectReference)
    {
      [objectReference indexPath];
      v12 = v27;
    }

    else
    {
      v12 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    if (identifier != v12)
    {
      dataSource3 = [selectionSnapshot dataSource];
      objectReference2 = [(CKMediaObjectAssetActionManager *)self objectReference];
      v19 = [dataSource3 objectReferenceForObjectReference:objectReference2];
      [(CKMediaObjectAssetActionManager *)self setObjectReference:v19];
    }

    v20 = objc_alloc(MEMORY[0x1E69C45D8]);
    dataSource4 = [selectionSnapshot dataSource];
    objectReference3 = [(CKMediaObjectAssetActionManager *)self objectReference];
    v23 = objectReference3;
    if (objectReference3)
    {
      [objectReference3 indexPath];
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    v24 = [v20 initWithDataSource:dataSource4 selectedIndexPath:v26];

    selectionSnapshot = v24;
  }

  return selectionSnapshot;
}

- (id)_currentlySelectedChatItemsOutCursorItem:(id *)item
{
  v30 = *MEMORY[0x1E69E9840];
  selectionManager = [(CKMediaObjectAssetActionManager *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  v6 = MEMORY[0x1E695DF70];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];
  v10 = [allItemsEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(allItemsEnumerator);
        }

        chatItem = [*(*(&v25 + 1) + 8 * i) chatItem];
        [v8 addObject:chatItem];
      }

      v11 = [allItemsEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v15 = [v8 count];
  if (item && v15)
  {
    v23 = 0u;
    v24 = 0u;
    if (selectionSnapshot)
    {
      [selectionSnapshot cursorIndexPath];
      v16 = v23;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == *MEMORY[0x1E69C4880])
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObjectAssetActionManager _currentlySelectedChatItemsOutCursorItem:];
      }

      *item = [v8 firstObject];
    }

    else
    {
      dataSource = [selectionSnapshot dataSource];
      v22[0] = v23;
      v22[1] = v24;
      v19 = [dataSource objectAtIndexPath:v22];

      chatItem2 = [v19 chatItem];
      *item = chatItem2;
    }
  }

  return v8;
}

- (void)_runDeleteActionPerformer
{
  v2 = [(CKMediaObjectAssetActionManager *)self actionPerformerForActionType:*MEMORY[0x1E69C4680]];
  selectionSnapshot = [v2 selectionSnapshot];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CKMediaObjectAssetActionManager__runDeleteActionPerformer__block_invoke;
  v5[3] = &unk_1E72EC088;
  v6 = selectionSnapshot;
  v4 = selectionSnapshot;
  [v2 performActionWithCompletionHandler:v5];
}

void __60__CKMediaObjectAssetActionManager__runDeleteActionPerformer__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMLogHandleForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) selectedIndexPaths];
      v9 = 134217984;
      v10 = [v8 count];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEFAULT, "Successfully deleted %lu item(s)", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__CKMediaObjectAssetActionManager__runDeleteActionPerformer__block_invoke_cold_1(v5, v7);
  }
}

- (CKMediaObjectAssetActionHelper)chatActionHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_chatActionHelper);

  return WeakRetained;
}

void __60__CKMediaObjectAssetActionManager__runDeleteActionPerformer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Error deleting chat items: %@", &v2, 0xCu);
}

@end