@interface EMFEmojiPreferences
+ (id)_cachedFlagCategoryEmoji:(id)emoji;
+ (id)_recentEmojiStrings;
+ (id)_recentStringsInCharacterSet:(id)set;
- (BOOL)hasDisplayedSkinToneHelp;
- (BOOL)hasLastUsedVariantForEmoji:(id)emoji;
- (BOOL)recordEmojiEngagement:(id)engagement keyword:(id)keyword localeIdentifier:(id)identifier;
- (BOOL)shouldCountEmojiStringForUsageHistory:(id)history;
- (EMFEmojiPreferences)init;
- (NSArray)recentEmojis;
- (NSString)previouslyUsedCategory;
- (double)scoreForEmojiString:(id)string;
- (double)scoreForEmojiStringUnsafe:(id)unsafe;
- (double)scoreForSequence:(int64_t)sequence;
- (double)scoreForSequenceUnsafe:(int64_t)unsafe;
- (id)copySortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier;
- (id)lastUsedVariantEmojiForEmoji:(id)emoji;
- (id)recentEmojisByFillingWithPrepopulatedEmojisUpTo:(unint64_t)to;
- (id)recentVariantEmojiForEmoji:(id)emoji;
- (id)recentsInCharacterSet:(id)set;
- (id)typingNameForEmoji:(id)emoji;
- (id)valueForKeyInLocalCachedDefaultsThreadsafe:(id)threadsafe;
- (unint64_t)previouslyUsedIndexInCategory:(id)category;
- (void)_checkForDingbatDuplicates;
- (void)_cleanUpOldFlagsCaches;
- (void)_forceReadEmojiDefaults;
- (void)_pruneInvalidEmojiFromHistory;
- (void)_pruneOldestEmojiUsageFromHistory;
- (void)_readPreferencesFromDefaults;
- (void)_setRecentStrings:(id)strings;
- (void)adaptationControllerForLocaleIdentifier:(id)identifier;
- (void)dealloc;
- (void)didDisplaySkinToneHelp;
- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name;
- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name replacementContext:(id)context;
- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement;
- (void)didUseEmojiInEmojiKeyboardPalette:(id)palette wasFromRecentsSection:(BOOL)section;
- (void)didViewEmojiIndex:(int64_t)index forCategory:(id)category;
- (void)loadDefaultsIfNecessaryThreadSafe;
- (void)migrateFromMajorOSVersion:(int64_t)version;
- (void)migrateInDidDisplaySkinToneHelp:(BOOL)help;
- (void)migrateInPreviouslyUsedCategory:(id)category;
- (void)migrateInPreviouslyUsedCategoryIndexes:(id)indexes;
- (void)migrateInRecentEmoji:(id)emoji usages:(id)usages typingNames:(id)names;
- (void)migrateInSkinTonePreferences:(id)preferences;
- (void)readEmojiDefaults;
- (void)resetEmojiDefaults;
- (void)signalEngagementToUnifiedRecencyServiceForEmoji:(id)emoji;
- (void)sortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier handler:(id)handler;
- (void)writeEmojiDefaultsThreadSafeAndNotify:(BOOL)notify;
@end

@implementation EMFEmojiPreferences

- (EMFEmojiPreferences)init
{
  v5.receiver = self;
  v5.super_class = EMFEmojiPreferences;
  v2 = [(EMFEmojiPreferences *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 30;
    std::unique_ptr<CEM::AdaptationDatabaseController>::reset[abi:ne200100](v2 + 7, 0);
  }

  return v3;
}

- (void)dealloc
{
  std::unique_ptr<CEM::AdaptationDatabaseController>::reset[abi:ne200100](&self->_adaptationController, 0);
  v3.receiver = self;
  v3.super_class = EMFEmojiPreferences;
  [(EMFEmojiPreferences *)&v3 dealloc];
}

+ (id)_recentEmojiStrings
{
  _emojiCharacterSet = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v4 = [self _recentStringsInCharacterSet:_emojiCharacterSet];

  return v4;
}

- (void)loadDefaultsIfNecessaryThreadSafe
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = _getSharedSerialOperationQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__EMFEmojiPreferences_loadDefaultsIfNecessaryThreadSafe__block_invoke;
  v4[3] = &unk_1E7A5F9B8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v3, v4);

  if (*(v6 + 24) == 1)
  {
    [(EMFEmojiPreferences *)self readEmojiDefaults];
  }

  _Block_object_dispose(&v5, 8);
}

void __56__EMFEmojiPreferences_loadDefaultsIfNecessaryThreadSafe__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaults];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

- (void)readEmojiDefaults
{
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EMFEmojiPreferences_readEmojiDefaults__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);

  [(EMFEmojiPreferences *)self _readPreferencesFromDefaults];
  [(EMFEmojiPreferences *)self _pruneInvalidEmojiFromHistory];
}

void __40__EMFEmojiPreferences_readEmojiDefaults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaults];

  if (!v2)
  {
    v3 = [objc_opt_class() defaultsDomain];
    v4 = CFPreferencesCopyAppValue(@"EMFDefaultsKey", v3);
    DeepCopy = CFPropertyListCreateDeepCopy(0, v4, 2uLL);
    [*(a1 + 32) setDefaults:DeepCopy];

    [*(a1 + 32) setIsDefaultDirty:0];
  }

  v6 = [*(a1 + 32) defaults];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 32) setDefaults:v7];

    v8 = *(a1 + 32);

    [v8 setIsDefaultDirty:1];
  }
}

- (void)_readPreferencesFromDefaults
{
  if (!+[EMFEmojiPreferences deviceStateIsLocked])
  {
    v3 = _getSharedSerialOperationQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__EMFEmojiPreferences__readPreferencesFromDefaults__block_invoke;
    block[3] = &unk_1E7A5F990;
    block[4] = self;
    dispatch_sync(v3, block);
  }
}

