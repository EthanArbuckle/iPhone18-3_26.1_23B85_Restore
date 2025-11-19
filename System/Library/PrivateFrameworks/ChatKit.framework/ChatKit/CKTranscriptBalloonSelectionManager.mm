@interface CKTranscriptBalloonSelectionManager
- (BOOL)isMessageGuidSelected:(id)a3;
- (CKTranscriptBalloonSelectionManager)init;
- (CKTranscriptBalloonSelectionManagerDataSource)dataSource;
- (CKTranscriptBalloonSelectionManagerDelegate)delegate;
- (NSArray)chatItems;
- (id)_chatItemForGUID:(id)a3;
- (id)selectedGuidAtIndex:(unint64_t)a3;
- (id)selectedStateForGuid:(id)a3;
- (int64_t)indexOfGuid:(id)a3 inChatItems:(id)a4;
- (unint64_t)selectedGuidCount;
- (void)addSelectedMessageGuid:(id)a3 selectionState:(id)a4;
- (void)removeAllSelectedMessageGuids;
- (void)removeAllSelectedMessageGuidsExceptTrackedGuid;
- (void)removeSelectedMessageGuid:(id)a3;
- (void)removeTrackedGuid;
- (void)setSelectedGuids:(id)a3;
- (void)trackSelectedGuid:(id)a3 selectionState:(id)a4;
@end

@implementation CKTranscriptBalloonSelectionManager

- (CKTranscriptBalloonSelectionManager)init
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBalloonSelectionManager;
  v2 = [(CKTranscriptBalloonSelectionManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    selectedMessageGuids = v2->_selectedMessageGuids;
    v2->_selectedMessageGuids = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    selectedStates = v2->_selectedStates;
    v2->_selectedStates = v5;
  }

  return v2;
}

- (id)_chatItemForGUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 IMChatItem];
        v11 = [v10 guid];
        v12 = [v4 isEqualToString:v11];

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
  v3 = [(CKTranscriptBalloonSelectionManager *)self dataSource];
  v4 = [v3 selectionManagerChatItems:self];

  return v4;
}

- (int64_t)indexOfGuid:(id)a3 inChatItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CKTranscriptBalloonSelectionManager_indexOfGuid_inChatItems___block_invoke;
  v10[3] = &unk_1E72ED100;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v10];
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

- (void)addSelectedMessageGuid:(id)a3 selectionState:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Requesting to add guid: %@", &buf, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(CKTranscriptBalloonSelectionManager *)self chatItems];
    v10 = [(CKTranscriptBalloonSelectionManager *)self indexOfGuid:v6 inChatItems:v9];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to add guid: %@, index not found", &buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = [v9 objectAtIndexedSubscript:v10];
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
        v26 = self;
        v27 = v9;
        v31 = v10;
        v14 = v6;
        v28 = v14;
        v15 = v7;
        v29 = v15;
        p_buf = &buf;
        [(NSMutableOrderedSet *)selectedMessageGuids enumerateObjectsUsingBlock:&v22];
        if ((*(*(&buf + 1) + 24) & 1) == 0)
        {
          [(NSMutableOrderedSet *)self->_selectedMessageGuids addObject:v14, v22, v23, v24, v25, v26, v27, v28];
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
            v19 = [(CKTranscriptBalloonSelectionManager *)self selectedGuidCount];
            *v32 = 138412546;
            v33 = v14;
            v34 = 2048;
            v35 = v19;
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
          *(&buf + 4) = v6;
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

- (void)removeSelectedMessageGuid:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Requesting to remove guid: %@", &v12, 0xCu);
    }
  }

  if ([v4 length])
  {
    v6 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
    [v6 removeObject:v4];

    v7 = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
    [v7 removeObjectForKey:v4];

    v8 = [(CKTranscriptBalloonSelectionManager *)self delegate];
    v9 = [(CKTranscriptBalloonSelectionManager *)self _chatItemForGUID:v4];
    [v8 selectionManager:self didRemoveChatItem:v9];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKTranscriptBalloonSelectionManager *)self selectedGuidCount];
        v12 = 138412546;
        v13 = v4;
        v14 = 2048;
        v15 = v11;
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
  v4 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [(CKTranscriptBalloonSelectionManager *)self delegate];
        v10 = [(CKTranscriptBalloonSelectionManager *)self _chatItemForGUID:v8];
        [v9 selectionManager:self didRemoveChatItem:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  [v11 removeAllObjects];

  v12 = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
  [v12 removeAllObjects];

  v13 = [(CKTranscriptBalloonSelectionManager *)self delegate];
  [v13 selectionManagerDidRemoveAllSelectedChatItems:self];
}

- (BOOL)isMessageGuidSelected:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  if ([v5 containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
    v6 = [v7 isEqualToString:v4];
  }

  return v6;
}

- (unint64_t)selectedGuidCount
{
  v2 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v3 = [v2 count];

  return v3;
}

- (id)selectedGuidAtIndex:(unint64_t)a3
{
  v4 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (void)removeAllSelectedMessageGuidsExceptTrackedGuid
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (([v10 isEqualToString:v3] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (void)trackSelectedGuid:(id)a3 selectionState:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CKTranscriptBalloonSelectionManager *)self setTrackedGuid:v7];
  [(CKTranscriptBalloonSelectionManager *)self addSelectedMessageGuid:v7 selectionState:v6];
}

- (id)selectedStateForGuid:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CKTranscriptBalloonSelectionManager *)self selectedStates];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTrackedGuid
{
  v3 = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  [(CKTranscriptBalloonSelectionManager *)self removeSelectedMessageGuid:v3];

  [(CKTranscriptBalloonSelectionManager *)self setTrackedGuid:0];
}

- (void)setSelectedGuids:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptBalloonSelectionManager *)self trackedGuid];
  v6 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [(CKTranscriptBalloonSelectionManager *)self selectedMessageGuids];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v4 objectForKey:v12];
        if (v13)
        {
        }

        else if (!v5 || ([v12 isEqualToString:v5] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v6;
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
  v19 = v4;
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