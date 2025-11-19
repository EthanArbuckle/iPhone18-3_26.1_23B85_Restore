@interface MessageListSelectionModel
- (BOOL)_allChildrenSelected:(id)a3;
- (BOOL)_trackItemIDs:(id)a3 updateCount:(BOOL)a4;
- (BOOL)_untrackItemIDs:(id)a3 updateCount:(BOOL)a4;
- (BOOL)isSelectedItemID:(id)a3;
- (BOOL)isSelectionValid;
- (EMMailbox)predictedMoveMailbox;
- (MessageListSelectionModel)initWithDataSource:(id)a3 delegate:(id)a4;
- (MessageListSelectionModelDataSource)dataSource;
- (MessageListSelectionModelDelegate)delegate;
- (NSString)ef_publicDescription;
- (id)cascadedItemIDsForItemID:(id)a3 isSelecting:(BOOL)a4;
- (id)currentMessageListItemSelection;
- (id)deselectItemWithItemID:(id)a3;
- (id)itemIDs;
- (id)itemIDsToUnselectForItemID:(id)a3;
- (id)selectItemWithItemID:(id)a3;
- (id)selectionWithMessageListItems:(id)a3 mailboxes:(id)a4;
- (int64_t)count;
- (unint64_t)deleteSelectionState;
- (void)__updatePredictionWithSelection:(id)a3;
- (void)_fetchMissingMessageListItems;
- (void)_scheduleMailboxPredictionUpdate;
- (void)_untrackAllItemIDs;
- (void)configureSelectionForItemID:(id)a3;
- (void)didExpandThreadItemID:(id)a3 addedItemIDs:(id)a4;
- (void)disableSelectAll;
- (void)enableSelectAllWithMailboxes:(id)a3;
- (void)preserveSelection;
- (void)setMailboxPredictionFuture:(id)a3;
- (void)setMultipleSelectionActive:(BOOL)a3;
- (void)setPerformingDataSourceUpdates:(BOOL)a3;
- (void)willCollapseThreadItemID:(id)a3;
@end

@implementation MessageListSelectionModel

uint64_t ___ef_log_MessageListSelectionModel_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MessageListSelectionModel");
  v1 = _ef_log_MessageListSelectionModel_log;
  _ef_log_MessageListSelectionModel_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MessageListSelectionModel)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MessageListSelectionModel;
  v8 = [(MessageListSelectionModel *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = objc_alloc_init(TrackedMessageListItems);
    trackedItems = v9->_trackedItems;
    v9->_trackedItems = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsPendingConfiguration = v9->_itemIDsPendingConfiguration;
    v9->_itemIDsPendingConfiguration = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemIDsMissingMessageListItem = v9->_itemIDsMissingMessageListItem;
    v9->_itemIDsMissingMessageListItem = v14;

    v9->_type = 0;
  }

  return v9;
}

- (int64_t)count
{
  if ([(MessageListSelectionModel *)self type])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(MessageListSelectionModel *)self trackedItemsCount];
}

- (id)itemIDs
{
  v3 = [(MessageListSelectionModel *)self isSelectAll];
  v4 = [(MessageListSelectionModel *)self trackedItems];
  v5 = [v4 itemIDs];

  if (v3)
  {
    v6 = [(MessageListSelectionModel *)self dataSource];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__MessageListSelectionModel_itemIDs__block_invoke;
    v10[3] = &unk_2781896E8;
    v11 = v6;
    v12 = self;
    v7 = v6;
    v8 = [v5 ef_filter:v10];

    v5 = v8;
  }

  return v5;
}

- (BOOL)isSelectionValid
{
  if ([(MessageListSelectionModel *)self isSelectAll])
  {
    return 1;
  }

  v4 = [(MessageListSelectionModel *)self itemIDs];
  v3 = [v4 count] != 0;

  return v3;
}

- (id)currentMessageListItemSelection
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MessageListSelectionModel *)self trackedItems];
  v4 = [v3 messageListItems];
  v5 = [v4 count];
  if (v5 != [v3 count])
  {
    v6 = _ef_log_MessageListSelectionModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v3 count];
      v13 = 138543874;
      v14 = v11;
      v15 = 2048;
      v16 = self;
      v17 = 2048;
      v18 = v12 - [v4 count];
      _os_log_error_impl(&dword_214A5E000, v6, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Message list selection is missing %lu items", &v13, 0x20u);
    }
  }

  v7 = [(MessageListSelectionModel *)self trackedMailboxes];
  v8 = [(MessageListSelectionModel *)self selectionWithMessageListItems:v4 mailboxes:v7];

  return v8;
}

