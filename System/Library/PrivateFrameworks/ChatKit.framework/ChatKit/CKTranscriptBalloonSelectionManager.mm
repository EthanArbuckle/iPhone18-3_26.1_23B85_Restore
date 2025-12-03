@interface CKTranscriptBalloonSelectionManager
- (BOOL)isMessageGuidSelected:(id)selected;
- (CKTranscriptBalloonSelectionManager)init;
- (CKTranscriptBalloonSelectionManagerDataSource)dataSource;
- (CKTranscriptBalloonSelectionManagerDelegate)delegate;
- (NSArray)chatItems;
- (id)_chatItemForGUID:(id)d;
- (id)selectedGuidAtIndex:(unint64_t)index;
- (id)selectedStateForGuid:(id)guid;
- (int64_t)indexOfGuid:(id)guid inChatItems:(id)items;
- (unint64_t)selectedGuidCount;
- (void)addSelectedMessageGuid:(id)guid selectionState:(id)state;
- (void)removeAllSelectedMessageGuids;
- (void)removeAllSelectedMessageGuidsExceptTrackedGuid;
- (void)removeSelectedMessageGuid:(id)guid;
- (void)removeTrackedGuid;
- (void)setSelectedGuids:(id)guids;
- (void)trackSelectedGuid:(id)guid selectionState:(id)state;
@end

@implementation CKTranscriptBalloonSelectionManager

- (CKTranscriptBalloonSelectionManager)init
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBalloonSelectionManager;
  v2 = [(CKTranscriptBalloonSelectionManager *)&v8 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    selectedMessageGuids = v2->_selectedMessageGuids;
    v2->_selectedMessageGuids = orderedSet;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    selectedStates = v2->_selectedStates;
    v2->_selectedStates = dictionary;
  }

  return v2;
}

- (id)_chatItemForGUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(CKTranscriptBalloonSelectionManager *)self chatItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        iMChatItem = [v9 IMChatItem];
        guid = [iMChatItem guid];
        v12 = [dCopy isEqualToString:guid];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)chatItems
{
  dataSource = [(CKTranscriptBalloonSelectionManager *)self dataSource];
  v4 = [dataSource selectionManagerChatItems:self];

  return v4;
}

- (int64_t)indexOfGuid:(id)guid inChatItems:(id)items
{
  guidCopy = guid;
  itemsCopy = items;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CKTranscriptBalloonSelectionManager_indexOfGuid_inChatItems___block_invoke;
  v10[3] = &unk_1E72ED100;
  v7 = guidCopy;
  v11 = v7;
  v12 = &v13;
  [itemsCopy enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __63__CKTranscriptBalloonSelectionManager_indexOfGuid_inChatItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 IMChatItem];
  v8 = [v7 guid];

  if ([v8 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)addSelectedMessageGuid:(id)guid selectionState:(id)state
{
  v39 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = guidCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Requesting to add guid: %@", &buf, 0xCu);
    }
  }

  if (guidCopy)
  {
    chatItems = [(CKTranscriptBalloonSelectionManager *)self chatItems];
    v10 = [(CKTranscriptBalloonSelectionManager *)self indexOfGuid:guidCopy inChatItems:chatItems];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = guidCopy;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to add guid: %@, index not found", &buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = [chatItems objectAtIndexedSubscript:v10];
      if ([v12 canBeSelectedInEditMode])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v37 = 0x2020000000;
        v38 = 0;
        selectedMessageGuids = self->_selectedMessageGuids;
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __77__CKTranscriptBalloonSelectionManager_addSelectedMessageGuid_selectionState___block_invoke;
        v25 = &unk_1E72F6C40;
        selfCopy = self;
        v27 = chatItems;
        v31 = v10;
        v14 = guidCopy;
        v28 = v14;
        v15 = stateCopy;
        v29 = v15;
        p_buf = &buf;
        [(NSMutableOrderedSet *)selectedMessageGuids enumerateObjectsUsingBlock:&v22];
        if ((*(*(&buf + 1) + 24) & 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_selectedMessageGuids addObject:v14, v22, v23, v24, v25, selfCopy, v27, v28];
          [(NSMutableDictionary *)self->_selectedStates setObject:v15 forKey:v14];
        }

        v16 = [(CKTranscriptBalloonSelectionManager *)self delegate:v22];
        v17 = [(CKTranscriptBalloonSelectionManager *)self _chatItemForGUID:v14];
        [v16 selectionManager:self didAddChatItem:v17 selectionState:v15];

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            selectedGuidCount = [(CKTranscriptBalloonSelectionManager *)self selectedGuidCount];
            *v32 = 138412546;
            v33 = v14;
            v34 = 2048;
            v35 = selectedGuidCount;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Did add guid: %@, resulting selected count: %lu", v32, 0x16u);
          }
        }

        _Block_object_dispose(&buf, 8);
      }

      else if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = guidCopy;
          _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Failed to add guid: %@, chatItem not allowed to be selected", &buf, 0xCu);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Failed to add guid: nil", &buf, 2u);
    }
  }
}

