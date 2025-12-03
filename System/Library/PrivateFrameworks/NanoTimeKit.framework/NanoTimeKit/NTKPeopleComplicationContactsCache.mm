@interface NTKPeopleComplicationContactsCache
+ (id)sharedCache;
- (BOOL)checkValidityOfContact:(id)contact block:(id)block;
- (BOOL)contactIdentifierIsFavorited:(id)favorited;
- (NTKPeopleComplicationContactsCache)init;
- (id)_contactKeysToFetchWithThumbnail;
- (id)_contactKeysToFetchWithoutThumbnail;
- (id)_favoritesMappingLocked;
- (id)_fetchContactForId:(id)id;
- (id)_fetchMyCard;
- (id)_mappedFavoriteContacts;
- (id)abbreviatedNameForContact:(id)contact;
- (id)computeNonFavoriteAllContactsWithCount:(unint64_t)count;
- (id)contactForId:(id)id;
- (id)favoriteContacts;
- (id)firstNonFavoriteAllContact;
- (id)fullNameForContact:(id)contact;
- (id)myCard;
- (id)nonFavoriteAllContactsWithCount:(unint64_t)count;
- (id)shortNameForContact:(id)contact;
- (void)_didReceiveContactStoreChangedNotification;
- (void)_didReceiveDeviceLockStateDidChangeNotification;
- (void)_didReceiveFavoritesChangeRelatedNotification;
- (void)_favoritesEntriesChangedExternally;
- (void)_fetchMyCard;
- (void)_locked_createFavorites;
- (void)_queue_findContactWithFullName:(id)name block:(id)block;
- (void)_queue_flushCNFavoritesReload;
- (void)_queue_reloadContacts;
- (void)_queued_flushCNFavorites;
- (void)_queued_loadAllContacts;
- (void)_queued_loadFavoriteContacts;
- (void)_queued_loadMyCard;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)dealloc;
- (void)findContactWithFullName:(id)name block:(id)block;
- (void)setupNotificationsIfNecessary;
@end

@implementation NTKPeopleComplicationContactsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_2 != -1)
  {
    +[NTKPeopleComplicationContactsCache sharedCache];
  }

  v3 = sharedCache_cache_0;

  return v3;
}

void __49__NTKPeopleComplicationContactsCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(NTKPeopleComplicationContactsCache);
  v1 = sharedCache_cache_0;
  sharedCache_cache_0 = v0;
}

- (NTKPeopleComplicationContactsCache)init
{
  v21.receiver = self;
  v21.super_class = NTKPeopleComplicationContactsCache;
  v2 = [(NTKPeopleComplicationContactsCache *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    favoritesMappingLock = v2->_favoritesMappingLock;
    v2->_favoritesMappingLock = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    favoritesEntriesLock = v2->_favoritesEntriesLock;
    v2->_favoritesEntriesLock = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    allContactsEntriesLock = v2->_allContactsEntriesLock;
    v2->_allContactsEntriesLock = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    myCardEntryLock = v2->_myCardEntryLock;
    v2->_myCardEntryLock = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    hasSetupNotificationsLock = v2->_hasSetupNotificationsLock;
    v2->_hasSetupNotificationsLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v14 = tcc_identity_create();
    [v13 setAssumedIdentity:v14];

    v15 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v13];
    contactStore = v2->_contactStore;
    v2->_contactStore = v15;

    [(NTKPeopleComplicationContactsCache *)v2 _locked_createFavorites];
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v18 = dispatch_queue_create("loadFavoritesQueueIdentifier", v17);
    queue = v2->_queue;
    v2->_queue = v18;
  }

  return v2;
}

