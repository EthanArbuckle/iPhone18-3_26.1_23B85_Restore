@interface MapsSuggestionsRealContactsConnector
- (NSString)uniqueName;
- (id)_contactForIdentifier:(void *)identifier usingRequest:;
- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error;
- (id)_requiredKeysForRecentlySharedContactActivity;
- (id)dataForContactWithIdentifier:(id)identifier;
- (id)imageDataForIdentifier:(id)identifier;
- (id)store;
- (void)receivedNotification:(id)notification;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
@end

@implementation MapsSuggestionsRealContactsConnector

void __45__MapsSuggestionsRealContactsConnector_store__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v1 = _MergedGlobals;
  _MergedGlobals = v0;
}

- (void)startListeningForChanges
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_receivedNotification_ name:*MEMORY[0x1E695C3E0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_receivedNotification_ name:MapsContactsAuthorizationGrantedNotification object:0];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRealContactsConnector.m";
      v9 = 1026;
      v10 = 53;
      v11 = 2082;
      v12 = "[MapsSuggestionsRealContactsConnector startListeningForChanges]";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)stopListeningForChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)receivedNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (notificationCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = GEOFindOrCreateLog();
    v7 = v6;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        name = [notificationCopy name];
        v13 = 138412290;
        v14 = name;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Received notification: %@", &v13, 0xCu);
      }

      name2 = [notificationCopy name];
      v10 = [name2 isEqualToString:*MEMORY[0x1E695C3E0]];

      if (v10)
      {
        [WeakRetained contactsDidUpdate];
        goto LABEL_15;
      }

      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        name3 = [notificationCopy name];
        v13 = 138412290;
        v14 = name3;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Got unknown notification: %@", &v13, 0xCu);
      }
    }

    else
    {
      v11 = v6;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136446722;
        v14 = "MapsSuggestionsRealContactsConnector.m";
        v15 = 1026;
        v16 = 88;
        v17 = 2082;
        v18 = "[MapsSuggestionsRealContactsConnector receivedNotification:]";
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v13, 0x1Cu);
      }
    }

    goto LABEL_15;
  }

  WeakRetained = GEOFindOrCreateLog();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    v13 = 136446978;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealContactsConnector.m";
    v15 = 1024;
    v16 = 86;
    v17 = 2082;
    v18 = "[MapsSuggestionsRealContactsConnector receivedNotification:]";
    v19 = 2082;
    v20 = "nil == (notification)";
    _os_log_impl(&dword_1C5126000, WeakRetained, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a notification", &v13, 0x26u);
  }

LABEL_15:
}

- (id)_contactForIdentifier:(void *)identifier usingRequest:
{
  v32[9] = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (self)
  {
    if (v5)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__0;
      v30 = __Block_byref_object_dispose__0;
      v31 = 0;
      v8 = identifierCopy;
      if (!v8)
      {
        v9 = objc_alloc(MEMORY[0x1E695CD78]);
        v10 = *MEMORY[0x1E695C230];
        v32[0] = *MEMORY[0x1E695C240];
        v32[1] = v10;
        v11 = *MEMORY[0x1E695C300];
        v32[2] = *MEMORY[0x1E695C360];
        v32[3] = v11;
        v12 = *MEMORY[0x1E695C2F0];
        v32[4] = *MEMORY[0x1E695C308];
        v32[5] = v12;
        v13 = *MEMORY[0x1E695C330];
        v32[6] = *MEMORY[0x1E695C310];
        v32[7] = v13;
        v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
        v32[8] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:9];
        v8 = [v9 initWithKeysToFetch:v15];
      }

      v16 = MEMORY[0x1E695CD58];
      v17 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v5];
      v18 = [v16 predicateForContactsMatchingPhoneNumber:v17];
      [v8 setPredicate:v18];

      if ([v5 containsString:@"@"])
      {
        v19 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v5];
        [v8 setPredicate:v19];
      }

      [v8 setSortOrder:1];
      store = [(MapsSuggestionsRealContactsConnector *)self store];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __75__MapsSuggestionsRealContactsConnector__contactForIdentifier_usingRequest___block_invoke;
      v24[3] = &unk_1E81F5148;
      v24[4] = &v26;
      v25 = 0;
      [store enumerateContactsWithFetchRequest:v8 error:&v25 usingBlock:v24];
      v21 = v25;

      if (v21)
      {
        v22 = GEOFindOrCreateLog();
        [MapsSuggestionsRealContactsConnector _contactForIdentifier:v22 usingRequest:v21];
        self = 0;
      }

      else
      {
        self = v27[5];
      }

      _Block_object_dispose(&v26, 8);
    }

    else
    {
      [MapsSuggestionsRealContactsConnector _contactForIdentifier:usingRequest:];
      self = 0;
    }
  }

  return self;
}

