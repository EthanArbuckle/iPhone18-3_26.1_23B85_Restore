@interface DOCTagRegistry
+ (id)sanitizedTagName:(id)a3;
+ (id)sharedInstance;
- (BOOL)_canAddTag:(id)a3;
- (BOOL)addTag:(id)a3;
- (BOOL)canReplaceTag:(id)a3 withTag:(id)a4;
- (BOOL)insertTag:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)isValidNewTagName:(id)a3;
- (BOOL)moveTag:(id)a3 toIndex:(unint64_t)a4;
- (BOOL)replaceTag:(id)a3 withTag:(id)a4;
- (DOCTagRegistry)init;
- (id)_allTags;
- (id)_memberTag:(id)a3;
- (id)_setForTagType:(int64_t)a3;
- (id)tagForName:(id)a3;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)_notifyDidRemoveTagIfNoLongPresentExistingTags:(id)a3;
- (void)addChangeObserver:(id)a3;
- (void)addTag:(id)a3 options:(int64_t)a4;
- (void)addTags:(id)a3 options:(int64_t)a4;
- (void)dealloc;
- (void)inBatchUpdateEnter;
- (void)inBatchUpdateLeave;
- (void)notifyObserversDidRemoveTags:(id)a3;
- (void)notifyObserversDidReplaceTag:(id)a3 withTag:(id)a4;
- (void)performBatchUpdate:(id)a3;
- (void)removeAllTagsOfType:(int64_t)a3;
- (void)removeChangeObserver:(id)a3;
- (void)removeTags:(id)a3;
- (void)setTagSerialNumber:(int64_t)a3;
- (void)synchronize;
- (void)updateDesktopServicesWithUserTags;
@end

@implementation DOCTagRegistry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DOCTagRegistry sharedInstance];
  }

  v3 = sharedInstance_registry;

  return v3;
}

void __32__DOCTagRegistry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DOCTagRegistry);
  v1 = sharedInstance_registry;
  sharedInstance_registry = v0;

  v2 = [DOCTagCloudSource alloc];
  v3 = [(DOCTagCloudSource *)v2 initWithTagRegistry:sharedInstance_registry];
  [sharedInstance_registry setICloudDataSource:v3];
}

- (DOCTagRegistry)init
{
  v22.receiver = self;
  v22.super_class = DOCTagRegistry;
  v2 = [(DOCTagRegistry *)&v22 init];
  v3 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  changeObservers = v2->_changeObservers;
  v2->_changeObservers = v3;

  v5 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v6 = [v5 userTags];

  v7 = [v6 mutableCopy];
  userTags = v2->_userTags;
  v2->_userTags = v7;

  [(DOCTagRegistry *)v2 updateDesktopServicesWithUserTags];
  v9 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v10 = [v9 discoveredTags];

  v11 = [v10 mutableCopy];
  discoveredTags = v2->_discoveredTags;
  v2->_discoveredTags = v11;

  v13 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v2->_tagSerialNumber = [v13 tagSerialNumber];

  objc_initWeak(&location, v2);
  v14 = [@"DOCTagRegistryLocalStorageDidChangeNotification" UTF8String];
  v15 = MEMORY[0x277D85CD0];
  v16 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __22__DOCTagRegistry_init__block_invoke;
  v19[3] = &unk_278F9B258;
  objc_copyWeak(&v20, &location);
  LODWORD(v14) = notify_register_dispatch(v14, &v2->_localStorageDidUpdateNotifyToken, v15, v19);

  if (v14)
  {
    v17 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v17 = docLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(DOCTagRegistry *)v17 init];
    }
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v2;
}

- (void)updateDesktopServicesWithUserTags
{
  v19 = *MEMORY[0x277D85DE8];
  if (NSClassFromString(&cfstr_Fialltagsnode.isa))
  {
    v3 = [(DOCTagRegistry *)self userTags];
    if ([v3 count])
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "labelIndex", v14)}];
            v12 = [v10 displayName];
            [v4 setObject:v11 forKeyedSubscript:v12];
          }

          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      [MEMORY[0x277D046B0] setCurrentTagsColorMappings:v4];
    }

    else
    {
      [MEMORY[0x277D046B0] setCurrentTagsColorMappings:MEMORY[0x277CBEC10]];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __22__DOCTagRegistry_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[2] == a2)
    {
      v7 = WeakRetained;
      v4 = [WeakRetained tagSerialNumber];
      v5 = +[DOCTagLocalStorage sharedAppGroupStorage];
      v6 = [v5 tagSerialNumber];

      WeakRetained = v7;
      if (v4 < v6)
      {
        [v7 synchronize];
        WeakRetained = v7;
      }
    }
  }
}