- (void)dealloc
{
  [(NTKPeopleComplicationContactsCache *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = NTKPeopleComplicationContactsCache;
  [(NTKPeopleComplicationContactsCache *)&v3 dealloc];
}

- (void)setupNotificationsIfNecessary
{
  [(NSLock *)self->_hasSetupNotificationsLock lock];
  hasSetupNotifications = self->_hasSetupNotifications;
  [(NSLock *)self->_hasSetupNotificationsLock unlock];
  if (!hasSetupNotifications)
  {
    [(NTKPeopleComplicationContactsCache *)self _setupNotifications];
    [(NSLock *)self->_hasSetupNotificationsLock lock];
    self->_hasSetupNotifications = 1;
    hasSetupNotificationsLock = self->_hasSetupNotificationsLock;

    [(NSLock *)hasSetupNotificationsLock unlock];
  }
}

- (id)myCard
{
  [(NTKPeopleComplicationContactsCache *)self setupNotificationsIfNecessary];
  [(NSLock *)self->_myCardEntryLock lock];
  myCard = self->_myCard;
  if (!myCard)
  {
    _fetchMyCard = [(NTKPeopleComplicationContactsCache *)self _fetchMyCard];
    v5 = self->_myCard;
    self->_myCard = _fetchMyCard;

    myCard = self->_myCard;
  }

  v6 = myCard;
  [(NSLock *)self->_myCardEntryLock unlock];

  return v6;
}

- (id)favoriteContacts
{
  [(NTKPeopleComplicationContactsCache *)self setupNotificationsIfNecessary];
  [(NSLock *)self->_favoritesMappingLock lock];
  _favoritesMappingLocked = [(NTKPeopleComplicationContactsCache *)self _favoritesMappingLocked];
  allValues = [(NSDictionary *)self->_favoritesMapping allValues];
  [(NSLock *)self->_favoritesMappingLock unlock];

  return allValues;
}

- (id)_favoritesMappingLocked
{
  p_favoritesMapping = &self->_favoritesMapping;
  favoritesMapping = self->_favoritesMapping;
  if (!favoritesMapping)
  {
    [(NSLock *)self->_favoritesMappingLock unlock];
    _mappedFavoriteContacts = [(NTKPeopleComplicationContactsCache *)self _mappedFavoriteContacts];
    [(NSLock *)self->_favoritesMappingLock lock];
    if (!self->_favoritesMapping)
    {
      objc_storeStrong(p_favoritesMapping, _mappedFavoriteContacts);
    }

    favoritesMapping = *p_favoritesMapping;
  }

  return favoritesMapping;
}

- (id)firstNonFavoriteAllContact
{
  [(NSLock *)self->_allContactsEntriesLock lock];
  nonFavoriteValidAllContacts = self->_nonFavoriteValidAllContacts;
  if (!nonFavoriteValidAllContacts || ![(NSArray *)nonFavoriteValidAllContacts count])
  {
    v4 = [(NTKPeopleComplicationContactsCache *)self computeNonFavoriteAllContactsWithCount:1];
    v5 = self->_nonFavoriteValidAllContacts;
    self->_nonFavoriteValidAllContacts = v4;
  }

  firstObject = [(NSArray *)self->_nonFavoriteValidAllContacts firstObject];
  [(NSLock *)self->_allContactsEntriesLock unlock];

  return firstObject;
}

- (id)nonFavoriteAllContactsWithCount:(unint64_t)count
{
  [(NTKPeopleComplicationContactsCache *)self setupNotificationsIfNecessary];
  [(NSLock *)self->_allContactsEntriesLock lock];
  nonFavoriteValidAllContacts = self->_nonFavoriteValidAllContacts;
  if (!nonFavoriteValidAllContacts || [(NSArray *)nonFavoriteValidAllContacts count]< count)
  {
    v6 = [(NTKPeopleComplicationContactsCache *)self computeNonFavoriteAllContactsWithCount:count];
    v7 = self->_nonFavoriteValidAllContacts;
    self->_nonFavoriteValidAllContacts = v6;
  }

  v8 = [(NSArray *)self->_nonFavoriteValidAllContacts copy];
  [(NSLock *)self->_allContactsEntriesLock unlock];

  return v8;
}

- (id)shortNameForContact:(id)contact
{
  v3 = shortNameForContact__onceToken;
  contactCopy = contact;
  if (v3 != -1)
  {
    [NTKPeopleComplicationContactsCache shortNameForContact:];
  }

  [shortNameForContact__nameFormatterLock lock];
  v5 = [shortNameForContact__nameFormatter stringFromContact:contactCopy];

  [shortNameForContact__nameFormatterLock unlock];

  return v5;
}

uint64_t __58__NTKPeopleComplicationContactsCache_shortNameForContact___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = shortNameForContact__nameFormatterLock;
  shortNameForContact__nameFormatterLock = v0;

  v2 = objc_opt_new();
  v3 = shortNameForContact__nameFormatter;
  shortNameForContact__nameFormatter = v2;

  v4 = shortNameForContact__nameFormatter;

  return [v4 setStyle:1000];
}

- (id)fullNameForContact:(id)contact
{
  v3 = fullNameForContact__onceToken;
  contactCopy = contact;
  if (v3 != -1)
  {
    [NTKPeopleComplicationContactsCache fullNameForContact:];
  }

  [fullNameForContact__nameFormatterLock lock];
  v5 = [fullNameForContact__nameFormatter stringFromContact:contactCopy];

  [fullNameForContact__nameFormatterLock unlock];

  return v5;
}

uint64_t __57__NTKPeopleComplicationContactsCache_fullNameForContact___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = fullNameForContact__nameFormatterLock;
  fullNameForContact__nameFormatterLock = v0;

  v2 = objc_opt_new();
  v3 = fullNameForContact__nameFormatter;
  fullNameForContact__nameFormatter = v2;

  v4 = fullNameForContact__nameFormatter;

  return [v4 setStyle:0];
}