void __75__MapsSuggestionsRealContactsConnector__contactForIdentifier_usingRequest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  *a3 = 1;
}

- (id)imageDataForIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E695CD78]);
    v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x1E695C240], *MEMORY[0x1E695C230], *MEMORY[0x1E695C278], *MEMORY[0x1E695C400], *MEMORY[0x1E695C270]}];
    v15[5] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    v8 = [v5 initWithKeysToFetch:v7];

    v9 = [(MapsSuggestionsRealContactsConnector *)self _contactForIdentifier:identifierCopy usingRequest:v8];
    v10 = 0;
    if ([v9 imageDataAvailable])
    {
      thumbnailImageData = [v9 thumbnailImageData];
      v12 = thumbnailImageData;
      if (thumbnailImageData)
      {
        imageData = thumbnailImageData;
      }

      else
      {
        imageData = [v9 imageData];
      }

      v10 = imageData;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealContactsConnector.m";
      v18 = 1024;
      v19 = 151;
      v20 = 2082;
      v21 = "[MapsSuggestionsRealContactsConnector imageDataForIdentifier:]";
      v22 = 2082;
      v23 = "nil == (identifier)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier", buf, 0x26u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)dataForContactWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = objc_alloc(MEMORY[0x1E695CD78]);
  _requiredKeysForRecentlySharedContactActivity = [(MapsSuggestionsRealContactsConnector *)self _requiredKeysForRecentlySharedContactActivity];
  v7 = [v5 initWithKeysToFetch:_requiredKeysForRecentlySharedContactActivity];

  v8 = [(MapsSuggestionsRealContactsConnector *)self _contactForIdentifier:identifierCopy usingRequest:v7];
  v14 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "Error serializing CNContact with identifier: %@. Error: %@", buf, 0x16u);
    }
  }

  return v9;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id)store
{
  if (self)
  {
    if (qword_1EDC51EA0 != -1)
    {
      dispatch_once(&qword_1EDC51EA0, &__block_literal_global);
    }

    self = _MergedGlobals;
    v1 = vars8;
  }

  return self;
}

- (id)_crossPlatformUnifiedMeContactWithKeysToFetch:(id)fetch error:(id *)error
{
  fetchCopy = fetch;
  store = [(MapsSuggestionsRealContactsConnector *)self store];
  v8 = [store _crossPlatformUnifiedMeContactWithKeysToFetch:fetchCopy error:error];

  return v8;
}

- (id)_requiredKeysForRecentlySharedContactActivity
{
  v14[20] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v14[0] = v1;
    descriptorForRequiredKeys = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
    v3 = *MEMORY[0x1E695C300];
    v14[1] = descriptorForRequiredKeys;
    v14[2] = v3;
    v4 = *MEMORY[0x1E695C2F0];
    v14[3] = *MEMORY[0x1E695C240];
    v14[4] = v4;
    v5 = *MEMORY[0x1E695C308];
    v14[5] = *MEMORY[0x1E695C230];
    v14[6] = v5;
    v6 = *MEMORY[0x1E695C348];
    v14[7] = *MEMORY[0x1E695C310];
    v14[8] = v6;
    v7 = *MEMORY[0x1E695C340];
    v14[9] = *MEMORY[0x1E695C350];
    v14[10] = v7;
    v8 = *MEMORY[0x1E695C410];
    v14[11] = *MEMORY[0x1E695C328];
    v14[12] = v8;
    v9 = *MEMORY[0x1E695C208];
    v14[13] = *MEMORY[0x1E695C330];
    v14[14] = v9;
    v10 = *MEMORY[0x1E695C418];
    v14[15] = *MEMORY[0x1E695C360];
    v14[16] = v10;
    v11 = *MEMORY[0x1E695C278];
    v14[17] = *MEMORY[0x1E695C270];
    v14[18] = v11;
    v14[19] = *MEMORY[0x1E695C400];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:20];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_contactForIdentifier:(NSObject *)a1 usingRequest:(uint64_t)a2 .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "Error fetching contact names %@", &v4, 0xCu);
  }
}

- (void)_contactForIdentifier:usingRequest:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446978;
    v2 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealContactsConnector.m";
    v3 = 1024;
    v4 = 110;
    v5 = 2082;
    v6 = "[MapsSuggestionsRealContactsConnector _contactForIdentifier:usingRequest:]";
    v7 = 2082;
    v8 = "nil == (identifier)";
    _os_log_impl(&dword_1C5126000, v0, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier", &v1, 0x26u);
  }
}

@end