- (void)dealloc
{
  notify_cancel(self->_localStorageDidUpdateNotifyToken);
  v3.receiver = self;
  v3.super_class = DOCTagRegistry;
  [(DOCTagRegistry *)&v3 dealloc];
}

- (void)addChangeObserver:(id)a3
{
  if (a3)
  {
    [(NSPointerArray *)self->_changeObservers addPointer:?];
    changeObservers = self->_changeObservers;

    [(NSPointerArray *)changeObservers compact];
  }
}

- (void)removeChangeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSPointerArray *)self->_changeObservers allObjects];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __39__DOCTagRegistry_removeChangeObserver___block_invoke;
    v9 = &unk_278F9B280;
    v10 = v4;
    v11 = self;
    [v5 enumerateObjectsUsingBlock:&v6];

    [(NSPointerArray *)self->_changeObservers compact:v6];
  }
}

uint64_t __39__DOCTagRegistry_removeChangeObserver___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    result = [*(*(result + 40) + 24) removePointerAtIndex:?];
    *a4 = 1;
  }

  return result;
}

- (void)notifyObserversDidRemoveTags:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DOCTagRegistry_notifyObserversDidRemoveTags___block_invoke;
  v6[3] = &unk_278F9B2D0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(DOCTagRegistry *)self _enumerateObserversWithBlock:v6];
}

void __47__DOCTagRegistry_notifyObserversDidRemoveTags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DOCTagRegistry_notifyObserversDidRemoveTags___block_invoke_2;
  v7[3] = &unk_278F9B2A8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)notifyObserversDidReplaceTag:(id)a3 withTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__DOCTagRegistry_notifyObserversDidReplaceTag_withTag___block_invoke;
  v10[3] = &unk_278F9B2F8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(DOCTagRegistry *)self _enumerateObserversWithBlock:v10];
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSPointerArray *)self->_changeObservers allObjects];
  v6 = [v5 copy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DOCTagRegistry__enumerateObserversWithBlock___block_invoke;
  v8[3] = &unk_278F9B320;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __47__DOCTagRegistry__enumerateObserversWithBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_notifyDidRemoveTagIfNoLongPresentExistingTags:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__DOCTagRegistry__notifyDidRemoveTagIfNoLongPresentExistingTags___block_invoke;
  v7[3] = &unk_278F9B348;
  v7[4] = self;
  v4 = a3;
  v5 = [v4 indexesOfObjectsPassingTest:v7];
  v6 = [v4 objectsAtIndexes:v5];

  if ([v6 count])
  {
    [(DOCTagRegistry *)self notifyObserversDidRemoveTags:v6];
  }
}

BOOL __65__DOCTagRegistry__notifyDidRemoveTagIfNoLongPresentExistingTags___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 displayName];
  v4 = [v2 tagForName:v3];
  v5 = v4 == 0;

  return v5;
}

- (void)removeAllTagsOfType:(int64_t)a3
{
  v4 = [(DOCTagRegistry *)self _setForTagType:a3];
  if ([v4 count])
  {
    [v4 removeAllObjects];
    [(DOCTagRegistry *)self synchronize];
  }
}

- (void)addTags:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__DOCTagRegistry_addTags_options___block_invoke;
    v7[3] = &unk_278F9B370;
    v8 = v6;
    v9 = self;
    v10 = a4;
    [(DOCTagRegistry *)self performBatchUpdate:v7];
  }
}