- (id)abbreviatedNameForContact:(id)contact
{
  contactCopy = contact;
  if (abbreviatedNameForContact__onceToken != -1)
  {
    [NTKPeopleComplicationContactsCache abbreviatedNameForContact:];
  }

  [abbreviatedNameForContact__nameFormatterLock lock];
  v5 = [abbreviatedNameForContact__nameFormatter stringFromContact:contactCopy];
  [abbreviatedNameForContact__nameFormatterLock unlock];
  if (!v5)
  {
    givenName = [contactCopy givenName];
    if (![givenName isEqualToString:&stru_284110E98])
    {
      goto LABEL_8;
    }

    familyName = [contactCopy familyName];
    v8 = [familyName isEqualToString:&stru_284110E98];

    if (v8)
    {
      givenName = [(NTKPeopleComplicationContactsCache *)self fullNameForContact:contactCopy];
      if ([givenName length] && (CNStringContainsNonLatinCharacters() & 1) == 0)
      {
        v10 = [givenName length];
        if (v10 >= 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v10;
        }

        v12 = [givenName rangeOfComposedCharacterSequencesForRange:{0, v11}];
        v14 = [givenName substringWithRange:{v12, v13}];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v5 = [v14 uppercaseStringWithLocale:currentLocale];

        goto LABEL_9;
      }

LABEL_8:
      v5 = 0;
LABEL_9:

      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_11:

  return v5;
}

uint64_t __64__NTKPeopleComplicationContactsCache_abbreviatedNameForContact___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = abbreviatedNameForContact__nameFormatterLock;
  abbreviatedNameForContact__nameFormatterLock = v0;

  v2 = objc_opt_new();
  v3 = abbreviatedNameForContact__nameFormatter;
  abbreviatedNameForContact__nameFormatter = v2;

  v4 = abbreviatedNameForContact__nameFormatter;

  return [v4 setStyle:1002];
}

- (BOOL)checkValidityOfContact:(id)contact block:(id)block
{
  contactCopy = contact;
  blockCopy = block;
  v8 = [(NTKPeopleComplicationContactsCache *)self fullNameForContact:contactCopy];
  v9 = [(NTKPeopleComplicationContactsCache *)self abbreviatedNameForContact:contactCopy];
  v10 = [(NTKPeopleComplicationContactsCache *)self shortNameForContact:contactCopy];
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    v15 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache checkValidityOfContact:block:];
    }
  }

  else
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = &stru_284110E98;
    }

    blockCopy[2](blockCopy, contactCopy, v8, v14, v10);
  }

  return v13;
}