void __51__EMFEmojiPreferences__readPreferencesFromDefaults__block_invoke(uint64_t a1)
{
  v18 = [*(a1 + 32) defaults];
  v2 = [v18 objectForKey:@"EMFRecentsKey"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v19 = [*(a1 + 32) defaults];
  v5 = [v19 objectForKey:@"EMFUsageHistoryKey"];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v20 = [*(a1 + 32) defaults];
  v8 = [v20 objectForKey:@"EMFTypingNamesKey"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  v21 = [*(a1 + 32) defaults];
  v11 = [v21 objectForKey:@"EMFSkinToneBaseKeyPreferences"];
  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = v11;

  v22 = [*(a1 + 32) defaults];
  v14 = [v22 objectForKey:@"EMFViewedInCategoryKey"];
  v15 = *(a1 + 32);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v23 = [*(a1 + 32) defaults];
  v17 = [v23 objectForKey:@"EMFRecentSequenceNumberKey"];
  *(*(a1 + 32) + 48) = [v17 integerValue];
}

- (void)_pruneInvalidEmojiFromHistory
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EMFEmojiPreferences__pruneInvalidEmojiFromHistory__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __52__EMFEmojiPreferences__pruneInvalidEmojiFromHistory__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:*(*(a1 + 32) + 16)];
  [MEMORY[0x1E695DEC8] arrayWithArray:*(*v2 + 16)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v4 = v10 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([*(a1 + 32) shouldCountEmojiStringForUsageHistory:{v8, v9}] & 1) == 0)
        {
          [*(a1 + 32) setIsDefaultDirty:1];
          [v3 removeObject:v8];
          [*(*(a1 + 32) + 8) removeObjectForKey:v8];
          [*(*(a1 + 32) + 24) removeObjectForKey:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) isDefaultDirty])
  {
    [*(*(a1 + 32) + 16) setArray:v3];
  }
}

+ (id)_recentStringsInCharacterSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([self deviceStateIsLocked])
  {
    v5 = [EMFEmojiCategory _emojiSetForIdentifier:@"EMFEmojiCategoryPrepopulated"];
  }

  else
  {
    v6 = objc_alloc_init(EMFEmojiPreferences);
    [(EMFEmojiPreferences *)v6 loadDefaultsIfNecessaryThreadSafe];
    if (setCopy)
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](v6->_recents, "count")}];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [(NSMutableArray *)v6->_recents copy];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            if ([v11 rangeOfCharacterFromSet:setCopy] != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(NSMutableArray *)v5 addObject:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = v6->_recents;
    }
  }

  return v5;
}

- (id)recentEmojisByFillingWithPrepopulatedEmojisUpTo:(unint64_t)to
{
  if (to)
  {
    toCopy = to;
  }

  else
  {
    toCopy = 500;
  }

  recentEmojis = [(EMFEmojiPreferences *)self recentEmojis];
  v5 = [recentEmojis copy];

  if (toCopy <= [v5 count])
  {
    v13 = [v5 subarrayWithRange:{0, toCopy}];
  }

  else
  {
    v6 = [EMFEmojiCategory _emojiSetForIdentifier:@"EMFEmojiCategoryPrepopulated"];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:toCopy];
    [v7 addObjectsFromArray:v5];
    v8 = [v6 count];
    v9 = [v7 count];
    if (toCopy >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = toCopy;
    }

    v11 = v10 - v9;
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [v6 objectAtIndexedSubscript:v14];
        v12 = [EMFEmojiToken emojiTokenWithString:v16 localeData:0];

        [v7 addObject:v12];
        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
    }

    v13 = [v7 copy];
  }

  return v13;
}

- (NSArray)recentEmojis
{
  _emojiCharacterSet = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v4 = [(EMFEmojiPreferences *)self recentsInCharacterSet:_emojiCharacterSet];

  return v4;
}

- (id)recentsInCharacterSet:(id)set
{
  setCopy = set;
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EMFEmojiPreferences_recentsInCharacterSet___block_invoke;
  block[3] = &unk_1E7A5F940;
  v11 = setCopy;
  v12 = &v13;
  block[4] = self;
  v6 = setCopy;
  dispatch_sync(v5, block);

  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __45__EMFEmojiPreferences_recentsInCharacterSet___block_invoke(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[EMFEmojiPreferences deviceStateIsLocked])
  {
    v2 = [EMFEmojiCategory _emojiSetForIdentifier:@"EMFEmojiCategoryPrepopulated"];
    v3 = [v2 copy];
  }

  else
  {
    v3 = [*(a1[4] + 16) copy];
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (!a1[5] || [*(*(&v14 + 1) + 8 * v10) rangeOfCharacterFromSet:v14] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = *(*(a1[6] + 8) + 40);
          v13 = [EMFEmojiToken emojiTokenWithString:v11 localeData:0, v14];
          [v12 addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)valueForKeyInLocalCachedDefaultsThreadsafe:(id)threadsafe
{
  threadsafeCopy = threadsafe;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__EMFEmojiPreferences_valueForKeyInLocalCachedDefaultsThreadsafe___block_invoke;
  block[3] = &unk_1E7A5F968;
  v10 = threadsafeCopy;
  v11 = &v12;
  block[4] = self;
  v6 = threadsafeCopy;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__EMFEmojiPreferences_valueForKeyInLocalCachedDefaultsThreadsafe___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) defaults];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)previouslyUsedCategory
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];

  return [(EMFEmojiPreferences *)self valueForKeyInLocalCachedDefaultsThreadsafe:@"EMFPreviouslyUsedCategoryKey"];
}

- (BOOL)hasDisplayedSkinToneHelp
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = [(EMFEmojiPreferences *)self valueForKeyInLocalCachedDefaultsThreadsafe:@"EMFDidDisplaySkinToneHelpKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)adaptationControllerForLocaleIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifier];
  languageCode = [v4 languageCode];
  std::string::basic_string[abi:ne200100]<0>(v14, [languageCode UTF8String]);

  ptr = self->_adaptationController.__ptr_;
  p_adaptationController = &self->_adaptationController;
  v6 = ptr;
  if (!ptr)
  {
    getEmojiAdaptationDatabasePath(0, &__p);
    operator new();
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v14[1];
  }

  CEM::AdaptationDatabaseController::setLocale(v6, v9, v10);
  v11 = p_adaptationController->__ptr_;
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return v11;
}