- (id)selectionWithMessageListItems:(id)a3 mailboxes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[MessageListSelectionModel isSelectionValid](self, "isSelectionValid") && ([v6 count] || -[MessageListSelectionModel isSelectAll](self, "isSelectAll")) && (objc_msgSend(v7, "count") || !-[MessageListSelectionModel isSelectAll](self, "isSelectAll")))
  {
    v9 = [(MessageListSelectionModel *)self isSelectAll];
    v10 = objc_alloc(MEMORY[0x277D25998]);
    if (v9)
    {
      v11 = [v10 initWithMailboxes:v7 excludedMessageListItems:v6];
    }

    else
    {
      v11 = [v10 initWithMessageListItems:v6];
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)deleteSelectionState
{
  result = [(MessageListSelectionModel *)self count];
  if (result)
  {
    v4 = [(MessageListSelectionModel *)self count];
    v5 = v4 == [(MessageListSelectionModel *)self trackedItemsWillMoveToTrash];
    v6 = [(MessageListSelectionModel *)self count];
    v7 = v6 == [(MessageListSelectionModel *)self trackedItemsSupportArchiving];
    v8 = [(MessageListSelectionModel *)self count];
    return (v5 || 4 * v7) | (2 * (v8 == [(MessageListSelectionModel *)self trackedItemsArchiveByDefault]));
  }

  return result;
}

- (id)cascadedItemIDsForItemID:(id)a3 isSelecting:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(MessageListSelectionModel *)self dataSource];
  if ([v8 selectionModel:self isThreadedItemID:v7])
  {
    v9 = [v8 selectionModel:self isItemIDExpandedThread:v7];
    v10 = _ef_log_MessageListSelectionModel();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v21 = 138544386;
      v22 = v11;
      v23 = 2114;
      v24 = v7;
      v25 = 1024;
      v26 = v4;
      v27 = 1024;
      v28 = 1;
      v29 = 1024;
      LODWORD(v30) = v9;
      _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - itemID: %{public}@, isSelecting: %{BOOL}d, isThread: %{BOOL}d, isExpanded: %{BOOL}d", &v21, 0x28u);
    }

    if (v9)
    {
      v12 = [v8 selectionModel:self itemIDsInExpandedThread:v7];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v13 = [v8 selectionModel:self threadItemIDForItemInExpandedThread:v7];
    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v8 selectionModel:self itemIDsInExpandedThread:v13];
      v16 = [v14 setWithArray:v15];

      v17 = [(MessageListSelectionModel *)self _allChildrenSelected:v16];
      v18 = _ef_log_MessageListSelectionModel();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        v21 = 138544642;
        v22 = v19;
        v23 = 2114;
        v24 = v7;
        v25 = 1024;
        v26 = v4;
        v27 = 1024;
        v28 = v17;
        v29 = 2114;
        v30 = v13;
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_214A5E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - itemID: %{public}@, isSelecting: %{BOOL}d, allChildrenSelected: %{BOOL}d, parent: %{public}@, children: %{public}@", &v21, 0x36u);
      }

      if (v17 == v4)
      {
        v12 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v13];
      }

      else
      {
        v12 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  return v12;
}

- (id)itemIDsToUnselectForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSelectionModel *)self dataSource];
  if ([v5 selectionModel:self isThreadedItemID:v4] && objc_msgSend(v5, "selectionModel:isItemIDExpandedThread:", self, v4))
  {
    v6 = [v5 selectionModel:self itemIDsInExpandedThread:v4];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)_allChildrenSelected:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSelectionModel *)self trackedItems];
  v6 = [v5 itemIDsSet];

  if ([(MessageListSelectionModel *)self isSelectAll])
  {
    if ([v6 count])
    {
      v7 = [v6 intersectsSet:v4] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = [v4 isSubsetOfSet:v6];
  }

  return v7;
}

void __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ef_log_MessageListSelectionModel();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2_cold_1(a1, v3, v4);
  }
}