- (id)contactForId:(id)id
{
  idCopy = id;
  [(NTKPeopleComplicationContactsCache *)self setupNotificationsIfNecessary];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isLocked = [currentDevice isLocked];

  if (isLocked)
  {
    v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache contactForId:];
    }

    v8 = 0;
  }

  else
  {
    [(NSLock *)self->_favoritesMappingLock lock];
    _favoritesMappingLocked = [(NTKPeopleComplicationContactsCache *)self _favoritesMappingLocked];
    v8 = [_favoritesMappingLocked objectForKeyedSubscript:idCopy];
    [(NSLock *)self->_favoritesMappingLock unlock];
    if (!v8)
    {
      v8 = [(NTKPeopleComplicationContactsCache *)self _fetchContactForId:idCopy];
    }
  }

  return v8;
}

- (void)findContactWithFullName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NTKPeopleComplicationContactsCache_findContactWithFullName_block___block_invoke;
  v11[3] = &unk_2787863A0;
  objc_copyWeak(&v14, &location);
  v12 = nameCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = nameCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __68__NTKPeopleComplicationContactsCache_findContactWithFullName_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_findContactWithFullName:*(a1 + 32) block:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (BOOL)contactIdentifierIsFavorited:(id)favorited
{
  favoritesMappingLock = self->_favoritesMappingLock;
  favoritedCopy = favorited;
  [(NSLock *)favoritesMappingLock lock];
  _favoritesMappingLocked = [(NTKPeopleComplicationContactsCache *)self _favoritesMappingLocked];
  v7 = [_favoritesMappingLocked objectForKeyedSubscript:favoritedCopy];

  [(NSLock *)self->_favoritesMappingLock unlock];
  return v7 != 0;
}

- (id)_contactKeysToFetchWithThumbnail
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NTKPeopleComplicationContactsCache__contactKeysToFetchWithThumbnail__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (_contactKeysToFetchWithThumbnail_onceToken != -1)
  {
    dispatch_once(&_contactKeysToFetchWithThumbnail_onceToken, block);
  }

  return _contactKeysToFetchWithThumbnail_keysToFetch;
}

void __70__NTKPeopleComplicationContactsCache__contactKeysToFetchWithThumbnail__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _contactKeysToFetchWithoutThumbnail];
  v1 = [v3 arrayByAddingObject:*MEMORY[0x277CBD158]];
  v2 = _contactKeysToFetchWithThumbnail_keysToFetch;
  _contactKeysToFetchWithThumbnail_keysToFetch = v1;
}

- (id)_contactKeysToFetchWithoutThumbnail
{
  if (_contactKeysToFetchWithoutThumbnail_onceToken != -1)
  {
    [NTKPeopleComplicationContactsCache _contactKeysToFetchWithoutThumbnail];
  }

  v3 = _contactKeysToFetchWithoutThumbnail_keysToFetch;

  return v3;
}

void __73__NTKPeopleComplicationContactsCache__contactKeysToFetchWithoutThumbnail__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1002];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v5[0] = v1;
  v5[1] = v0;
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v4 = _contactKeysToFetchWithoutThumbnail_keysToFetch;
  _contactKeysToFetchWithoutThumbnail_keysToFetch = v3;
}