- (BOOL)recordEmojiEngagement:(id)engagement keyword:(id)keyword localeIdentifier:(id)identifier
{
  engagementCopy = engagement;
  keywordCopy = keyword;
  identifierCopy = identifier;
  if (keywordCopy)
  {
    v11 = [(EMFEmojiPreferences *)self adaptationControllerForLocaleIdentifier:identifierCopy];
    std::string::basic_string[abi:ne200100]<0>(v22, [engagementCopy UTF8String]);
    v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
    v13 = [keywordCopy lowercaseStringWithLocale:v12];
    std::string::basic_string[abi:ne200100]<0>(__p, [v13 UTF8String]);

    if ((v21 & 0x80u) == 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v15 = v21;
    }

    else
    {
      v15 = __p[1];
    }

    if ((v23 & 0x80u) == 0)
    {
      v16 = v22;
    }

    else
    {
      v16 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v17 = v23;
    }

    else
    {
      v17 = v22[1];
    }

    v18 = CEM::AdaptationDatabaseController::recordEmojiEngagement(v11, v14, v15, v16, v17) != 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)copySortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier
{
  emojisCopy = emojis;
  keywordCopy = keyword;
  identifierCopy = identifier;
  v11 = [(EMFEmojiPreferences *)self adaptationControllerForLocaleIdentifier:identifierCopy];
  v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  v13 = [keywordCopy lowercaseStringWithLocale:v12];
  std::string::basic_string[abi:ne200100]<0>(v36, [v13 UTF8String]);

  if ((v37 & 0x80u) == 0)
  {
    v14 = v36;
  }

  else
  {
    v14 = v36[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v15 = v37;
  }

  else
  {
    v15 = v36[1];
  }

  CEM::AdaptationDatabaseController::getRecentEmojisForString(v11, v14, v15, &v34);
  if (v34 == v35)
  {
    v19 = [emojisCopy copy];
  }

  else
  {
    v16 = 0;
    memset(v32, 0, sizeof(v32));
    v33 = 1065353216;
    while (1)
    {
      v31 = v16;
      if (v16 >= [emojisCopy count])
      {
        break;
      }

      v17 = [emojisCopy objectAtIndexedSubscript:v31];
      string = [v17 string];
      std::string::basic_string[abi:ne200100]<0>(__p, [string UTF8String]);

      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::string&,long &>(v32, __p);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = v31 + 1;
    }

    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(emojisCopy, "count")}];
    v20 = v34;
    v21 = v35;
    while (v20 != v21)
    {
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::find<std::string>(v32, v20);
      v23 = v22;
      if (v22)
      {
        v24 = [emojisCopy objectAtIndexedSubscript:v22[5]];
        [v19 addObject:v24];

        std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::erase(v32, v23);
      }

      v20 += 3;
    }

    for (i = 0; i < [emojisCopy count]; ++i)
    {
      v26 = [emojisCopy objectAtIndexedSubscript:i];
      string2 = [v26 string];
      std::string::basic_string[abi:ne200100]<0>(__p, [string2 UTF8String]);

      if (std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<CEM::AdaptationDatabase>>>>::find<std::string>(v32, __p))
      {
        [v19 addObject:v26];
      }

      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(v32);
  }

  *&v32[0] = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  return v19;
}

- (void)sortedEmojis:(id)emojis keyword:(id)keyword localeIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  v10 = [(EMFEmojiPreferences *)self copySortedEmojis:emojis keyword:keyword localeIdentifier:identifier];
  handlerCopy[2](handlerCopy, v10);
}

- (void)writeEmojiDefaultsThreadSafeAndNotify:(BOOL)notify
{
  if (!+[EMFEmojiPreferences deviceStateIsLocked])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = _getSharedSerialOperationQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke;
    block[3] = &unk_1E7A5F9B8;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(v5, block);

    if (*(v13 + 24) == 1)
    {
      v6 = _getSharedSerialOperationQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke_2;
      v10[3] = &unk_1E7A5F990;
      v10[4] = self;
      dispatch_sync(v6, v10);

      [(EMFEmojiPreferences *)self _pruneOldestEmojiUsageFromHistory];
      v7 = _getSharedSerialOperationQueue();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke_3;
      v8[3] = &unk_1E7A5F9E0;
      v8[4] = self;
      notifyCopy = notify;
      dispatch_sync(v7, v8);
    }

    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaults];
  if (v2)
  {
    LOBYTE(v2) = [*(a1 + 32) isDefaultDirty];
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v4 = [v2 defaults];
    [v4 setObject:*(*(a1 + 32) + 8) forKey:@"EMFUsageHistoryKey"];

    v2 = *(a1 + 32);
  }

  if (v2[6])
  {
    v5 = [v2 defaults];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 48)];
    [v5 setObject:v3 forKey:@"EMFRecentSequenceNumberKey"];

    v2 = *(a1 + 32);
  }

  if (v2[2])
  {
    v6 = [v2 defaults];
    [v6 setObject:*(*(a1 + 32) + 16) forKey:@"EMFRecentsKey"];

    v2 = *(a1 + 32);
  }

  if (v2[4])
  {
    v7 = [v2 defaults];
    [v7 setObject:*(*(a1 + 32) + 32) forKey:@"EMFSkinToneBaseKeyPreferences"];

    v2 = *(a1 + 32);
  }

  if (v2[5])
  {
    v8 = [v2 defaults];
    [v8 setObject:*(*(a1 + 32) + 40) forKey:@"EMFViewedInCategoryKey"];
  }
}

void __61__EMFEmojiPreferences_writeEmojiDefaultsThreadSafeAndNotify___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isDefaultDirty])
  {
    v2 = [*(a1 + 32) defaults];
    v3 = [objc_opt_class() defaultsDomain];
    CFPreferencesSetAppValue(@"EMFDefaultsKey", v2, v3);

    v4 = [objc_opt_class() defaultsDomain];
    CFPreferencesAppSynchronize(v4);
    [*(a1 + 32) setIsDefaultDirty:0];
    if (*(a1 + 40) == 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleKeyboardsEmojiChangedNotification", 0, 0, 1u);
    }
  }
}

- (void)resetEmojiDefaults
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EMFEmojiPreferences_resetEmojiDefaults__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __41__EMFEmojiPreferences_resetEmojiDefaults__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 8) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = [*(a1 + 32) defaults];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setIsDefaultDirty:1];
}

- (void)_forceReadEmojiDefaults
{
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EMFEmojiPreferences__forceReadEmojiDefaults__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);

  [(EMFEmojiPreferences *)self readEmojiDefaults];
}