- (BOOL)_trackItemIDs:(id)a3 updateCount:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [(MessageListSelectionModel *)self trackedItems];
    v8 = [v7 itemIDsSet];
    v9 = [MEMORY[0x277CBEB58] setWithArray:v6];
    [v9 minusSet:v8];
    if ([v9 count])
    {
      v10 = [v9 allObjects];
      v11 = [(MessageListSelectionModel *)self dataSource];
      v40 = v11;
      v41 = v10;
      if ([(MessageListSelectionModel *)self isPerformingDataSourceUpdates])
      {
        v12 = _ef_log_MessageListSelectionModel();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138544130;
          v53 = v14;
          v54 = 2048;
          v55 = self;
          v56 = 2048;
          v57 = [v10 count];
          v58 = 2114;
          v59 = v10;
          _os_log_impl(&dword_214A5E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Data source is performing updates, load message list items (%lu) once completed: %{public}@", buf, 0x2Au);
        }

        v15 = [(MessageListSelectionModel *)self itemIDsMissingMessageListItem];
        [v15 addObjectsFromArray:v10];

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = v10;
        v17 = [v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [v7 trackMessageListItemWithItemID:*(*(&v46 + 1) + 8 * i)];
            }

            v18 = [v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v37 = v9;
        v38 = v6;
        v39 = v4;
        v21 = [v11 selectionModel:self messageListItemsForItemIDs:v10];
        v22 = [v21 ef_map:&__block_literal_global_48];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = v22;
        v23 = [v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          v26 = *MEMORY[0x277D07110];
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v16);
              }

              v28 = *(*(&v42 + 1) + 8 * j);
              if ((*(v26 + 16))(v26, v28))
              {
                [v7 trackmessageListItem:v28];
              }

              else
              {
                v29 = _ef_log_MessageListSelectionModel();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = objc_opt_class();
                  v31 = NSStringFromClass(v30);
                  *buf = 138543618;
                  v53 = v31;
                  v54 = 2048;
                  v55 = self;
                  _os_log_error_impl(&dword_214A5E000, v29, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Skip tracking message -- message is null", buf, 0x16u);
                }
              }
            }

            v24 = [v16 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v24);
        }

        v4 = v39;
        v6 = v38;
        v9 = v37;
      }

      if (v4)
      {
        v32 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsCount:](self, "setTrackedItemsCount:", -[MessageListSelectionModel trackedItemsCount](self, "trackedItemsCount") + [v40 selectionModel:self countForItemIDs:v32]);

        v33 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsWillMoveToTrash:](self, "setTrackedItemsWillMoveToTrash:", -[MessageListSelectionModel trackedItemsWillMoveToTrash](self, "trackedItemsWillMoveToTrash") + [v40 selectionModel:self countDeleteMovesToTrashForItemIDs:v33]);

        v34 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsSupportArchiving:](self, "setTrackedItemsSupportArchiving:", -[MessageListSelectionModel trackedItemsSupportArchiving](self, "trackedItemsSupportArchiving") + [v40 selectionModel:self countSupportsArchivingForItemIDs:v34]);

        v35 = [v9 allObjects];
        -[MessageListSelectionModel setTrackedItemsArchiveByDefault:](self, "setTrackedItemsArchiveByDefault:", -[MessageListSelectionModel trackedItemsArchiveByDefault](self, "trackedItemsArchiveByDefault") + [v40 selectionModel:self countShouldArchiveByDefaultForItemIDs:v35]);
      }

      [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_untrackItemIDs:(id)a3 updateCount:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:v6];
    v8 = [(MessageListSelectionModel *)self trackedItems];
    v9 = [v8 itemIDsSet];
    [v7 intersectSet:v9];
    if ([v7 count])
    {
      v10 = [v7 allObjects];
      [v8 untrackMessageListItemsWithItemIDs:v10];

      if (v4)
      {
        v11 = [(MessageListSelectionModel *)self dataSource];
        v12 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsCount:](self, "setTrackedItemsCount:", -[MessageListSelectionModel trackedItemsCount](self, "trackedItemsCount") - [v11 selectionModel:self countForItemIDs:v12]);

        v13 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsWillMoveToTrash:](self, "setTrackedItemsWillMoveToTrash:", -[MessageListSelectionModel trackedItemsWillMoveToTrash](self, "trackedItemsWillMoveToTrash") - [v11 selectionModel:self countDeleteMovesToTrashForItemIDs:v13]);

        v14 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsSupportArchiving:](self, "setTrackedItemsSupportArchiving:", -[MessageListSelectionModel trackedItemsSupportArchiving](self, "trackedItemsSupportArchiving") - [v11 selectionModel:self countSupportsArchivingForItemIDs:v14]);

        v15 = [v7 allObjects];
        -[MessageListSelectionModel setTrackedItemsArchiveByDefault:](self, "setTrackedItemsArchiveByDefault:", -[MessageListSelectionModel trackedItemsArchiveByDefault](self, "trackedItemsArchiveByDefault") - [v11 selectionModel:self countShouldArchiveByDefaultForItemIDs:v15]);
      }

      [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_untrackAllItemIDs
{
  v3 = [(MessageListSelectionModel *)self trackedItems];
  [v3 untrackAllMessageListItems];

  [(MessageListSelectionModel *)self setTrackedItemsCount:0];
  [(MessageListSelectionModel *)self setTrackedItemsWillMoveToTrash:0];
  [(MessageListSelectionModel *)self setTrackedItemsSupportArchiving:0];
  [(MessageListSelectionModel *)self setTrackedItemsArchiveByDefault:0];

  [(MessageListSelectionModel *)self _scheduleMailboxPredictionUpdate];
}

- (id)selectItemWithItemID:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageListSelectionModel *)self isSelectAll];
    v6 = [(MessageListSelectionModel *)self itemIDsToUnselectForItemID:v4];
    if (v5)
    {
      [(MessageListSelectionModel *)self _trackItemIDs:v6 updateCount:1];
      v14[0] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v8 = [(MessageListSelectionModel *)self _untrackItemIDs:v7 updateCount:1];

      v9 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:v4 isSelecting:1];
      [(MessageListSelectionModel *)self _untrackItemIDs:v9 updateCount:!v8];
    }

    else
    {
      [(MessageListSelectionModel *)self _untrackItemIDs:v6 updateCount:1];
      v13 = v4;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      v11 = [(MessageListSelectionModel *)self _trackItemIDs:v10 updateCount:1];

      v9 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:v4 isSelecting:1];
      [(MessageListSelectionModel *)self _trackItemIDs:v9 updateCount:!v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)deselectItemWithItemID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(MessageListSelectionModel *)self isSelectAll])
    {
      v12[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v6 = [(MessageListSelectionModel *)self _trackItemIDs:v5 updateCount:1];

      v7 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:v4 isSelecting:0];
      [(MessageListSelectionModel *)self _trackItemIDs:v7 updateCount:!v6];
    }

    else
    {
      v11 = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
      v9 = [(MessageListSelectionModel *)self _untrackItemIDs:v8 updateCount:1];

      v7 = [(MessageListSelectionModel *)self cascadedItemIDsForItemID:v4 isSelecting:0];
      [(MessageListSelectionModel *)self _untrackItemIDs:v7 updateCount:!v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)willCollapseThreadItemID:(id)a3
{
  v8 = a3;
  v4 = [MessageListSelectionModel cascadedItemIDsForItemID:"cascadedItemIDsForItemID:isSelecting:" isSelecting:?];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  if (![(MessageListSelectionModel *)self _allChildrenSelected:v5])
  {
    v6 = [(MessageListSelectionModel *)self deselectItemWithItemID:v8];
    v7 = [(MessageListSelectionModel *)self delegate];
    [v7 selectionModel:self deselectItemID:v8];
  }

  [(MessageListSelectionModel *)self _untrackItemIDs:v4 updateCount:0];
}

- (void)didExpandThreadItemID:(id)a3 addedItemIDs:(id)a4
{
  v6 = a4;
  if ([(MessageListSelectionModel *)self isSelectedItemID:a3])
  {
    if ([(MessageListSelectionModel *)self isSelectAll])
    {
      [(MessageListSelectionModel *)self _untrackItemIDs:v6 updateCount:0];
    }

    else
    {
      [(MessageListSelectionModel *)self _trackItemIDs:v6 updateCount:0];
    }
  }
}

- (BOOL)isSelectedItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListSelectionModel *)self trackedItems];
  v6 = [v5 hasMessageListItemForItemID:v4];

  return v6 ^ [(MessageListSelectionModel *)self isSelectAll];
}