unint64_t __77__CKTranscriptBalloonSelectionManager_addSelectedMessageGuid_selectionState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) indexOfGuid:a2 inChatItems:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 72) < result)
  {
    [*(*(a1 + 32) + 32) insertObject:*(a1 + 48) atIndex:a3];
    result = [*(*(a1 + 32) + 40) setObject:*(a1 + 56) forKey:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)removeSelectedMessageGuid:(id)guid
{
  v16 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = guidCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Requesting to remove guid: %@", &v12, 0xCu);
    }
  }

  if ([guidCopy length])
  {
    selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
    [selectedMessageGuids removeObject:guidCopy];

    selectedStates = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
    [selectedStates removeObjectForKey:guidCopy];

    delegate = [(CKTranscriptBalloonSelectionManager *)self delegate];
    v9 = [(CKTranscriptBalloonSelectionManager *)self _chatItemForGUID:guidCopy];
    [delegate selectionManager:self didRemoveChatItem:v9];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        selectedGuidCount = [(CKTranscriptBalloonSelectionManager *)self selectedGuidCount];
        v12 = 138412546;
        v13 = guidCopy;
        v14 = 2048;
        v15 = selectedGuidCount;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Did remove guid: %@, resulting selected count: %lu", &v12, 0x16u);
      }
    }
  }
}

- (void)removeAllSelectedMessageGuids
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "removing all selected guid", buf, 2u);
    }
  }

  [(CKTranscriptBalloonSelectionManager *)self setTrackedGuid:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v5 = [selectedMessageGuids countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(selectedMessageGuids);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        delegate = [(CKTranscriptBalloonSelectionManager *)self delegate];
        v10 = [(CKTranscriptBalloonSelectionManager *)self _chatItemForGUID:v8];
        [delegate selectionManager:self didRemoveChatItem:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [selectedMessageGuids countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  selectedMessageGuids2 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  [selectedMessageGuids2 removeAllObjects];

  selectedStates = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
  [selectedStates removeAllObjects];

  delegate2 = [(CKTranscriptBalloonSelectionManager *)self delegate];
  [delegate2 selectionManagerDidRemoveAllSelectedChatItems:self];
}

- (BOOL)isMessageGuidSelected:(id)selected
{
  selectedCopy = selected;
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  if ([selectedMessageGuids containsObject:selectedCopy])
  {
    v6 = 1;
  }

  else
  {
    trackedGuid = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
    v6 = [trackedGuid isEqualToString:selectedCopy];
  }

  return v6;
}

- (unint64_t)selectedGuidCount
{
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v3 = [selectedMessageGuids count];

  return v3;
}

- (id)selectedGuidAtIndex:(unint64_t)index
{
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v5 = [selectedMessageGuids objectAtIndex:index];

  return v5;
}

- (void)removeAllSelectedMessageGuidsExceptTrackedGuid
{
  v26 = *MEMORY[0x1E69E9840];
  trackedGuid = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v6 = [selectedMessageGuids countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(selectedMessageGuids);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (([v10 isEqualToString:trackedGuid] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [selectedMessageGuids countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CKTranscriptBalloonSelectionManager *)self removeSelectedMessageGuid:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)trackSelectedGuid:(id)guid selectionState:(id)state
{
  stateCopy = state;
  guidCopy = guid;
  [(CKTranscriptBalloonSelectionManager *)self setTrackedGuid:guidCopy];
  [(CKTranscriptBalloonSelectionManager *)self addSelectedMessageGuid:guidCopy selectionState:stateCopy];
}

- (id)selectedStateForGuid:(id)guid
{
  if (guid)
  {
    guidCopy = guid;
    selectedStates = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
    v6 = [selectedStates objectForKey:guidCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTrackedGuid
{
  trackedGuid = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  [(CKTranscriptBalloonSelectionManager *)self removeSelectedMessageGuid:trackedGuid];

  [(CKTranscriptBalloonSelectionManager *)self setTrackedGuid:0];
}

- (void)setSelectedGuids:(id)guids
{
  v41 = *MEMORY[0x1E69E9840];
  guidsCopy = guids;
  trackedGuid = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selectedMessageGuids = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v8 = [selectedMessageGuids countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(selectedMessageGuids);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [guidsCopy objectForKey:v12];
        if (v13)
        {
        }

        else if (!trackedGuid || ([v12 isEqualToString:trackedGuid] & 1) == 0)
        {
          [array addObject:v12];
        }
      }

      v9 = [selectedMessageGuids countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(CKTranscriptBalloonSelectionManager *)self removeSelectedMessageGuid:*(*(&v30 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v16);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = guidsCopy;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * k);
        if (![(CKTranscriptBalloonSelectionManager *)self isMessageGuidSelected:v24, v26])
        {
          v25 = [v19 objectForKey:v24];
          [(CKTranscriptBalloonSelectionManager *)self addSelectedMessageGuid:v24 selectionState:v25];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }
}

- (CKTranscriptBalloonSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKTranscriptBalloonSelectionManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end