- (id)_fetchContactForId:(id)id
{
  contactStore = self->_contactStore;
  idCopy = id;
  _contactKeysToFetchWithThumbnail = [(NTKPeopleComplicationContactsCache *)self _contactKeysToFetchWithThumbnail];
  v13 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:idCopy keysToFetch:_contactKeysToFetchWithThumbnail error:&v13];

  v8 = v13;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache _fetchContactForId:];
    }

    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (id)_mappedFavoriteContacts
{
  v31 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isLocked = [currentDevice isLocked];

  if (isLocked)
  {
    v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache _mappedFavoriteContacts];
    }

    dictionary = MEMORY[0x277CBEC10];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSLock *)self->_favoritesEntriesLock lock];
    entries = [(CNFavorites *)self->_favorites entries];
    v8 = [entries copy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v8;
    v9 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v25;
      *&v10 = 138412290;
      v23 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v5);
          }

          contactProperty = [*(*(&v24 + 1) + 8 * i) contactProperty];
          contact = [contactProperty contact];
          v16 = contact;
          if (contact)
          {
            identifier = [contact identifier];
            v18 = [(NTKPeopleComplicationContactsCache *)self _fetchContactForId:identifier];

            if (!v18)
            {
              v19 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [0 identifier];
                *buf = v23;
                v29 = identifier2;
                _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "favorite[%@] not linked to database so reverting to favorite.", buf, 0xCu);
              }

              v18 = [v16 copy];
            }

            identifier3 = [v18 identifier];
            [dictionary setObject:v18 forKeyedSubscript:identifier3];
          }

          else
          {
            v18 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "Missing contact property in favorite entry so skipping.", buf, 2u);
            }
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }

    [(NSLock *)self->_favoritesEntriesLock unlock];
  }

  return dictionary;
}

- (id)_fetchMyCard
{
  contactStore = self->_contactStore;
  _contactKeysToFetchWithoutThumbnail = [(NTKPeopleComplicationContactsCache *)self _contactKeysToFetchWithoutThumbnail];
  v8 = 0;
  v4 = [(CNContactStore *)contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:_contactKeysToFetchWithoutThumbnail error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache _fetchMyCard];
    }
  }

  return v4;
}

- (id)computeNonFavoriteAllContactsWithCount:(unint64_t)count
{
  _contactKeysToFetchWithoutThumbnail = [(NTKPeopleComplicationContactsCache *)self _contactKeysToFetchWithoutThumbnail];
  v6 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:_contactKeysToFetchWithoutThumbnail];
  [v6 setSortOrder:1];
  array = [MEMORY[0x277CBEB18] array];
  favoriteContacts = [(NTKPeopleComplicationContactsCache *)self favoriteContacts];
  contactStore = self->_contactStore;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__NTKPeopleComplicationContactsCache_computeNonFavoriteAllContactsWithCount___block_invoke;
  v16[3] = &unk_2787863F0;
  v10 = favoriteContacts;
  v17 = v10;
  selfCopy = self;
  v11 = array;
  v19 = v11;
  countCopy = count;
  LOBYTE(array) = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v6 error:&v21 usingBlock:v16];
  v12 = v21;
  if ((array & 1) == 0)
  {
    v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NTKPeopleComplicationContactsCache computeNonFavoriteAllContactsWithCount:];
    }
  }

  v14 = [v11 copy];

  return v14;
}

void __77__NTKPeopleComplicationContactsCache_computeNonFavoriteAllContactsWithCount___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__NTKPeopleComplicationContactsCache_computeNonFavoriteAllContactsWithCount___block_invoke_2;
    v7[3] = &unk_2787863C8;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v6 checkValidityOfContact:v5 block:v7];
  }

  *a3 = [*(a1 + 48) count] >= *(a1 + 56);
}

- (void)_queue_reloadContacts
{
  v12 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isLocked = [currentDevice isLocked];

  if (isLocked)
  {
    v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ skipping reload due to device being locked.", buf, 0xCu);
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__NTKPeopleComplicationContactsCache__queue_reloadContacts__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __59__NTKPeopleComplicationContactsCache__queue_reloadContacts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queued_loadMyCard];
  [*(a1 + 32) _queued_loadFavoriteContacts];
  [*(a1 + 32) _queued_loadAllContacts];
  v2 = MEMORY[0x277D85CD0];

  dispatch_async(v2, &__block_literal_global_31);
}