- (void)configureSelectionForItemID:(id)a3
{
  v6 = a3;
  if ([(MessageListSelectionModel *)self isPerformingDataSourceUpdates])
  {
    v4 = [(MessageListSelectionModel *)self itemIDsPendingConfiguration];
    [v4 addObject:v6];
  }

  else
  {
    v4 = [(MessageListSelectionModel *)self delegate];
    if ([(MessageListSelectionModel *)self isSelectedItemID:v6])
    {
      [v4 selectionModel:self selectItemID:v6];
    }

    else
    {
      [v4 selectionModel:self deselectItemID:v6];
    }

    v5 = [(MessageListSelectionModel *)self itemIDsPendingConfiguration];
    [v5 removeObject:v6];
  }
}

- (void)setPerformingDataSourceUpdates:(BOOL)a3
{
  v5 = *MEMORY[0x277D85DE8];
  if (self->_performingDataSourceUpdates != a3)
  {
    self->_performingDataSourceUpdates = a3;
    if (!a3)
    {
      [(MessageListSelectionModel *)self setPerformingDataSourceUpdates:v3, v4];
    }
  }
}

- (void)setMultipleSelectionActive:(BOOL)a3
{
  if (self->_multipleSelectionActive != a3)
  {
    self->_multipleSelectionActive = a3;
    if (a3)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    else
    {
      v5 = 0;
    }

    itemsToDeselectAfterMultipleSelection = self->_itemsToDeselectAfterMultipleSelection;
    self->_itemsToDeselectAfterMultipleSelection = v5;

    MEMORY[0x2821F96F8](v5, itemsToDeselectAfterMultipleSelection);
  }
}

