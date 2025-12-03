@interface DOCTagRegistry
+ (id)sanitizedTagName:(id)name;
+ (id)sharedInstance;
- (BOOL)_canAddTag:(id)tag;
- (BOOL)addTag:(id)tag;
- (BOOL)canReplaceTag:(id)tag withTag:(id)withTag;
- (BOOL)insertTag:(id)tag atIndex:(unint64_t)index;
- (BOOL)isValidNewTagName:(id)name;
- (BOOL)moveTag:(id)tag toIndex:(unint64_t)index;
- (BOOL)replaceTag:(id)tag withTag:(id)withTag;
- (DOCTagRegistry)init;
- (id)_allTags;
- (id)_memberTag:(id)tag;
- (id)_setForTagType:(int64_t)type;
- (id)tagForName:(id)name;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_notifyDidRemoveTagIfNoLongPresentExistingTags:(id)tags;
- (void)addChangeObserver:(id)observer;
- (void)addTag:(id)tag options:(int64_t)options;
- (void)addTags:(id)tags options:(int64_t)options;
- (void)dealloc;
- (void)inBatchUpdateEnter;
- (void)inBatchUpdateLeave;
- (void)notifyObserversDidRemoveTags:(id)tags;
- (void)notifyObserversDidReplaceTag:(id)tag withTag:(id)withTag;
- (void)performBatchUpdate:(id)update;
- (void)removeAllTagsOfType:(int64_t)type;
- (void)removeChangeObserver:(id)observer;
- (void)removeTags:(id)tags;
- (void)setTagSerialNumber:(int64_t)number;
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
  weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  changeObservers = v2->_changeObservers;
  v2->_changeObservers = weakObjectsPointerArray;

  v5 = +[DOCTagLocalStorage sharedAppGroupStorage];
  userTags = [v5 userTags];

  v7 = [userTags mutableCopy];
  userTags = v2->_userTags;
  v2->_userTags = v7;

  [(DOCTagRegistry *)v2 updateDesktopServicesWithUserTags];
  v9 = +[DOCTagLocalStorage sharedAppGroupStorage];
  discoveredTags = [v9 discoveredTags];

  v11 = [discoveredTags mutableCopy];
  discoveredTags = v2->_discoveredTags;
  v2->_discoveredTags = v11;

  v13 = +[DOCTagLocalStorage sharedAppGroupStorage];
  v2->_tagSerialNumber = [v13 tagSerialNumber];

  objc_initWeak(&location, v2);
  uTF8String = [@"DOCTagRegistryLocalStorageDidChangeNotification" UTF8String];
  v15 = MEMORY[0x277D85CD0];
  v16 = MEMORY[0x277D85CD0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __22__DOCTagRegistry_init__block_invoke;
  v19[3] = &unk_278F9B258;
  objc_copyWeak(&v20, &location);
  LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &v2->_localStorageDidUpdateNotifyToken, v15, v19);

  if (uTF8String)
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
    userTags = [(DOCTagRegistry *)self userTags];
    if ([userTags count])
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(userTags, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = userTags;
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
            displayName = [v10 displayName];
            [v4 setObject:v11 forKeyedSubscript:displayName];
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

- (void)addChangeObserver:(id)observer
{
  if (observer)
  {
    [(NSPointerArray *)self->_changeObservers addPointer:?];
    changeObservers = self->_changeObservers;

    [(NSPointerArray *)changeObservers compact];
  }
}

- (void)removeChangeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    allObjects = [(NSPointerArray *)self->_changeObservers allObjects];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __39__DOCTagRegistry_removeChangeObserver___block_invoke;
    v9 = &unk_278F9B280;
    v10 = observerCopy;
    selfCopy = self;
    [allObjects enumerateObjectsUsingBlock:&v6];

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

- (void)notifyObserversDidRemoveTags:(id)tags
{
  tagsCopy = tags;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DOCTagRegistry_notifyObserversDidRemoveTags___block_invoke;
  v6[3] = &unk_278F9B2D0;
  v7 = tagsCopy;
  selfCopy = self;
  v5 = tagsCopy;
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

- (void)notifyObserversDidReplaceTag:(id)tag withTag:(id)withTag
{
  tagCopy = tag;
  withTagCopy = withTag;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__DOCTagRegistry_notifyObserversDidReplaceTag_withTag___block_invoke;
  v10[3] = &unk_278F9B2F8;
  v10[4] = self;
  v11 = tagCopy;
  v12 = withTagCopy;
  v8 = withTagCopy;
  v9 = tagCopy;
  [(DOCTagRegistry *)self _enumerateObserversWithBlock:v10];
}

- (void)_enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  allObjects = [(NSPointerArray *)self->_changeObservers allObjects];
  v6 = [allObjects copy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__DOCTagRegistry__enumerateObserversWithBlock___block_invoke;
  v8[3] = &unk_278F9B320;
  v9 = blockCopy;
  v7 = blockCopy;
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

- (void)_notifyDidRemoveTagIfNoLongPresentExistingTags:(id)tags
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__DOCTagRegistry__notifyDidRemoveTagIfNoLongPresentExistingTags___block_invoke;
  v7[3] = &unk_278F9B348;
  v7[4] = self;
  tagsCopy = tags;
  v5 = [tagsCopy indexesOfObjectsPassingTest:v7];
  v6 = [tagsCopy objectsAtIndexes:v5];

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

- (void)removeAllTagsOfType:(int64_t)type
{
  v4 = [(DOCTagRegistry *)self _setForTagType:type];
  if ([v4 count])
  {
    [v4 removeAllObjects];
    [(DOCTagRegistry *)self synchronize];
  }
}

- (void)addTags:(id)tags options:(int64_t)options
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__DOCTagRegistry_addTags_options___block_invoke;
    v7[3] = &unk_278F9B370;
    v8 = tagsCopy;
    selfCopy = self;
    optionsCopy = options;
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

- (void)addTag:(id)tag options:(int64_t)options
{
  tagCopy = tag;
  v6 = [(NSMutableOrderedSet *)self->_userTags set];
  v7 = [v6 member:tagCopy];

  if (v7)
  {
    [v7 mergeWithTag:tagCopy options:options];
  }

  else
  {
    v8 = [(NSMutableOrderedSet *)self->_discoveredTags set];
    v9 = [v8 member:tagCopy];

    if (v9)
    {
      [v9 mergeWithTag:tagCopy options:options];
    }

    else
    {
      [(DOCTagRegistry *)self addTag:tagCopy];
    }
  }
}

- (BOOL)_canAddTag:(id)tag
{
  displayName = [tag displayName];
  LOBYTE(self) = [(DOCTagRegistry *)self isValidNewTagName:displayName];

  return self;
}

+ (id)sanitizedTagName:(id)name
{
  v3 = MEMORY[0x277CCA900];
  nameCopy = name;
  newlineCharacterSet = [v3 newlineCharacterSet];
  v6 = [nameCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v7 = [v6 componentsJoinedByString:&stru_285C6EEF8];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  precomposedStringWithCanonicalMapping = [v9 precomposedStringWithCanonicalMapping];

  if ([precomposedStringWithCanonicalMapping length])
  {
    v11 = precomposedStringWithCanonicalMapping;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (BOOL)isValidNewTagName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [objc_opt_class() sanitizedTagName:nameCopy];
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

          displayName = [*(*(&v21 + 1) + 8 * i) displayName];
          v16 = [(DOCTagRegistry *)self _tagNameForComparing:displayName];
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

- (BOOL)addTag:(id)tag
{
  tagCopy = tag;
  v5 = [(DOCTagRegistry *)self _canAddTag:tagCopy];
  if (v5)
  {
    v6 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [tagCopy type]);
    [v6 addObject:tagCopy];

    [(DOCTagRegistry *)self synchronize];
  }

  return v5;
}

- (BOOL)insertTag:(id)tag atIndex:(unint64_t)index
{
  tagCopy = tag;
  if ([(DOCTagRegistry *)self _canAddTag:tagCopy])
  {
    v7 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [tagCopy type]);
    v8 = [v7 count];
    v9 = v8 >= index;
    if (v8 >= index)
    {
      [v7 insertObject:tagCopy atIndex:index];
      [(DOCTagRegistry *)self synchronize];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_setForTagType:(int64_t)type
{
  if (type == 1)
  {
    v4 = 32;
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)removeTags:(id)tags
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __29__DOCTagRegistry_removeTags___block_invoke;
    v8 = &unk_278F9B398;
    selfCopy = self;
    v10 = tagsCopy;
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

- (id)tagForName:(id)name
{
  nameCopy = name;
  v5 = [[DOCTag alloc] initWithDisplayName:nameCopy labelIndex:0 type:1];

  v6 = [(DOCTagRegistry *)self _memberTag:v5];

  return v6;
}

- (id)_memberTag:(id)tag
{
  tagCopy = tag;
  v5 = [(NSMutableOrderedSet *)self->_userTags set];
  v6 = [v5 member:tagCopy];

  if (!v6)
  {
    v7 = [(NSMutableOrderedSet *)self->_discoveredTags set];
    v6 = [v7 member:tagCopy];
  }

  return v6;
}

- (BOOL)canReplaceTag:(id)tag withTag:(id)withTag
{
  tagCopy = tag;
  withTagCopy = withTag;
  type = [tagCopy type];
  if (type == [withTagCopy type] && (objc_msgSend(withTagCopy, "displayName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v11 = [(DOCTagRegistry *)self _memberTag:withTagCopy];
    v12 = v11;
    if (v11 && ![v11 isEqual:tagCopy])
    {
      v14 = 0;
    }

    else
    {
      v13 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [tagCopy type]);
      v14 = [v13 indexOfObject:tagCopy] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)replaceTag:(id)tag withTag:(id)withTag
{
  tagCopy = tag;
  withTagCopy = withTag;
  v8 = [(DOCTagRegistry *)self canReplaceTag:tagCopy withTag:withTagCopy];
  if (v8)
  {
    v9 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [tagCopy type]);
    [v9 replaceObjectAtIndex:objc_msgSend(v9 withObject:{"indexOfObject:", tagCopy), withTagCopy}];
    [(DOCTagRegistry *)self notifyObserversDidReplaceTag:tagCopy withTag:withTagCopy];
    [(DOCTagRegistry *)self synchronize];
  }

  return v8;
}

- (BOOL)moveTag:(id)tag toIndex:(unint64_t)index
{
  tagCopy = tag;
  v7 = -[DOCTagRegistry _setForTagType:](self, "_setForTagType:", [tagCopy type]);
  v8 = [v7 indexOfObject:tagCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 count];
    v9 = 0;
    if (v8 != index && v10 > index)
    {
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
      [v7 moveObjectsAtIndexes:v11 toIndex:index];

      [(DOCTagRegistry *)self synchronize];
      v9 = 1;
    }
  }

  return v9;
}

- (void)performBatchUpdate:(id)update
{
  updateCopy = update;
  [(DOCTagRegistry *)self inBatchUpdateEnter];
  updateCopy[2](updateCopy, self);

  [(DOCTagRegistry *)self inBatchUpdateLeave];
}

- (void)inBatchUpdateEnter
{
  inBatchUpdateCount = self->_inBatchUpdateCount;
  self->_inBatchUpdateCount = inBatchUpdateCount + 1;
  if (!inBatchUpdateCount)
  {
    _allTags = [(DOCTagRegistry *)self _allTags];
    tagsBeforeBatchUpdate = self->_tagsBeforeBatchUpdate;
    self->_tagsBeforeBatchUpdate = _allTags;

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
  array = [MEMORY[0x277CBEB18] array];
  array2 = [(NSMutableOrderedSet *)self->_userTags array];
  [array addObjectsFromArray:array2];

  array3 = [(NSMutableOrderedSet *)self->_discoveredTags array];
  [array addObjectsFromArray:array3];

  return array;
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
  tagSerialNumber = [(DOCTagRegistry *)self tagSerialNumber];
  v4 = +[DOCTagLocalStorage sharedAppGroupStorage];
  tagSerialNumber2 = [v4 tagSerialNumber];

  if (tagSerialNumber >= tagSerialNumber2)
  {
    userTags = self->_userTags;
    v8 = +[DOCTagLocalStorage sharedAppGroupStorage];
    userTags = [v8 userTags];
    v6 = [DOCTag areTags:userTags equalByNameAndColorTo:userTags]^ 1;
  }

  else
  {
    v6 = 1;
  }

  discoveredTags = self->_discoveredTags;
  v11 = +[DOCTagLocalStorage sharedAppGroupStorage];
  discoveredTags = [v11 discoveredTags];
  v13 = [DOCTag areTags:discoveredTags equalByNameAndColorTo:discoveredTags];
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
  if (tagSerialNumber < tagSerialNumber2)
  {
    userTags2 = [v16 userTags];
    v19 = [userTags2 mutableCopy];
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
  selfCopy = self;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v34[0] = @"DOCTagRegistryChangeUserTagsDidChangeKey";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v34[1] = @"DOCTagRegistryChangeDiscoveredTagsDidChangeKey";
  v35[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v35[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [defaultCenter postNotificationName:@"DOCTagRegistryTagsDidChangeNotification" object:self userInfo:v29];

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

- (void)setTagSerialNumber:(int64_t)number
{
  if (self->_tagSerialNumber != number)
  {
    self->_tagSerialNumber = number;
    v5 = +[DOCTagLocalStorage sharedAppGroupStorage];
    [v5 setTagSerialNumber:number];
  }
}

@end