void __34__DOCTagRegistry_addTags_options___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addTag:*(*(&v8 + 1) + 8 * v6++) options:{*(a1 + 48), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addTag:(id)a3 options:(int64_t)a4
{
  v10 = a3;
  v6 = [(NSMutableOrderedSet *)self->_userTags set];
  v7 = [v6 member:v10];

  if (v7)
  {
    [v7 mergeWithTag:v10 options:a4];
  }

  else
  {
    v8 = [(NSMutableOrderedSet *)self->_discoveredTags set];
    v9 = [v8 member:v10];

    if (v9)
    {
      [v9 mergeWithTag:v10 options:a4];
    }

    else
    {
      [(DOCTagRegistry *)self addTag:v10];
    }
  }
}

- (BOOL)_canAddTag:(id)a3
{
  v4 = [a3 displayName];
  LOBYTE(self) = [(DOCTagRegistry *)self isValidNewTagName:v4];

  return self;
}

+ (id)sanitizedTagName:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 newlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 componentsJoinedByString:&stru_285C6EEF8];

  v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v10 = [v9 precomposedStringWithCanonicalMapping];

  if ([v10 length])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)isValidNewTagName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() sanitizedTagName:v4];
  v6 = [(DOCTagRegistry *)self _tagNameForComparing:v5];

  if (v6)
  {
    v7 = [(NSMutableOrderedSet *)self->_userTags set];
    v8 = [(NSMutableOrderedSet *)self->_discoveredTags set];
    v9 = [v7 setByAddingObjectsFromSet:v8];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) displayName];
          v16 = [(DOCTagRegistry *)self _tagNameForComparing:v15];
          v17 = [v16 isEqualToString:v6];

          if (v17)
          {
            v18 = 0;
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_12:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addTag:(id)a3
{
  v4 = a3;
  v5 = [(DOCTagRegistry *)self _canAddTag:v4];
  if (v5)
  {
    v6 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [v4 type]);
    [v6 addObject:v4];

    [(DOCTagRegistry *)self synchronize];
  }

  return v5;
}

- (BOOL)insertTag:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(DOCTagRegistry *)self _canAddTag:v6])
  {
    v7 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [v6 type]);
    v8 = [v7 count];
    v9 = v8 >= a4;
    if (v8 >= a4)
    {
      [v7 insertObject:v6 atIndex:a4];
      [(DOCTagRegistry *)self synchronize];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_setForTagType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 32;
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)removeTags:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __29__DOCTagRegistry_removeTags___block_invoke;
    v8 = &unk_278F9B398;
    v9 = self;
    v10 = v4;
    [(DOCTagRegistry *)self performBatchUpdate:&v5];
    [(DOCTagRegistry *)self synchronize:v5];
  }
}

void __29__DOCTagRegistry_removeTags___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userTags];
  [v2 removeObjectsInArray:*(a1 + 40)];

  v3 = [*(a1 + 32) discoveredTags];
  [v3 removeObjectsInArray:*(a1 + 40)];
}

- (id)tagForName:(id)a3
{
  v4 = a3;
  v5 = [[DOCTag alloc] initWithDisplayName:v4 labelIndex:0 type:1];

  v6 = [(DOCTagRegistry *)self _memberTag:v5];

  return v6;
}

- (id)_memberTag:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_userTags set];
  v6 = [v5 member:v4];

  if (!v6)
  {
    v7 = [(NSMutableOrderedSet *)self->_discoveredTags set];
    v6 = [v7 member:v4];
  }

  return v6;
}

- (BOOL)canReplaceTag:(id)a3 withTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (v8 == [v7 type] && (objc_msgSend(v7, "displayName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v11 = [(DOCTagRegistry *)self _memberTag:v7];
    v12 = v11;
    if (v11 && ![v11 isEqual:v6])
    {
      v14 = 0;
    }

    else
    {
      v13 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [v6 type]);
      v14 = [v13 indexOfObject:v6] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)replaceTag:(id)a3 withTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DOCTagRegistry *)self canReplaceTag:v6 withTag:v7];
  if (v8)
  {
    v9 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [v6 type]);
    [v9 replaceObjectAtIndex:objc_msgSend(v9 withObject:{"indexOfObject:", v6), v7}];
    [(DOCTagRegistry *)self notifyObserversDidReplaceTag:v6 withTag:v7];
    [(DOCTagRegistry *)self synchronize];
  }

  return v8;
}

- (BOOL)moveTag:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [v6 type]);
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 count];
    v9 = 0;
    if (v8 != a4 && v10 > a4)
    {
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
      [v7 moveObjectsAtIndexes:v11 toIndex:a4];

      [(DOCTagRegistry *)self synchronize];
      v9 = 1;
    }
  }

  return v9;
}

- (void)performBatchUpdate:(id)a3
{
  v4 = a3;
  [(DOCTagRegistry *)self inBatchUpdateEnter];
  v4[2](v4, self);

  [(DOCTagRegistry *)self inBatchUpdateLeave];
}