- (EMMailbox)predictedMoveMailbox
{
  if ([(MessageListSelectionModel *)self type])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MessageListSelectionModel *)self mailboxPredictionFuture];
    v3 = [v4 resultIfAvailable];
  }

  return v3;
}

- (void)_scheduleMailboxPredictionUpdate
{
  if (-[MessageListSelectionModel isSelectAll](self, "isSelectAll") || (-[MessageListSelectionModel trackedItems](self, "trackedItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
  {

    [(MessageListSelectionModel *)self setMailboxPredictionFuture:0];
  }

  else
  {
    v5 = [(MessageListSelectionModel *)self predictionDebouncer];

    if (!v5)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x277D07140]);
      v7 = [MEMORY[0x277D071B8] mainThreadScheduler];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __61__MessageListSelectionModel__scheduleMailboxPredictionUpdate__block_invoke;
      v15 = &unk_278189760;
      objc_copyWeak(&v16, &location);
      v8 = [v6 initWithTimeInterval:v7 scheduler:0 startAfter:&v12 block:0.25];
      [(MessageListSelectionModel *)self setPredictionDebouncer:v8, v12, v13, v14, v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    v9 = [(MessageListSelectionModel *)self trackedItems];
    v10 = [v9 itemIDs];

    v11 = [(MessageListSelectionModel *)self predictionDebouncer];
    [v11 debounceResult:v10];
  }
}

void __61__MessageListSelectionModel__scheduleMailboxPredictionUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __updatePredictionWithSelection:v3];
}

- (void)__updatePredictionWithSelection:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MessageListSelectionModel *)self dataSource];
  v6 = [v5 selectionModel:self objectIDsForItemIDs:v4];
  v7 = [MEMORY[0x277CCACA8] ef_UUID];
  v8 = _ef_log_MessageListSelectionModel();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v20 = [v4 count];
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_INFO, "Requesting predicted mailbox for %lu messages. predictionID=%{public}@", buf, 0x16u);
  }

  v9 = [v5 selectionModel:self predictMailboxForMovingMessagesWithIDs:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke;
  v17[3] = &unk_278189788;
  v10 = v7;
  v18 = v10;
  [v9 addSuccessBlock:v17];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke_54;
  v15 = &unk_278189738;
  v16 = v10;
  v11 = v10;
  [v9 addFailureBlock:&v12];
  [(MessageListSelectionModel *)self setMailboxPredictionFuture:v9, v12, v13, v14, v15];
}

void __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ef_log_MessageListSelectionModel();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 ef_publicDescription];
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_INFO, "Mailbox prediction finished with mailbox=%{public}@ predictionID=%{public}@", &v7, 0x16u);
  }
}

void __61__MessageListSelectionModel___updatePredictionWithSelection___block_invoke_54(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 ef_isCancelledError])
  {
    v4 = _ef_log_MessageListSelectionModel();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v12 = 138543362;
      v13 = v5;
      v6 = "Mailbox prediction cancelled. predictionID=%{public}@";
LABEL_7:
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_INFO, v6, &v12, 0xCu);
    }
  }

  else
  {
    v7 = [v3 em_isItemNotFoundError];
    v4 = _ef_log_MessageListSelectionModel();
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v12 = 138543362;
        v13 = v9;
        v6 = "Mailbox prediction finished with no mailbox found. predictionID=%{public}@";
        goto LABEL_7;
      }
    }

    else if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [v3 ef_publicDescription];
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_INFO, "Mailbox prediction produced an unexpected error. predictionID=%{public}@ error=%{public}@", &v12, 0x16u);
    }
  }
}