void __59__NTKPeopleComplicationContactsCache__queue_reloadContacts__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"NTKPeopleComplicationContactsCacheDidChangeNotification" object:0];
}

- (void)_queue_flushCNFavoritesReload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NTKPeopleComplicationContactsCache__queue_flushCNFavoritesReload__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__NTKPeopleComplicationContactsCache__queue_flushCNFavoritesReload__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queued_flushCNFavorites];
  v2 = [MEMORY[0x277CBBAE8] currentDevice];
  v3 = [v2 isLocked];

  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%@ skipping reload due to device being locked.", &v8, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) _queued_loadFavoriteContacts];
    v7 = MEMORY[0x277D85CD0];

    dispatch_async(v7, &__block_literal_global_34);
  }
}

void __67__NTKPeopleComplicationContactsCache__queue_flushCNFavoritesReload__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"NTKPeopleComplicationContactsCacheDidChangeNotification" object:0];
}

- (void)_locked_createFavorites
{
  v3 = [objc_alloc(MEMORY[0x277CBDAF8]) initWithContactStore:self->_contactStore];
  favorites = self->_favorites;
  self->_favorites = v3;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = self->_favorites;
  v7 = *MEMORY[0x277CBD1C0];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v6, v7, 0);
}

- (void)_queued_flushCNFavorites
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_favoritesEntriesLock lock];
  favorites = self->_favorites;
  self->_favorites = 0;

  [(NTKPeopleComplicationContactsCache *)self _locked_createFavorites];
  [(NSLock *)self->_favoritesEntriesLock unlock];
  [(NSLock *)self->_favoritesMappingLock lock];
  favoritesMapping = self->_favoritesMapping;
  self->_favoritesMapping = 0;

  favoritesMappingLock = self->_favoritesMappingLock;

  [(NSLock *)favoritesMappingLock unlock];
}

- (void)_queued_loadMyCard
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_myCardEntryLock lock];
  _fetchMyCard = [(NTKPeopleComplicationContactsCache *)self _fetchMyCard];
  myCard = self->_myCard;
  self->_myCard = _fetchMyCard;

  myCardEntryLock = self->_myCardEntryLock;

  [(NSLock *)myCardEntryLock unlock];
}

- (void)_queued_loadFavoriteContacts
{
  dispatch_assert_queue_V2(self->_queue);
  _mappedFavoriteContacts = [(NTKPeopleComplicationContactsCache *)self _mappedFavoriteContacts];
  [(NSLock *)self->_favoritesMappingLock lock];
  favoritesMapping = self->_favoritesMapping;
  self->_favoritesMapping = _mappedFavoriteContacts;
  v5 = _mappedFavoriteContacts;

  [(NSLock *)self->_favoritesMappingLock unlock];
}

- (void)_queued_loadAllContacts
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_allContactsEntriesLock lock];
  v3 = [(NSArray *)self->_nonFavoriteValidAllContacts count];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  [(NSLock *)self->_allContactsEntriesLock unlock];
  v5 = [(NTKPeopleComplicationContactsCache *)self computeNonFavoriteAllContactsWithCount:v4];
  [(NSLock *)self->_allContactsEntriesLock lock];
  nonFavoriteValidAllContacts = self->_nonFavoriteValidAllContacts;
  self->_nonFavoriteValidAllContacts = v5;
  v7 = v5;

  [(NSLock *)self->_allContactsEntriesLock unlock];
}