- (void)inBatchUpdateEnter
{
  inBatchUpdateCount = self->_inBatchUpdateCount;
  self->_inBatchUpdateCount = inBatchUpdateCount + 1;
  if (!inBatchUpdateCount)
  {
    v5 = [(DOCTagRegistry *)self _allTags];
    tagsBeforeBatchUpdate = self->_tagsBeforeBatchUpdate;
    self->_tagsBeforeBatchUpdate = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)inBatchUpdateLeave
{
  v3 = self->_inBatchUpdateCount - 1;
  self->_inBatchUpdateCount = v3;
  if (!v3)
  {
    v6 = self->_tagsBeforeBatchUpdate;
    tagsBeforeBatchUpdate = self->_tagsBeforeBatchUpdate;
    self->_tagsBeforeBatchUpdate = 0;

    if (self->_shouldSynchronizeAfterBatchUpdate)
    {
      [(DOCTagRegistry *)self synchronize];
    }

    [(DOCTagRegistry *)self _notifyDidRemoveTagIfNoLongPresentExistingTags:v6];
  }
}

- (id)_allTags
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableOrderedSet *)self->_userTags array];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableOrderedSet *)self->_discoveredTags array];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (void)synchronize
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([(DOCTagRegistry *)self inBatchUpdate])
  {
    self->_shouldSynchronizeAfterBatchUpdate = 1;
    goto LABEL_16;
  }

  self->_shouldSynchronizeAfterBatchUpdate = 0;
  v3 = [(DOCTagRegistry *)self tagSerialNumber];
  v4 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v5 = [v4 tagSerialNumber];

  if (v3 >= v5)
  {
    userTags = self->_userTags;
    v8 = +[DOCTagLocalStorage sharedAppGroupStorage];
    v9 = [v8 userTags];
    v6 = [DOCTag areTags:userTags equalByNameAndColorTo:v9]^ 1;
  }

  else
  {
    v6 = 1;
  }

  discoveredTags = self->_discoveredTags;
  v11 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v12 = [v11 discoveredTags];
  v13 = [DOCTag areTags:discoveredTags equalByNameAndColorTo:v12];
  v14 = v13;
  v15 = !v13;

  if (!v6)
  {
LABEL_9:
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v16 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v17 = v16;
  if (v3 < v5)
  {
    v18 = [v16 userTags];
    v19 = [v18 mutableCopy];
    v20 = self->_userTags;
    self->_userTags = v19;

    v21 = +[DOCTagLocalStorage sharedAppGroupStorage];
    self->_tagSerialNumber = [v21 tagSerialNumber];

    goto LABEL_9;
  }

  [v16 setUserTags:self->_userTags];

  v22 = self->_iCloudDataSource;
  iCloudDataSource = self->_iCloudDataSource;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __29__DOCTagRegistry_synchronize__block_invoke;
  v31[3] = &unk_278F9B3C0;
  v32 = v22;
  v33 = self;
  v24 = v22;
  [(DOCTagCloudSource *)iCloudDataSource isICloudAvailableWithCompletionBlock:v31];

  if (v14)
  {
LABEL_10:
    if (!(v6 | v15))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_13:
  v25 = +[DOCTagLocalStorage sharedAppGroupStorage];
  [v25 setDiscoveredTags:self->_discoveredTags];

LABEL_14:
  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  v34[0] = @"DOCTagRegistryChangeUserTagsDidChangeKey";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v34[1] = @"DOCTagRegistryChangeDiscoveredTagsDidChangeKey";
  v35[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v35[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v26 postNotificationName:@"DOCTagRegistryTagsDidChangeNotification" object:self userInfo:v29];

  if (v6)
  {
    [(DOCTagRegistry *)self updateDesktopServicesWithUserTags];
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __29__DOCTagRegistry_synchronize__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) writeTagsToCloud];
  }

  else
  {
    v3 = +[DOCTagLocalStorage sharedAppGroupStorage];
    v4 = [v3 tagSerialNumber];

    [*(a1 + 40) setTagSerialNumber:v4 + 1];
  }

  v5 = [@"DOCTagRegistryLocalStorageDidChangeNotification" UTF8String];

  return notify_post(v5);
}

- (void)setTagSerialNumber:(int64_t)a3
{
  if (self->_tagSerialNumber != a3)
  {
    self->_tagSerialNumber = a3;
    v5 = +[DOCTagLocalStorage sharedAppGroupStorage];
    [v5 setTagSerialNumber:a3];
  }
}

@end