- (void)migrateFromMajorOSVersion:(int64_t)version
{
  [(EMFEmojiPreferences *)self _checkForDingbatDuplicates];
  [(EMFEmojiPreferences *)self _cleanUpOldFlagsCaches];
  v4 = [EMFEmojiCategory _emojiSetForIdentifier:@"EMFEmojiCategoryFlags"];
}

- (void)_checkForDingbatDuplicates
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EMFEmojiPreferences__checkForDingbatDuplicates__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);

  [(EMFEmojiPreferences *)self writeEmojiDefaultsThreadSafeAndNotify:0];
}

void __49__EMFEmojiPreferences__checkForDingbatDuplicates__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*v2 + 16);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [EMFStringUtilities _preferenceIndexString:v8, v10];
        if (v9 != v8)
        {
          [*(a1 + 32) setIsDefaultDirty:1];
        }

        if ([v3 containsObject:v9])
        {
          [*(*(a1 + 32) + 8) removeObjectForKey:v8];
          [*(*(a1 + 32) + 24) removeObjectForKey:v8];
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) isDefaultDirty])
  {
    [*(*(a1 + 32) + 16) setArray:v3];
  }
}

- (void)_pruneOldestEmojiUsageFromHistory
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__EMFEmojiPreferences__pruneOldestEmojiUsageFromHistory__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __56__EMFEmojiPreferences__pruneOldestEmojiUsageFromHistory__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) && *(v1 + 48) >= 1001)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(v3 + 8);
    v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    v22 = a1;
    v6 = v4 - 500;
    if (v5)
    {
      v21 = *v30;
      do
      {
        v23 = v5;
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v24 = [*(*(v22 + 32) + 8) objectForKey:v8];
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = v24;
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = *v26;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [*(*(&v25 + 1) + 8 * j) integerValue] - v6;
                if (v14 >= 0)
                {
                  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
                  [v9 addObject:v15];
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v11);
          }

          if ([v9 count])
          {
            [v20 setObject:v9 forKey:v8];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v5);
    }

    objc_storeStrong((*(v22 + 32) + 8), v20);
    *(*(v22 + 32) + 48) -= v6;
    v16 = [*(v22 + 32) defaults];
    [v16 setObject:*(*(v22 + 32) + 8) forKey:@"EMFUsageHistoryKey"];

    v17 = [*(v22 + 32) defaults];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(v22 + 32) + 48)];
    [v17 setObject:v18 forKey:@"EMFRecentSequenceNumberKey"];
  }
}

- (void)_cleanUpOldFlagsCaches
{
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EMFEmojiPreferences__cleanUpOldFlagsCaches__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __45__EMFEmojiPreferences__cleanUpOldFlagsCaches__block_invoke()
{
  v38[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [objc_opt_class() defaultsDomain];
  v2 = [v0 initWithSuiteName:v1];

  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];
  v5 = [v4 mutableCopy];

  v38[0] = @"EMFDefaultsKey";
  v38[1] = @"DidMigrateToEMF";
  v38[2] = @"com.apple.stickerkit.onboarding.shown";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v6 = v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObject:*(*(&v31 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [v2 removeObjectForKey:*(*(&v27 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v11);
  }

  [v2 synchronize];
  v14 = objc_alloc(MEMORY[0x1E695E000]);
  v15 = [objc_opt_class() _cacheDomain];
  v16 = [v14 initWithSuiteName:v15];

  v17 = [v16 dictionaryRepresentation];
  v18 = [v17 allKeys];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v20)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v16 removeObjectForKey:{*(*(&v23 + 1) + 8 * v22++), v23}];
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v20);
  }

  [v16 synchronize];
}

- (void)migrateInRecentEmoji:(id)emoji usages:(id)usages typingNames:(id)names
{
  emojiCopy = emoji;
  usagesCopy = usages;
  namesCopy = names;
  v11 = _getSharedSerialOperationQueue();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__EMFEmojiPreferences_migrateInRecentEmoji_usages_typingNames___block_invoke;
  v15[3] = &unk_1E7A5FA08;
  v16 = usagesCopy;
  selfCopy = self;
  v18 = emojiCopy;
  v19 = namesCopy;
  v12 = namesCopy;
  v13 = emojiCopy;
  v14 = usagesCopy;
  dispatch_sync(v11, v15);
}

void __63__EMFEmojiPreferences_migrateInRecentEmoji_usages_typingNames___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v4)
    {
      v5 = *v35;
      do
      {
        v6 = 0;
        do
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v34 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 integerValue] > *(*(a1 + 40) + 48))
          {
            *(*(a1 + 40) + 48) = [v7 integerValue];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = MEMORY[0x1E696AD98];
    ++*(*(a1 + 40) + 48);
    v10 = [v9 numberWithInteger:?];
    v11 = [v8 arrayWithObject:v10];

    v3 = v11;
  }

  v12 = [EMFStringUtilities _preferenceIndexString:*(a1 + 48), v34];
  v13 = *(a1 + 40);
  if (v13[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = v3 == 0;
  }

  if (!v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v16 = *(a1 + 40);
    v17 = *(v16 + 8);
    *(v16 + 8) = v15;

    v18 = [*(a1 + 40) defaults];
    [v18 setObject:*(*(a1 + 40) + 8) forKey:@"EMFUsageHistoryKey"];

    v13 = *(a1 + 40);
  }

  if (!v13[2] && v12)
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v20 = *(a1 + 40);
    v21 = *(v20 + 16);
    *(v20 + 16) = v19;

    v22 = [*(a1 + 40) defaults];
    [v22 setObject:*(*(a1 + 40) + 16) forKey:@"EMFRecentsKey"];

    v13 = *(a1 + 40);
  }

  if (!v13[3] && *(a1 + 56))
  {
    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v24 = *(a1 + 40);
    v25 = *(v24 + 24);
    *(v24 + 24) = v23;

    v26 = [*(a1 + 40) defaults];
    [v26 setObject:*(*(a1 + 40) + 24) forKey:@"EMFTypingNamesKey"];
  }

  if (v3 && v12)
  {
    v27 = [*(*(a1 + 40) + 8) objectForKey:v12];
    v28 = v27 == 0;

    if (v28)
    {
      v29 = *(*(a1 + 40) + 8);
      v30 = [v3 mutableCopy];
      [v29 setObject:v30 forKey:v12];
    }
  }

  else if (!v12)
  {
    goto LABEL_37;
  }

  if (([*(*(a1 + 40) + 16) containsObject:v12] & 1) == 0)
  {
    [*(*(a1 + 40) + 16) addObject:v12];
  }

  if (*(a1 + 56))
  {
    v31 = [*(*(a1 + 40) + 24) objectForKey:v12];
    v32 = v31 == 0;

    if (v32)
    {
      [*(*(a1 + 40) + 24) setObject:*(a1 + 56) forKey:v12];
    }
  }

