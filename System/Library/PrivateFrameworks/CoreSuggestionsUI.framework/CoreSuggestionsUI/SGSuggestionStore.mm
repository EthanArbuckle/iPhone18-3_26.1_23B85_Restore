@interface SGSuggestionStore
- (NSArray)suggestions;
- (SGSuggestionDelegate)suggestionDelegate;
- (SGSuggestionStore)init;
- (id)sectionWithItem:(id)item;
- (int64_t)hostApp;
- (void)addSuggestion:(id)suggestion;
- (void)dismissAllSuggestions;
- (void)list:(id)list didAddItem:(id)item atIndex:(unint64_t)index;
- (void)list:(id)list didRemoveItem:(id)item atIndex:(unint64_t)index;
- (void)lockNotifications;
- (void)removeSuggestion:(id)suggestion;
- (void)setSuggestions:(id)suggestions;
- (void)unlockNotifications;
- (void)updateSuggestion:(id)suggestion;
@end

@implementation SGSuggestionStore

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

- (void)list:(id)list didRemoveItem:(id)item atIndex:(unint64_t)index
{
  v29 = *MEMORY[0x1E69E9840];
  listCopy = list;
  itemCopy = item;
  if (self->_notificationsLockCount)
  {
    if (listCopy != self)
    {
      [(NSMutableArray *)self->_suggestions removeObject:itemCopy];
    }

    self->_modified = 1;
  }

  else if (listCopy == self)
  {
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      indexCopy2 = index;
      _os_log_debug_impl(&dword_1B8182000, v17, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Removed notification sent out for index:(%{public}lu)", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{index, @"SGListNotificationKeyItemRemoved", @"SGListNotificationKeyItemIndex", itemCopy}];
    v22[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:2];
    [defaultCenter postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:listCopy userInfo:v20];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_suggestions indexOfObject:itemCopy];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[SGSuggestionStore list:didRemoveItem:atIndex:]", "SGSuggestionStore.m", 282, "globalIndex!=NSNotFound");
    }

    v11 = v10;
    [(NSMutableArray *)self->_suggestions removeObject:itemCopy];
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      indexCopy2 = index;
      v27 = 2050;
      v28 = v11;
      _os_log_debug_impl(&dword_1B8182000, v12, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Removed notification sent out for index:(%{public}lu, %{public}lu)", buf, 0x16u);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v24[0] = itemCopy;
    v23[0] = @"SGListNotificationKeyItemRemoved";
    v23[1] = @"SGListNotificationKeyItemIndex";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v24[1] = v14;
    v23[2] = @"SGListNotificationKeyItemGlobalIndex";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    v24[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    [defaultCenter2 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:listCopy userInfo:v16];
  }
}

- (void)list:(id)list didAddItem:(id)item atIndex:(unint64_t)index
{
  v35 = *MEMORY[0x1E69E9840];
  listCopy = list;
  itemCopy = item;
  if (self->_notificationsLockCount)
  {
    if (listCopy != self)
    {
      [(NSMutableArray *)self->_suggestions addObject:itemCopy];
      comparator = [(SGList *)listCopy comparator];

      if (comparator)
      {
        suggestions = self->_suggestions;
        comparator2 = [(SGList *)listCopy comparator];
        [(NSMutableArray *)suggestions sortUsingComparator:comparator2];
      }
    }

    self->_modified = 1;
  }

  else if (listCopy == self)
  {
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      indexCopy2 = index;
      _os_log_debug_impl(&dword_1B8182000, v23, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Added notification sent out for index (%{public}lu)", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{index, @"SGListNotificationKeyItemAdded", @"SGListNotificationKeyItemIndex", itemCopy}];
    v28[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:2];
    [defaultCenter postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:listCopy userInfo:v26];
  }

  else
  {
    [(NSMutableArray *)self->_suggestions addObject:itemCopy];
    comparator3 = [(SGList *)listCopy comparator];

    if (comparator3)
    {
      v14 = self->_suggestions;
      comparator4 = [(SGList *)listCopy comparator];
      [(NSMutableArray *)v14 sortUsingComparator:comparator4];
    }

    v16 = [(NSMutableArray *)self->_suggestions indexOfObject:itemCopy];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[SGSuggestionStore list:didAddItem:atIndex:]", "SGSuggestionStore.m", 249, "globalIndex!=NSNotFound");
    }

    v17 = v16;
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      indexCopy2 = index;
      v33 = 2050;
      v34 = v17;
      _os_log_debug_impl(&dword_1B8182000, v18, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Added notification sent out for :(%{public}lu, %{public}lu) index", buf, 0x16u);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v30[0] = itemCopy;
    v29[0] = @"SGListNotificationKeyItemAdded";
    v29[1] = @"SGListNotificationKeyItemIndex";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v30[1] = v20;
    v29[2] = @"SGListNotificationKeyItemGlobalIndex";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    v30[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [defaultCenter2 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:listCopy userInfo:v22];
  }
}

- (void)unlockNotifications
{
  notificationsLockCount = self->_notificationsLockCount;
  v3 = notificationsLockCount == 1;
  v4 = notificationsLockCount < 1;
  v5 = notificationsLockCount - 1;
  if (!v4)
  {
    self->_notificationsLockCount = v5;
    if (v3 && self->_modified)
    {
      delegate = [(SGList *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(SGList *)self delegate];
        [delegate2 suggestionsStoreChanged:self];
      }

      else
      {
        delegate2 = [MEMORY[0x1E696AD88] defaultCenter];
        [delegate2 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:self userInfo:0];
      }
    }
  }
}

- (void)lockNotifications
{
  notificationsLockCount = self->_notificationsLockCount;
  self->_notificationsLockCount = notificationsLockCount + 1;
  if (!notificationsLockCount)
  {
    self->_modified = 0;
  }
}

- (int64_t)hostApp
{
  result = self->_hostApp;
  if (result == 2)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ([bundleIdentifier isEqualToString:*MEMORY[0x1E69992D0]])
    {
      v6 = 0;
    }

    else
    {
      if (![bundleIdentifier isEqualToString:*MEMORY[0x1E69992D8]])
      {
LABEL_7:

        return self->_hostApp;
      }

      v6 = 1;
    }

    self->_hostApp = v6;
    goto LABEL_7;
  }

  return result;
}

- (NSArray)suggestions
{
  v2 = [(NSMutableArray *)self->_suggestions copy];

  return v2;
}

- (void)setSuggestions:(id)suggestions
{
  v25 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  [(SGSuggestionStore *)self lockNotifications];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9++) setSuggestionDelegate:0];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  [(SGList *)self removeAllItems];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = suggestionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SGSuggestionStore *)self addSuggestion:*(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(SGSuggestionStore *)self unlockNotifications];
}