- (void)setMailboxPredictionFuture:(id)a3
{
  v4 = a3;
  [(EFFuture *)self->_mailboxPredictionFuture cancel];
  mailboxPredictionFuture = self->_mailboxPredictionFuture;
  self->_mailboxPredictionFuture = v4;
}

- (void)preserveSelection
{
  v3 = [(MessageListSelectionModel *)self restoreSelectionCancelable];
  v4 = v3;
  if (v3)
  {
    [v3 cancel];
  }

  [(MessageListSelectionModel *)self setShouldRestoreSelection:1];
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D071B8] mainThreadScheduler];
  v6 = [(MessageListSelectionModel *)self preserveSelectionTimeout];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __46__MessageListSelectionModel_preserveSelection__block_invoke;
  v11 = &unk_278188CD0;
  objc_copyWeak(&v12, &location);
  v7 = [v5 afterDelay:&v8 performBlock:v6];
  [(MessageListSelectionModel *)self setRestoreSelectionCancelable:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __46__MessageListSelectionModel_preserveSelection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldRestoreSelection:0];
}

- (void)enableSelectAllWithMailboxes:(id)a3
{
  v4 = a3;
  [(MessageListSelectionModel *)self clearAll];
  v5 = [v4 copy];

  [(MessageListSelectionModel *)self setTrackedMailboxes:v5];

  [(MessageListSelectionModel *)self setType:1];
}

- (void)disableSelectAll
{
  [(MessageListSelectionModel *)self clearAll];
  [(MessageListSelectionModel *)self setTrackedMailboxes:0];

  [(MessageListSelectionModel *)self setType:0];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MessageListSelectionModel *)self trackedItems];
  v7 = [v6 count];
  v8 = [(MessageListSelectionModel *)self trackedItems];
  v9 = [v8 count];
  v10 = [(MessageListSelectionModel *)self trackedMailboxes];
  v11 = [v3 stringWithFormat:@"<%@: %p> itemIDs:%ld, messageListItems:%ld, mailboxes:%ld, isSelectAll:%d", v5, self, v7, v9, objc_msgSend(v10, "count"), -[MessageListSelectionModel isSelectAll](self, "isSelectAll")];

  return v11;
}

- (MessageListSelectionModelDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MessageListSelectionModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fetchMissingMessageListItems
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 itemIDsMissingMessageListItem];
    v3 = [v2 allObjects];

    if ([v3 count])
    {
      v4 = _ef_log_MessageListSelectionModel();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        *buf = 138544130;
        v29 = v6;
        v30 = 2048;
        v31 = a1;
        v32 = 2048;
        v33 = [v3 count];
        v34 = 2114;
        v35 = v3;
        _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Fetch message list items for item ids (%lu): %{public}@", buf, 0x2Au);
      }

      v7 = [a1 itemIDsMissingMessageListItem];
      [v7 removeAllObjects];

      v8 = [a1 trackedItems];
      v9 = [a1 dataSource];
      v10 = a1;
      v11 = [v9 selectionModel:a1 messageListItemsForItemIDs:v3];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [MEMORY[0x277D071B8] mainThreadScheduler];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke;
            v21[3] = &unk_278189710;
            v22 = v8;
            [v16 onScheduler:v17 addSuccessBlock:v21];

            v18 = [MEMORY[0x277D071B8] mainThreadScheduler];
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2;
            v20[3] = &unk_278189738;
            v20[4] = v10;
            [v16 onScheduler:v18 addFailureBlock:v20];
          }

          v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }
    }
  }
}

void __58__MessageListSelectionModel__fetchMissingMessageListItems__block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = [a2 ef_publicDescription];
  v10 = 138543874;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Failed to get message list item: %{public}@", &v10, 0x20u);
}

- (void)setPerformingDataSourceUpdates:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 itemIDsPendingConfiguration];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [a1 itemIDsPendingConfiguration];
    v9 = [v8 mutableCopy];

    v10 = [a1 trackedItems];
    v11 = [v10 itemIDs];
    [v9 addObjectsFromArray:v11];

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:a2 objects:a3 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = **(a2 + 16);
      do
      {
        v16 = 0;
        do
        {
          if (**(a2 + 16) != v15)
          {
            objc_enumerationMutation(v12);
          }

          [a1 configureSelectionForItemID:*(*(a2 + 8) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:a2 objects:a3 count:16];
      }

      while (v14);
    }
  }

  [(MessageListSelectionModel *)a1 _fetchMissingMessageListItems];
}

@end