LABEL_37:
  if ([*(a1 + 40) maximumRecentsCount])
  {
    v33 = [*(*(a1 + 40) + 16) count];
    if (v33 > [*(a1 + 40) maximumRecentsCount])
    {
      [*(*(a1 + 40) + 16) removeObjectsInRange:{objc_msgSend(*(a1 + 40), "maximumRecentsCount"), objc_msgSend(*(*(a1 + 40) + 16), "count") - objc_msgSend(*(a1 + 40), "maximumRecentsCount")}];
    }
  }

  [*(a1 + 40) setIsDefaultDirty:1];
}

- (void)migrateInSkinTonePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = _getSharedSerialOperationQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__EMFEmojiPreferences_migrateInSkinTonePreferences___block_invoke;
  v7[3] = &unk_1E7A5FA30;
  v7[4] = self;
  v8 = preferencesCopy;
  v6 = preferencesCopy;
  dispatch_sync(v5, v7);
}

uint64_t __52__EMFEmojiPreferences_migrateInSkinTonePreferences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = [v5 defaults];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:*(*(a1 + 32) + 32) forKey:@"EMFSkinToneBaseKeyPreferences"];
  }

  else
  {
    [v7 removeObjectForKey:@"EMFSkinToneBaseKeyPreferences"];
  }

  v9 = *(a1 + 32);

  return [v9 setIsDefaultDirty:1];
}

- (void)migrateInPreviouslyUsedCategory:(id)category
{
  categoryCopy = category;
  v5 = _getSharedSerialOperationQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__EMFEmojiPreferences_migrateInPreviouslyUsedCategory___block_invoke;
  v7[3] = &unk_1E7A5FA30;
  v8 = categoryCopy;
  selfCopy = self;
  v6 = categoryCopy;
  dispatch_sync(v5, v7);
}

uint64_t __55__EMFEmojiPreferences_migrateInPreviouslyUsedCategory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) defaults];
  v4 = v3;
  if (v2)
  {
    [v3 setObject:*(a1 + 32) forKey:@"EMFPreviouslyUsedCategoryKey"];
  }

  else
  {
    [v3 removeObjectForKey:@"EMFPreviouslyUsedCategoryKey"];
  }

  v5 = *(a1 + 40);

  return [v5 setIsDefaultDirty:1];
}

- (void)migrateInPreviouslyUsedCategoryIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = _getSharedSerialOperationQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EMFEmojiPreferences_migrateInPreviouslyUsedCategoryIndexes___block_invoke;
  v7[3] = &unk_1E7A5FA30;
  v7[4] = self;
  v8 = indexesCopy;
  v6 = indexesCopy;
  dispatch_sync(v5, v7);
}

uint64_t __62__EMFEmojiPreferences_migrateInPreviouslyUsedCategoryIndexes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = v5[5];
  v7 = [v5 defaults];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:*(*(a1 + 32) + 40) forKey:@"EMFViewedInCategoryKey"];
  }

  else
  {
    [v7 removeObjectForKey:@"EMFViewedInCategoryKey"];
  }

  v9 = *(a1 + 32);

  return [v9 setIsDefaultDirty:1];
}

- (void)migrateInDidDisplaySkinToneHelp:(BOOL)help
{
  v5 = _getSharedSerialOperationQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__EMFEmojiPreferences_migrateInDidDisplaySkinToneHelp___block_invoke;
  v6[3] = &unk_1E7A5F9E0;
  v6[4] = self;
  helpCopy = help;
  dispatch_sync(v5, v6);
}

uint64_t __55__EMFEmojiPreferences_migrateInDidDisplaySkinToneHelp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaults];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v2 setObject:v3 forKey:@"EMFDidDisplaySkinToneHelpKey"];

  v4 = *(a1 + 32);

  return [v4 setIsDefaultDirty:1];
}

- (double)scoreForSequenceUnsafe:(int64_t)unsafe
{
  v3 = self->_currentSequence - unsafe;
  if (v3 < 1)
  {
    return 0.0;
  }

  else
  {
    return 1.0 / (v3 * 0.1 + 1.0);
  }
}

- (double)scoreForSequence:(int64_t)sequence
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EMFEmojiPreferences_scoreForSequence___block_invoke;
  block[3] = &unk_1E7A5FA58;
  block[5] = &v9;
  block[6] = sequence;
  block[4] = self;
  dispatch_sync(v5, block);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void *__40__EMFEmojiPreferences_scoreForSequence___block_invoke(void *result)
{
  v1 = *(result[4] + 48) - result[6];
  if (v1 < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0 / (v1 * 0.1 + 1.0);
  }

  *(*(result[5] + 8) + 24) = v2;
  return result;
}

- (double)scoreForEmojiStringUnsafe:(id)unsafe
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_usageHistory objectForKey:unsafe];
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          -[EMFEmojiPreferences scoreForSequenceUnsafe:](self, "scoreForSequenceUnsafe:", [*(*(&v13 + 1) + 8 * i) integerValue]);
          v9 = v9 + v11;
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)scoreForEmojiString:(id)string
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EMFEmojiPreferences_scoreForEmojiString___block_invoke;
  block[3] = &unk_1E7A5F968;
  v21 = &v22;
  block[4] = self;
  v6 = stringCopy;
  v20 = v6;
  dispatch_sync(v5, block);

  v7 = v23[5];
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
    if (v9)
    {
      v10 = *v16;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          -[EMFEmojiPreferences scoreForSequence:](self, "scoreForSequence:", [*(*(&v15 + 1) + 8 * i) integerValue]);
          v11 = v11 + v13;
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v28 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  _Block_object_dispose(&v22, 8);
  return v11;
}