- (void)updateSuggestion:(id)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = [(SGSuggestionStore *)self sectionWithItem:suggestionCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 indexOfItem:suggestionCopy];
    v8 = [(NSMutableArray *)self->_suggestions indexOfObject:suggestionCopy];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v19 = v7;
        v20 = 2050;
        v21 = v10;
        _os_log_debug_impl(&dword_1B8182000, v11, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Updated notification sent out for :(%{public}lu, %{public}lu) index", buf, 0x16u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v17[0] = suggestionCopy;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v7, @"SGListNotificationKeyItemUpdated", @"SGListNotificationKeyItemIndex"}];
      v17[1] = v13;
      v16[2] = @"SGListNotificationKeyItemGlobalIndex";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v17[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      [defaultCenter postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v6 userInfo:v15];
    }
  }
}

- (void)dismissAllSuggestions
{
  v15 = *MEMORY[0x1E69E9840];
  [(SGSuggestionStore *)self lockNotifications];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableArray *)self->_suggestions copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setSuggestionDelegate:0];
        suggestionDismissAction = [v8 suggestionDismissAction];
        [suggestionDismissAction execute];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(SGList *)self removeAllItems];
  [(SGSuggestionStore *)self unlockNotifications];
}

- (void)removeSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = [(SGSuggestionStore *)self sectionWithItem:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeItem:suggestionCopy];
    if (![v5 count])
    {
      [(SGList *)self removeItem:v5];
    }
  }

  [suggestionCopy setSuggestionDelegate:0];
}

- (void)addSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = [(SGSuggestionStore *)self sectionWithItem:?];
  if (selfCopy)
  {
    v5 = selfCopy;
    v6 = suggestionCopy;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setDelegate:self];
    [v5 addItem:suggestionCopy];
    selfCopy = self;
    v6 = v5;
  }

  [selfCopy addItem:v6];
  if (!self->_suggestions)
  {
    v7 = objc_opt_new();
    suggestions = self->_suggestions;
    self->_suggestions = v7;
  }

  suggestionDelegate = [(SGSuggestionStore *)self suggestionDelegate];

  if (suggestionDelegate)
  {
    suggestionDelegate2 = [(SGSuggestionStore *)self suggestionDelegate];
    [suggestionCopy setSuggestionDelegate:suggestionDelegate2];
  }
}

- (id)sectionWithItem:(id)item
{
  suggestionCategory = [item suggestionCategory];
  suggestionCategoryId = [suggestionCategory suggestionCategoryId];

  if ([(SGList *)self count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(SGList *)self itemAtIndex:v6];
      category = [v7 category];
      suggestionCategoryId2 = [category suggestionCategoryId];
      v10 = [suggestionCategoryId isEqual:suggestionCategoryId2];

      if (v10)
      {
        break;
      }

      if (++v6 >= [(SGList *)self count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (SGSuggestionStore)init
{
  v7.receiver = self;
  v7.super_class = SGSuggestionStore;
  v2 = [(SGList *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SGList *)v2 setDelegate:v2];
    v4 = objc_opt_new();
    suggestions = v3->_suggestions;
    v3->_suggestions = v4;

    v3->_hostApp = 2;
  }

  return v3;
}

@end