- (void)_queue_findContactWithFullName:(id)name block:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  [(NSLock *)self->_favoritesEntriesLock lock];
  entries = [(CNFavorites *)self->_favorites entries];
  v9 = [entries copy];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__45;
  v30 = __Block_byref_object_dispose__45;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__NTKPeopleComplicationContactsCache__queue_findContactWithFullName_block___block_invoke;
  v23[3] = &unk_278786418;
  v23[4] = self;
  v10 = nameCopy;
  v24 = v10;
  v25 = &v26;
  [v9 enumerateObjectsUsingBlock:v23];
  [(NSLock *)self->_favoritesEntriesLock unlock];
  v11 = v27[5];
  if (!v11)
  {
    _contactKeysToFetchWithThumbnail = [(NTKPeopleComplicationContactsCache *)self _contactKeysToFetchWithThumbnail];
    contactStore = self->_contactStore;
    v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v10];
    v22 = 0;
    v15 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v14 keysToFetch:_contactKeysToFetchWithThumbnail error:&v22];
    v16 = v22;
    firstObject = [v15 firstObject];
    v18 = v27[5];
    v27[5] = firstObject;

    if (v27[5])
    {
      v19 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v27[5] identifier];
        v21 = v27[5];
        *buf = 138412802;
        v33 = v10;
        v34 = 2112;
        v35 = identifier;
        v36 = 2112;
        v37 = v21;
        _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplicationContactsCache _queue_findContactWithFullName found all contacts for name[%@] with id[%@] [%@]", buf, 0x20u);
      }
    }

    v11 = v27[5];
  }

  blockCopy[2](blockCopy, v11);

  _Block_object_dispose(&v26, 8);
}

void __75__NTKPeopleComplicationContactsCache__queue_findContactWithFullName_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [a2 contactProperty];
  v7 = *(a1 + 32);
  v8 = [v6 contact];
  v9 = [v7 fullNameForContact:v8];

  if ([*(a1 + 40) isEqualToString:v9])
  {
    v10 = [v6 contact];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
    v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplicationContactsCache _queue_findContactWithFullName found favorite contact matching name[%@] with id[%@] [%@]", &v17, 0x20u);
    }
  }
}

- (void)_setupNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didReceiveContactStoreChangedNotification name:*MEMORY[0x277CBD140] object:0];
  [defaultCenter addObserver:self selector:sel__didReceiveFavoritesChangeRelatedNotification name:*MEMORY[0x277CBD1C8] object:0];
  v4 = +[NTKDarwinNotificationCenter defaultCenter];
  [v4 addObserver:self notificationName:*MEMORY[0x277CBD1C0] selector:sel__favoritesEntriesChangedExternally];

  v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ _setupNotifications and addObserver", &v8, 0xCu);
  }
}

- (void)_tearDownNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[NTKDarwinNotificationCenter defaultCenter];
  [v4 removeObserver:self notificationName:*MEMORY[0x277CBD1C0]];

  v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ _tearDownNotifications and removeObserver", &v8, 0xCu);
  }
}

- (void)_didReceiveContactStoreChangedNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _didReceiveContactStoreChangedNotification", &v6, 0xCu);
  }

  [(NTKPeopleComplicationContactsCache *)self _queue_reloadContacts];
}

- (void)_didReceiveFavoritesChangeRelatedNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _didReceiveFavoritesChangeRelatedNotification", &v6, 0xCu);
  }

  [(NTKPeopleComplicationContactsCache *)self _queue_reloadContacts];
}

- (void)_didReceiveDeviceLockStateDidChangeNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _didReceiveDeviceLockStateDidChangeNotification", &v6, 0xCu);
  }

  [(NTKPeopleComplicationContactsCache *)self _queue_reloadContacts];
}

- (void)_favoritesEntriesChangedExternally
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "%@ _favoritesEntriesChangedExternally", &v6, 0xCu);
  }

  [(NTKPeopleComplicationContactsCache *)self _queue_flushCNFavoritesReload];
}

- (void)checkValidityOfContact:block:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_22D9C5000, v1, OS_LOG_TYPE_ERROR, "People Complication: Missing names in contacts: %@ %@", v2, 0x16u);
}

- (void)_fetchContactForId:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchMyCard
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)computeNonFavoriteAllContactsWithCount:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end