uint64_t __43__EMFEmojiPreferences_scoreForEmojiString___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKey:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (void)signalEngagementToUnifiedRecencyServiceForEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = StickersLibraryCore(emojiCopy);
  if (v4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v5 = get_STKImageGlyphRecencyObjCFacadeClass(void)::softClass;
    v20 = get_STKImageGlyphRecencyObjCFacadeClass(void)::softClass;
    if (!get_STKImageGlyphRecencyObjCFacadeClass(void)::softClass)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = ___ZL39get_STKImageGlyphRecencyObjCFacadeClassv_block_invoke;
      v15 = &unk_1E7A5FBD0;
      v16 = &v17;
      StickersLibraryCore(v4);
      v18[3] = objc_getClass("_STKImageGlyphRecencyObjCFacade");
      get_STKImageGlyphRecencyObjCFacadeClass(void)::softClass = *(v16[1] + 24);
      v5 = v18[3];
    }

    v6 = v5;
    _Block_object_dispose(&v17, 8);
    v7 = objc_alloc_init(v5);
    if (v7)
    {
      string = [emojiCopy string];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__EMFEmojiPreferences_signalEngagementToUnifiedRecencyServiceForEmoji___block_invoke;
      v10[3] = &unk_1E7A5FA80;
      v11 = emojiCopy;
      [v7 didUseEmoji:string completionHandler:v10];

      v9 = v11;
    }

    else
    {
      v9 = emf_logging_get_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [EMFEmojiPreferences signalEngagementToUnifiedRecencyServiceForEmoji:v9];
      }
    }
  }

  else
  {
    v7 = emf_logging_get_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EMFEmojiPreferences signalEngagementToUnifiedRecencyServiceForEmoji:v7];
    }
  }
}

void __71__EMFEmojiPreferences_signalEngagementToUnifiedRecencyServiceForEmoji___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = emf_logging_get_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      __71__EMFEmojiPreferences_signalEngagementToUnifiedRecencyServiceForEmoji___block_invoke_cold_1(v5, &v7, v4);
    }
  }

  else
  {
    v4 = emf_logging_get_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) string];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1AF04E000, v4, OS_LOG_TYPE_INFO, "EMFEmojiPreferencesService donated engagement to unified recency service: '%@'.", &v7, 0xCu);
    }
  }
}

- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement
{
  emojiCopy = emoji;
  contextCopy = context;
  queryCopy = query;
  positionCopy = position;
  runCopy = run;
  v19 = objc_alloc_init(EMFDPEventDispatcher);
  LOBYTE(v24) = engagement;
  [(EMFDPEventDispatcher *)v19 didUseEmoji:emojiCopy usageSource:source replacementContext:contextCopy searchQuery:queryCopy resultPosition:positionCopy numberSearchQueriesRun:runCopy wasPositiveEngagement:v24];
  if (contextCopy)
  {
    v20 = contextCopy;
  }

  else
  {
    v20 = queryCopy;
  }

  v21 = v20;
  if (v21)
  {
    string = [emojiCopy string];
    localeIdentifier = [emojiCopy localeIdentifier];
    [(EMFEmojiPreferences *)self recordEmojiEngagement:string keyword:v21 localeIdentifier:localeIdentifier];
  }

  [(EMFEmojiPreferences *)self didUseEmoji:emojiCopy usageMode:0];
  [(EMFEmojiPreferences *)self signalEngagementToUnifiedRecencyServiceForEmoji:emojiCopy];
}

- (void)didUseEmojiInEmojiKeyboardPalette:(id)palette wasFromRecentsSection:(BOOL)section
{
  if (section)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  LOBYTE(v5) = 1;
  [(EMFEmojiPreferences *)self didUseEmoji:palette usageSource:v4 replacementContext:0 searchQuery:0 resultPosition:0 numberSearchQueriesRun:0 wasPositiveEngagement:v5];
}

- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name replacementContext:(id)context
{
  emojiCopy = emoji;
  modeCopy = mode;
  nameCopy = name;
  contextCopy = context;
  if (contextCopy)
  {
    string = [emojiCopy string];
    localeIdentifier = [emojiCopy localeIdentifier];
    [(EMFEmojiPreferences *)self recordEmojiEngagement:string keyword:contextCopy localeIdentifier:localeIdentifier];
  }

  [(EMFEmojiPreferences *)self didUseEmoji:emojiCopy usageMode:modeCopy typingName:nameCopy];
}

