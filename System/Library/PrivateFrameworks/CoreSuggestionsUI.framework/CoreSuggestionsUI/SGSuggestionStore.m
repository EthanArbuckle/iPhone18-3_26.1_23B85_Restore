@interface SGSuggestionStore
- (NSArray)suggestions;
- (SGSuggestionDelegate)suggestionDelegate;
- (SGSuggestionStore)init;
- (id)sectionWithItem:(id)a3;
- (int64_t)hostApp;
- (void)addSuggestion:(id)a3;
- (void)dismissAllSuggestions;
- (void)list:(id)a3 didAddItem:(id)a4 atIndex:(unint64_t)a5;
- (void)list:(id)a3 didRemoveItem:(id)a4 atIndex:(unint64_t)a5;
- (void)lockNotifications;
- (void)removeSuggestion:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)unlockNotifications;
- (void)updateSuggestion:(id)a3;
@end

@implementation SGSuggestionStore

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

- (void)list:(id)a3 didRemoveItem:(id)a4 atIndex:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_notificationsLockCount)
  {
    if (v8 != self)
    {
      [(NSMutableArray *)self->_suggestions removeObject:v9];
    }

    self->_modified = 1;
  }

  else if (v8 == self)
  {
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v26 = a5;
      _os_log_debug_impl(&dword_1B8182000, v17, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Removed notification sent out for index:(%{public}lu)", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a5, @"SGListNotificationKeyItemRemoved", @"SGListNotificationKeyItemIndex", v9}];
    v22[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:2];
    [v18 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v8 userInfo:v20];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_suggestions indexOfObject:v9];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[SGSuggestionStore list:didRemoveItem:atIndex:]", "SGSuggestionStore.m", 282, "globalIndex!=NSNotFound");
    }

    v11 = v10;
    [(NSMutableArray *)self->_suggestions removeObject:v9];
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v26 = a5;
      v27 = 2050;
      v28 = v11;
      _os_log_debug_impl(&dword_1B8182000, v12, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Removed notification sent out for index:(%{public}lu, %{public}lu)", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v24[0] = v9;
    v23[0] = @"SGListNotificationKeyItemRemoved";
    v23[1] = @"SGListNotificationKeyItemIndex";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v24[1] = v14;
    v23[2] = @"SGListNotificationKeyItemGlobalIndex";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    v24[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    [v13 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v8 userInfo:v16];
  }
}

- (void)list:(id)a3 didAddItem:(id)a4 atIndex:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_notificationsLockCount)
  {
    if (v8 != self)
    {
      [(NSMutableArray *)self->_suggestions addObject:v9];
      v10 = [(SGList *)v8 comparator];

      if (v10)
      {
        suggestions = self->_suggestions;
        v12 = [(SGList *)v8 comparator];
        [(NSMutableArray *)suggestions sortUsingComparator:v12];
      }
    }

    self->_modified = 1;
  }

  else if (v8 == self)
  {
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v32 = a5;
      _os_log_debug_impl(&dword_1B8182000, v23, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Added notification sent out for index (%{public}lu)", buf, 0xCu);
    }

    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a5, @"SGListNotificationKeyItemAdded", @"SGListNotificationKeyItemIndex", v9}];
    v28[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:2];
    [v24 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v8 userInfo:v26];
  }

  else
  {
    [(NSMutableArray *)self->_suggestions addObject:v9];
    v13 = [(SGList *)v8 comparator];

    if (v13)
    {
      v14 = self->_suggestions;
      v15 = [(SGList *)v8 comparator];
      [(NSMutableArray *)v14 sortUsingComparator:v15];
    }

    v16 = [(NSMutableArray *)self->_suggestions indexOfObject:v9];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __assert_rtn("[SGSuggestionStore list:didAddItem:atIndex:]", "SGSuggestionStore.m", 249, "globalIndex!=NSNotFound");
    }

    v17 = v16;
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v32 = a5;
      v33 = 2050;
      v34 = v17;
      _os_log_debug_impl(&dword_1B8182000, v18, OS_LOG_TYPE_DEBUG, "SGSuggestionStore: Added notification sent out for :(%{public}lu, %{public}lu) index", buf, 0x16u);
    }

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v30[0] = v9;
    v29[0] = @"SGListNotificationKeyItemAdded";
    v29[1] = @"SGListNotificationKeyItemIndex";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v30[1] = v20;
    v29[2] = @"SGListNotificationKeyItemGlobalIndex";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    v30[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [v19 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v8 userInfo:v22];
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
      v7 = [(SGList *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(SGList *)self delegate];
        [v9 suggestionsStoreChanged:self];
      }

      else
      {
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        [v9 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:self userInfo:0];
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
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];

    if ([v5 isEqualToString:*MEMORY[0x1E69992D0]])
    {
      v6 = 0;
    }

    else
    {
      if (![v5 isEqualToString:*MEMORY[0x1E69992D8]])
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

- (void)setSuggestions:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v10 = v4;
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

- (void)updateSuggestion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SGSuggestionStore *)self sectionWithItem:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 indexOfItem:v4];
    v8 = [(NSMutableArray *)self->_suggestions indexOfObject:v4];
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

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v17[0] = v4;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v7, @"SGListNotificationKeyItemUpdated", @"SGListNotificationKeyItemIndex"}];
      v17[1] = v13;
      v16[2] = @"SGListNotificationKeyItemGlobalIndex";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v17[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      [v12 postNotificationName:@"com.apple.coresuggestionsui.SGListDidChangeNotification" object:v6 userInfo:v15];
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
        v9 = [v8 suggestionDismissAction];
        [v9 execute];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(SGList *)self removeAllItems];
  [(SGSuggestionStore *)self unlockNotifications];
}

- (void)removeSuggestion:(id)a3
{
  v6 = a3;
  v4 = [(SGSuggestionStore *)self sectionWithItem:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeItem:v6];
    if (![v5 count])
    {
      [(SGList *)self removeItem:v5];
    }
  }

  [v6 setSuggestionDelegate:0];
}

- (void)addSuggestion:(id)a3
{
  v11 = a3;
  v4 = [(SGSuggestionStore *)self sectionWithItem:?];
  if (v4)
  {
    v5 = v4;
    v6 = v11;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setDelegate:self];
    [v5 addItem:v11];
    v4 = self;
    v6 = v5;
  }

  [v4 addItem:v6];
  if (!self->_suggestions)
  {
    v7 = objc_opt_new();
    suggestions = self->_suggestions;
    self->_suggestions = v7;
  }

  v9 = [(SGSuggestionStore *)self suggestionDelegate];

  if (v9)
  {
    v10 = [(SGSuggestionStore *)self suggestionDelegate];
    [v11 setSuggestionDelegate:v10];
  }
}

- (id)sectionWithItem:(id)a3
{
  v4 = [a3 suggestionCategory];
  v5 = [v4 suggestionCategoryId];

  if ([(SGList *)self count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(SGList *)self itemAtIndex:v6];
      v8 = [v7 category];
      v9 = [v8 suggestionCategoryId];
      v10 = [v5 isEqual:v9];

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