- (void)didUseEmoji:(id)emoji usageMode:(id)mode typingName:(id)name
{
  emojiCopy = emoji;
  nameCopy = name;
  if (!+[EMFEmojiPreferences deviceStateIsLocked])
  {
    [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__5;
    v14[4] = __Block_byref_object_dispose__5;
    v15 = 0;
    v9 = _getSharedSerialOperationQueue();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__EMFEmojiPreferences_didUseEmoji_usageMode_typingName___block_invoke;
    v10[3] = &unk_1E7A5FAA8;
    v10[4] = self;
    v11 = nameCopy;
    v13 = v14;
    v12 = emojiCopy;
    dispatch_sync(v9, v10);

    _Block_object_dispose(v14, 8);
  }
}

void __56__EMFEmojiPreferences_didUseEmoji_usageMode_typingName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsDefaultDirty:1];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v50 = [*(a1 + 32) defaults];
    [v50 setObject:*(*(a1 + 32) + 16) forKey:@"EMFRecentsKey"];

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 8))
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v51 = [*(a1 + 32) defaults];
    [v51 setObject:*(*(a1 + 32) + 8) forKey:@"EMFUsageHistoryKey"];
  }

  if ([*(a1 + 40) length] && !*(*(a1 + 32) + 24))
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = v9;

    v52 = [*(a1 + 32) defaults];
    [v52 setObject:*(*(a1 + 32) + 24) forKey:@"EMFTypingNamesKey"];
  }

  v53 = [*(a1 + 48) string];
  v12 = [EMFStringUtilities _preferenceIndexString:?];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if ([*(a1 + 32) shouldCountEmojiStringForUsageHistory:*(*(*(a1 + 56) + 8) + 40)])
  {
    if ([*(a1 + 48) supportsSkinToneVariants])
    {
      if (!*(*(a1 + 32) + 32))
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
        v16 = *(a1 + 32);
        v17 = *(v16 + 32);
        *(v16 + 32) = v15;

        v54 = [*(a1 + 32) defaults];
        [v54 setObject:*(*(a1 + 32) + 32) forKey:@"EMFSkinToneBaseKeyPreferences"];
      }

      v55 = [*(a1 + 48) string];
      v18 = [EMFStringUtilities _baseStringForEmojiString:?];

      if ([EMFEmojiCategory _supportsCoupleSkinToneSelection:v18])
      {
        v19 = [EMFEmojiToken emojiTokenWithString:v18 localeData:0];
      }

      else
      {
        v19 = [*(a1 + 48) copyWithSkinToneVariant:0];
      }

      v56 = v19;
      if (v19)
      {
        v20 = *(*(a1 + 32) + 32);
        v21 = [*(a1 + 48) string];
        v22 = [v56 string];
        [v20 setObject:v21 forKey:v22];
      }
    }

    v23 = MEMORY[0x1E696AD98];
    ++*(*(a1 + 32) + 48);
    v57 = [v23 numberWithInteger:?];
    v24 = [*(a1 + 32) defaults];
    [v24 setObject:v57 forKey:@"EMFRecentSequenceNumberKey"];

    v25 = [*(*(a1 + 32) + 8) objectForKey:*(*(*(a1 + 56) + 8) + 40)];
    v26 = v25;
    if (v25)
    {
      [v25 addObject:v57];
    }

    else
    {
      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
      [v26 addObject:v57];
    }

    [*(*(a1 + 32) + 8) setObject:v26 forKey:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) scoreForEmojiStringUnsafe:*(*(*(a1 + 56) + 8) + 40)];
    v28 = v27;
    if ([*(*(a1 + 32) + 16) count] && (v29 = objc_msgSend(*(*(a1 + 32) + 16), "indexOfObject:", *(*(*(a1 + 56) + 8) + 40)), v29 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [*(*(a1 + 32) + 16) removeObjectAtIndex:v29];
    }

    else
    {
      v30 = [*(*(a1 + 32) + 16) count];
      if (v30 >= [*(a1 + 32) maximumRecentsCount])
      {
        v31 = *(a1 + 32);
        v32 = [v31[2] lastObject];
        [v31 scoreForEmojiStringUnsafe:v32];
        v34 = v33;

        if (v34 < v28)
        {
          v35 = *(a1 + 32);
          v36 = *(v35 + 24);
          v37 = [*(v35 + 16) lastObject];
          [v36 removeObjectForKey:v37];

          [*(*(a1 + 32) + 16) removeLastObject];
        }
      }
    }

    v38 = 0;
    do
    {
      v39 = v38;
      if (v38 == [*(*(a1 + 32) + 16) count])
      {
        break;
      }

      v40 = *(a1 + 32);
      v41 = [v40[2] objectAtIndex:v39];
      [v40 scoreForEmojiStringUnsafe:v41];
      v43 = v42;

      v38 = v39 + 1;
    }

    while (v43 >= v28);
    [*(*(a1 + 32) + 16) insertObject:*(*(*(a1 + 56) + 8) + 40) atIndex:v39];
    v44 = [*(a1 + 48) localeIdentifier];
    if (v44)
    {
      v45 = [*(a1 + 40) length];

      if (v45)
      {
        v46 = [*(*(a1 + 32) + 24) objectForKey:*(*(*(a1 + 56) + 8) + 40)];
        v47 = [v46 mutableCopy];

        if (!v47)
        {
          v47 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
          [*(*(a1 + 32) + 24) setObject:? forKey:?];
        }

        v48 = *(a1 + 40);
        v49 = [*(a1 + 48) localeIdentifier];
        [v47 setObject:v48 forKey:v49];
      }
    }
  }
}

- (BOOL)shouldCountEmojiStringForUsageHistory:(id)history
{
  historyCopy = history;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [historyCopy length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__EMFEmojiPreferences_shouldCountEmojiStringForUsageHistory___block_invoke;
  v7[3] = &unk_1E7A5FAD0;
  v7[4] = &v8;
  [historyCopy _enumerateEmojiTokensInRange:0 block:{v4, v7}];
  v5 = v9[3] == 1;
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __61__EMFEmojiPreferences_shouldCountEmojiStringForUsageHistory___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (void)didViewEmojiIndex:(int64_t)index forCategory:(id)category
{
  categoryCopy = category;
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v7 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EMFEmojiPreferences_didViewEmojiIndex_forCategory___block_invoke;
  block[3] = &unk_1E7A5FAF8;
  v10 = categoryCopy;
  indexCopy = index;
  block[4] = self;
  v8 = categoryCopy;
  dispatch_sync(v7, block);
}

uint64_t __53__EMFEmojiPreferences_didViewEmojiIndex_forCategory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1 + 32) defaults];
    [v6 setObject:*(*(a1 + 32) + 40) forKey:@"EMFViewedInCategoryKey"];

    v2 = *(*(a1 + 32) + 40);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  [v2 setObject:v7 forKey:*(a1 + 40)];

  v8 = [*(a1 + 32) defaults];
  [v8 setObject:*(a1 + 40) forKey:@"EMFPreviouslyUsedCategoryKey"];

  v9 = *(a1 + 32);

  return [v9 setIsDefaultDirty:1];
}

- (void)didDisplaySkinToneHelp
{
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v3 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EMFEmojiPreferences_didDisplaySkinToneHelp__block_invoke;
  block[3] = &unk_1E7A5F990;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __45__EMFEmojiPreferences_didDisplaySkinToneHelp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaults];
  [v2 setObject:MEMORY[0x1E695E118] forKey:@"EMFDidDisplaySkinToneHelpKey"];

  v3 = *(a1 + 32);

  return [v3 setIsDefaultDirty:1];
}

- (BOOL)hasLastUsedVariantForEmoji:(id)emoji
{
  emojiCopy = emoji;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EMFEmojiPreferences_hasLastUsedVariantForEmoji___block_invoke;
  block[3] = &unk_1E7A5F940;
  selfCopy = self;
  v11 = &v12;
  v9 = emojiCopy;
  v6 = emojiCopy;
  dispatch_sync(v5, block);

  LOBYTE(emojiCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return emojiCopy;
}

void __50__EMFEmojiPreferences_hasLastUsedVariantForEmoji___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) supportsSkinToneVariants] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v5 = [*(a1 + 32) string];
  if ([*(a1 + 32) skinTone])
  {
    v2 = [EMFStringUtilities _baseStringForEmojiString:v5];

    v3 = v2;
  }

  else
  {
    v3 = v5;
  }

  v6 = v3;
  v4 = [*(*(a1 + 40) + 32) objectForKey:?];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)recentVariantEmojiForEmoji:(id)emoji
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  emojiCopy = emoji;
  v17 = emojiCopy;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EMFEmojiPreferences_recentVariantEmojiForEmoji___block_invoke;
  block[3] = &unk_1E7A5FB20;
  block[4] = self;
  v10 = emojiCopy;
  v11 = &v12;
  v6 = emojiCopy;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__EMFEmojiPreferences_recentVariantEmojiForEmoji___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) recentEmojis];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 isEqualIgnoringModifiers:*(a1 + 40)])
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)lastUsedVariantEmojiForEmoji:(id)emoji
{
  v31[2] = *MEMORY[0x1E69E9840];
  emojiCopy = emoji;
  supportsSkinToneVariants = [emojiCopy supportsSkinToneVariants];
  v6 = emojiCopy;
  v7 = v6;
  v8 = v6;
  if (supportsSkinToneVariants)
  {
    string = [v6 string];
    v10 = [EMFStringUtilities _baseStringForEmojiString:string];

    if ([EMFEmojiCategory _isCoupleMultiSkinToneEmoji:v10])
    {
      v31[0] = @"EMFSkinToneSpecifierTypeFitzpatrickNone";
      v31[1] = @"EMFSkinToneSpecifierTypeFitzpatrickNone";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v12 = [v7 copyWithSkinToneVariantSpecifier:v11];
    }

    else
    {
      v12 = v7;
      if ([v7 skinTone])
      {
        v12 = [v7 copyWithSkinToneVariant:0];
      }
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__5;
    v29 = __Block_byref_object_dispose__5;
    v30 = 0;
    v13 = _getSharedSerialOperationQueue();
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __52__EMFEmojiPreferences_lastUsedVariantEmojiForEmoji___block_invoke;
    v21 = &unk_1E7A5F968;
    v24 = &v25;
    selfCopy = self;
    v14 = v12;
    v23 = v14;
    dispatch_sync(v13, &v18);

    v15 = v26[5];
    if (v15)
    {
      localeData = [v7 localeData];
      v8 = [EMFEmojiToken emojiTokenWithString:v15 localeData:localeData];
    }

    else
    {
      v8 = v7;
    }

    _Block_object_dispose(&v25, 8);
  }

  return v8;
}

void __52__EMFEmojiPreferences_lastUsedVariantEmojiForEmoji___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = [*(a1 + 40) string];
  v3 = [v2 objectForKey:?];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)previouslyUsedIndexInCategory:(id)category
{
  categoryCopy = category;
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EMFEmojiPreferences_previouslyUsedIndexInCategory___block_invoke;
  block[3] = &unk_1E7A5FB20;
  block[4] = self;
  v10 = categoryCopy;
  v11 = &v12;
  v6 = categoryCopy;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __53__EMFEmojiPreferences_previouslyUsedIndexInCategory___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  if (v2)
  {
    v3 = v2;
    *(*(a1[6] + 8) + 24) = [v2 unsignedIntegerValue];
    v2 = v3;
  }
}

- (id)typingNameForEmoji:(id)emoji
{
  emojiCopy = emoji;
  [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
  string = [emojiCopy string];
  v6 = [EMFStringUtilities _preferenceIndexString:string];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v7 = _getSharedSerialOperationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EMFEmojiPreferences_typingNameForEmoji___block_invoke;
  block[3] = &unk_1E7A5F968;
  v17 = &v18;
  block[4] = self;
  v8 = v6;
  v16 = v8;
  dispatch_sync(v7, block);

  localeIdentifier = [emojiCopy localeIdentifier];

  if (!localeIdentifier || (v10 = v19[5], [emojiCopy localeIdentifier], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v11), firstObject = objc_claimAutoreleasedReturnValue(), v11, !firstObject))
  {
    allValues = [v19[5] allValues];
    firstObject = [allValues firstObject];
  }

  _Block_object_dispose(&v18, 8);

  return firstObject;
}

uint64_t __42__EMFEmojiPreferences_typingNameForEmoji___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) objectForKey:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_cachedFlagCategoryEmoji:(id)emoji
{
  emojiCopy = emoji;
  v5 = MEMORY[0x1E696AEC0];
  v6 = EMFGetDeviceBuildVersion();
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [currentLocale objectForKey:*MEMORY[0x1E695D970]];
  v9 = [v5 stringWithFormat:@"%@_%@", v6, v8];

  v10 = CFPreferencesCopyAppValue(v9, [self _cacheDomain]);
  v11 = v10;
  if (emojiCopy)
  {
    if (!v10)
    {
      v11 = emojiCopy[2](emojiCopy);
      if (v11)
      {
        CFPreferencesSetAppValue(v9, v11, [self _cacheDomain]);
        CFPreferencesAppSynchronize([self _cacheDomain]);
      }
    }
  }

  return v11;
}

- (void)_setRecentStrings:(id)strings
{
  stringsCopy = strings;
  if (!+[EMFEmojiPreferences deviceStateIsLocked])
  {
    [(EMFEmojiPreferences *)self loadDefaultsIfNecessaryThreadSafe];
    v5 = _getSharedSerialOperationQueue();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__EMFEmojiPreferences_Testing___setRecentStrings___block_invoke;
    v6[3] = &unk_1E7A5FA30;
    v6[4] = self;
    v7 = stringsCopy;
    dispatch_sync(v5, v6);
  }
}

uint64_t __50__EMFEmojiPreferences_Testing___setRecentStrings___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    if (*(a1 + 40))
    {
      v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      v4 = *(a1 + 32);
      v5 = *(v4 + 16);
      *(v4 + 16) = v3;

      v6 = [*(a1 + 32) defaults];
      [v6 setObject:*(*(a1 + 32) + 16) forKey:@"EMFRecentsKey"];

      v2 = *(*(a1 + 32) + 16);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = *(a1 + 40);

  return [v2 setArray:v7];
}

void __71__EMFEmojiPreferences_signalEngagementToUnifiedRecencyServiceForEmoji___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "EMFEmojiPreferencesService could not write to the unified recency service: '%{public}@'.", buf, 0xCu);
}

@end