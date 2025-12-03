@interface MRMediaSuggestionRequest
+ (id)defaultRequest;
+ (id)defaultRequestWithArtwork;
- (MRMediaSuggestionRequest)initWithBlock:(id)block;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_bundleIdentifierIsSystemMediaApplication:(uint64_t)IsSystemPodcastApplication;
- (uint64_t)_intentIsValidSuggestion:(void *)suggestion sourceBundleID:;
- (void)_artworkForIntent:(void *)intent completion:;
- (void)performWithCompletion:(id)completion;
- (void)performWithPlaybackIdentifier:(id)identifier completion:(id)completion;
- (void)performWithPreferences:(id)preferences completion:(id)completion;
- (void)performWithPreferences:(id)preferences options:(id)options completion:(id)completion;
@end

@implementation MRMediaSuggestionRequest

- (MRMediaSuggestionRequest)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MRMediaSuggestionRequest;
  v5 = [(MRMediaSuggestionRequest *)&v9 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    if (!v5->_requestIdentifier)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = uUID;
    }
  }

  return v5;
}

+ (id)defaultRequest
{
  v2 = [[MRMediaSuggestionRequest alloc] initWithBlock:&__block_literal_global_27];

  return v2;
}

void __42__MRMediaSuggestionRequest_defaultRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeArtwork:0];
  v2 = +[MRUserSettings currentSettings];
  [v3 setMaxResults:{objc_msgSend(v2, "maximumNumberOfMediaSuggestions")}];

  [v3 setUseDirectAccess:0];
}

+ (id)defaultRequestWithArtwork
{
  v2 = +[MRMediaSuggestionRequest defaultRequest];
  [v2 setIncludeArtwork:1];

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  requestIdentifier = [(MRMediaSuggestionRequest *)self requestIdentifier];
  if ([(MRMediaSuggestionRequest *)self includeArtwork])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 initWithFormat:@"<%@: requestIdentifier=%@ includeArtwork=%@ maxResults=%ld>", v4, requestIdentifier, v6, -[MRMediaSuggestionRequest maxResults](self, "maxResults")];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIncludeArtwork:{-[MRMediaSuggestionRequest includeArtwork](self, "includeArtwork")}];
  [v4 setMaxResults:{-[MRMediaSuggestionRequest maxResults](self, "maxResults")}];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v4 setRequestIdentifier:uUID];

  [v4 setUseDirectAccess:{-[MRMediaSuggestionRequest useDirectAccess](self, "useDirectAccess")}];
  [v4 setIncludeArtwork:{-[MRMediaSuggestionRequest includeArtwork](self, "includeArtwork")}];
  return v4;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MRMediaSuggestionRequest_performWithCompletion___block_invoke;
  v6[3] = &unk_1E769B938;
  v7 = completionCopy;
  v5 = completionCopy;
  [(MRMediaSuggestionRequest *)self performWithPreferences:0 completion:v6];
}

void __50__MRMediaSuggestionRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"HomeScreen"];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)performWithPreferences:(id)preferences completion:(id)completion
{
  completionCopy = completion;
  preferencesCopy = preferences;
  v8 = +[MRMediaSuggestionRequestOptions defaultOptions];
  [(MRMediaSuggestionRequest *)self performWithPreferences:preferencesCopy options:v8 completion:completionCopy];
}

- (void)performWithPreferences:(id)preferences options:(id)options completion:(id)completion
{
  v91 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  optionsCopy = options;
  completionCopy = completion;
  v47 = preferencesCopy;
  snapshot = [(MRMediaSuggestionPreferences *)preferencesCopy snapshot];
  v8 = _MRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = snapshot;
    *&buf[22] = 2112;
    v90 = optionsCopy;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionRequest] Performing preference-respecting request %{public}@ with preferences %@, options: %@.", buf, 0x20u);
  }

  date = [MEMORY[0x1E695DF00] date];
  v53 = objc_opt_new();
  v9 = objc_opt_new();
  globalDisplayPreferencesForContexts = [(MRMediaSuggestionPreferences *)snapshot globalDisplayPreferencesForContexts];
  contexts = [optionsCopy contexts];
  v11 = contexts;
  if (contexts)
  {
    v50 = contexts;
  }

  else
  {
    v50 = +[MRMediaSuggestionPreferences allContexts];
  }

  if (snapshot)
  {
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke;
    v85[3] = &unk_1E769CA28;
    v86 = globalDisplayPreferencesForContexts;
    v12 = [v50 msv_filter:v85];
  }

  else
  {
    v88 = @"HomeScreen";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  }

  disabledBundlesForContexts = [(MRMediaSuggestionPreferences *)snapshot disabledBundlesForContexts];
  v14 = disabledBundlesForContexts;
  if (disabledBundlesForContexts)
  {
    v52 = disabledBundlesForContexts;
  }

  else
  {
    v15 = MEMORY[0x1E695DF90];
    v16 = objc_opt_new();
    v52 = [v15 dictionaryWithObject:v16 forKey:@"HomeScreen"];
  }

  bundlesDisabledInAllContexts = [(MRMediaSuggestionPreferences *)snapshot bundlesDisabledInAllContexts];
  v18 = bundlesDisabledInAllContexts;
  if (bundlesDisabledInAllContexts)
  {
    v57 = bundlesDisabledInAllContexts;
  }

  else
  {
    v57 = objc_opt_new();
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v20)
  {
    v21 = *v82;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v81 + 1) + 8 * i);
        v24 = objc_opt_new();
        [v9 setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [v19 countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v20);
  }

  bundleIdentifiers = [optionsCopy bundleIdentifiers];
  v26 = bundleIdentifiers == 0;

  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v27 = MEMORY[0x1E695DFD8];
    bundleIdentifiers2 = [optionsCopy bundleIdentifiers];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2;
    v79[3] = &unk_1E769CA28;
    v80 = v57;
    v29 = [bundleIdentifiers2 msv_filter:v79];
    v30 = [v27 setWithArray:v29];

    if (![v30 count])
    {
      completionCopy[2](completionCopy, v9, 0);
      v44 = v80;
      goto LABEL_28;
    }
  }

  v31 = soft_BiomeLibrary();
  v32 = [v31 App];
  intent = [v32 Intent];

  v48 = [objc_alloc(getBMPublisherOptionsClass()) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v90 = 0;
  v33 = [v19 count];
  maxResults = [(MRMediaSuggestionRequest *)self maxResults];
  v46 = v31;
  INPlayMediaIntentClass = getINPlayMediaIntentClass();
  v36 = NSStringFromClass(INPlayMediaIntentClass);
  v37 = dispatch_group_create();
  v38 = [intent publisherWithOptions:v48];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_3;
  v75[3] = &unk_1E769CA50;
  v39 = v36;
  v76 = v39;
  v30 = v30;
  v77 = v30;
  v78 = v57;
  v40 = [v38 filterWithIsIncluded:v75];
  v41 = maxResults * v33;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_4;
  v69[3] = &unk_1E769CA78;
  v70 = v37;
  selfCopy = self;
  v72 = date;
  v74 = completionCopy;
  v73 = v9;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_93;
  v60[3] = &unk_1E769CAA0;
  v61 = v53;
  selfCopy2 = self;
  v42 = v70;
  v63 = v42;
  v64 = v19;
  v65 = v52;
  v66 = v73;
  v67 = buf;
  v68 = v41;
  v43 = [v40 sinkWithCompletion:v69 shouldContinue:v60];

  v44 = v46;
  _Block_object_dispose(buf, 8);

LABEL_28:
  v45 = *MEMORY[0x1E69E9840];
}

uint64_t __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 intentClass];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v3 eventBody];
    v9 = [v8 bundleID];
    v10 = [v7 containsObject:v9];

    if (!v10)
    {
      goto LABEL_6;
    }
  }

  if (![*(a1 + 48) count])
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 48);
  v12 = [v3 eventBody];
  v13 = [v12 bundleID];
  LOBYTE(v11) = [v11 containsObject:v13];

  if (v11)
  {
LABEL_6:
    v14 = 0;
  }

  else
  {
LABEL_7:
    v14 = 1;
  }

  return v14;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.MediaRemote.MRMediaSuggestionRequest.notifyQueue", v2);

  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_5;
  block[3] = &unk_1E769C2C0;
  v8 = *(a1 + 40);
  v5 = *(&v8 + 1);
  v6 = *(a1 + 64);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_group_notify(v4, v3, block);
}

uint64_t __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_5(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSinceDate:a1[5]];
    v9 = 138543618;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRMediaSuggestionRequest] Request %{public}@ finished in %lf seconds.", &v9, 0x16u);
  }

  v6 = a1[6];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_93(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 interaction];

  v60 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getINInteractionClass() fromData:v6 error:&v60];
  v8 = v60;
  if (!v8)
  {
    v10 = [v7 intent];
    getINPlayMediaIntentClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_7;
    }

    v11 = v10;
    v12 = *(a1 + 32);
    v13 = [v11 mediaContainer];
    v14 = [(MRMediaSuggestion *)v13 identifier];
    if ([v12 containsObject:v14])
    {
      v50 = v13;
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = [v3 eventBody];
      [v19 bundleID];
      v20 = obja = v14;
      LODWORD(v18) = [(MRMediaSuggestionRequest *)v18 _intentIsValidSuggestion:v11 sourceBundleID:v20];

      if (!v18)
      {
LABEL_27:

        objc_autoreleasePoolPop(v4);
        v15 = *(*(*(a1 + 80) + 8) + 24) < *(a1 + 88);
        goto LABEL_8;
      }

      v21 = [MRMediaSuggestion alloc];
      v22 = [v7 identifier];
      v23 = [(MRMediaSuggestion *)v21 initWithIntent:v11 playbackIdentifier:v22];

      v24 = [v3 eventBody];
      v25 = [v24 bundleID];
      v50 = v23;
      [(MRMediaSuggestion *)v23 setBundleID:v25];

      if ([*(a1 + 40) includeArtwork])
      {
        v26 = [v11 mediaContainer];
        v27 = [v26 artwork];

        if (v27)
        {
          dispatch_group_enter(*(a1 + 48));
          v44 = *(a1 + 40);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96;
          v57[3] = &unk_1E769C220;
          v58 = v23;
          v59 = *(a1 + 48);
          [(MRMediaSuggestionRequest *)v44 _artworkForIntent:v11 completion:v57];
        }
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = *(a1 + 56);
      v28 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v28)
      {
        v29 = v28;
        v48 = v3;
        v49 = v11;
        v45 = v7;
        v46 = v6;
        v47 = v4;
        v30 = *v54;
        v31 = v50;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v54 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v53 + 1) + 8 * i);
            v34 = [*(a1 + 64) objectForKeyedSubscript:v33];
            v35 = [(MRMediaSuggestion *)v31 bundleID];
            if ([v34 containsObject:v35])
            {
            }

            else
            {
              v36 = [*(a1 + 72) objectForKeyedSubscript:v33];
              v37 = [v36 count];
              v38 = [*(a1 + 40) maxResults];

              v39 = v37 >= v38;
              v31 = v50;
              if (!v39)
              {
                v40 = *(a1 + 32);
                v41 = [v49 mediaContainer];
                v42 = [v41 identifier];
                [v40 addObject:v42];

                v43 = [*(a1 + 72) objectForKeyedSubscript:v33];
                [v43 addObject:v50];

                ++*(*(*(a1 + 80) + 8) + 24);
              }
            }
          }

          v29 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v29);
        v4 = v47;
        v3 = v48;
        v7 = v45;
        v6 = v46;
        v11 = v49;
      }

      v14 = obj;
    }

    goto LABEL_27;
  }

  v9 = v8;

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v15 = 1;
LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (uint64_t)_intentIsValidSuggestion:(void *)suggestion sourceBundleID:
{
  v5 = a2;
  suggestionCopy = suggestion;
  if (self && ([v5 mediaContainer], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
  {
    mediaContainer = [v5 mediaContainer];
    type = [mediaContainer type];

    v12 = 0;
    if (type <= 0x13 && ((1 << type) & 0xF87FE) != 0)
    {
      if (([(MRMediaSuggestionRequest *)self _bundleIdentifierIsSystemMediaApplication:suggestionCopy]& 1) != 0)
      {
        v12 = 1;
      }

      else
      {
        v22 = 0;
        v13 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:suggestionCopy allowPlaceholder:0 error:&v22];
        v14 = v22;
        v12 = 0;
        if (v14 || !v13)
        {
          v17 = v13;
          v13 = v14;
        }

        else
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2050000000;
          v15 = getINSchemaClass_softClass;
          v27 = getINSchemaClass_softClass;
          if (!getINSchemaClass_softClass)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __getINSchemaClass_block_invoke;
            v23[3] = &unk_1E769ADA8;
            v23[4] = &v24;
            __getINSchemaClass_block_invoke(v23);
            v15 = v25[3];
          }

          v16 = v15;
          _Block_object_dispose(&v24, 8);
          v17 = [v15 schemaWithBundleRecord:v13 fallbackToSystemSchema:0];
          if (v17)
          {
            v18 = [v5 _validParameterCombinationsWithSchema:v17];
            allKeys = [v18 allKeys];
            v20 = [MEMORY[0x1E695DFD8] setWithObject:@"mediaContainer"];
            v12 = [allKeys containsObject:v20];
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96_cold_1(a1, v5, v6);
    }
  }

  else
  {
    [(MRMediaSuggestion *)*(a1 + 32) setArtwork:a2];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)performWithPlaybackIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = soft_BiomeLibrary();
  v8 = [v7 App];
  intent = [v8 Intent];

  v10 = [objc_alloc(getBMPublisherOptionsClass()) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = [intent publisherWithOptions:v10];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke;
  v18[3] = &unk_1E769CAC8;
  v20 = v21;
  v12 = completionCopy;
  v19 = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E769CAF0;
  v13 = identifierCopy;
  v16 = v13;
  v17 = v21;
  v14 = [v11 sinkWithCompletion:v18 shouldContinue:v15];

  _Block_object_dispose(v21, 8);
}

void __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"No suggestion found for playback identifier"];
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  v4 = v2;
  (*(*(a1 + 32) + 16))();
}

uint64_t __69__MRMediaSuggestionRequest_performWithPlaybackIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 itemID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = [v3 eventBody];
    v8 = [v7 interaction];

    v21 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getINInteractionClass() fromData:v8 error:&v21];
    v10 = v21;
    if (!v10)
    {
      v11 = [v9 intent];
      getINPlayMediaIntentClass();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        v13 = [MRMediaSuggestion alloc];
        v14 = [v9 identifier];
        v15 = [(MRMediaSuggestion *)v13 initWithIntent:v12 playbackIdentifier:v14];

        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = [v3 eventBody];
        v19 = [v18 bundleID];
        [(MRMediaSuggestion *)*(*(*(a1 + 40) + 8) + 40) setBundleID:v19];
      }
    }
  }

  return v6 ^ 1u;
}

void __57__MRMediaSuggestionRequest__artworkForIntent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  if (v13)
  {
    v5 = 0;
  }

  else
  {
    v6 = a2;
    v7 = [MRArtwork alloc];
    v8 = [v6 _imageData];
    [v6 _imageSize];
    v10 = v9;
    [v6 _imageSize];
    v12 = v11;

    v5 = [(MRArtwork *)v7 initWithImageData:v8 height:v10 width:v12];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_artworkForIntent:(void *)intent completion:
{
  v5 = a2;
  intentCopy = intent;
  if (self)
  {
    mediaContainer = [v5 mediaContainer];
    artwork = [mediaContainer artwork];
    _requiresRetrieval = [artwork _requiresRetrieval];

    mediaContainer2 = [v5 mediaContainer];
    artwork2 = [mediaContainer2 artwork];
    v12 = artwork2;
    if (_requiresRetrieval)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __57__MRMediaSuggestionRequest__artworkForIntent_completion___block_invoke;
      v27[3] = &unk_1E769CB18;
      v28 = intentCopy;
      [v12 _retrieveImageDataWithReply:v27];
    }

    else
    {
      _imageData = [artwork2 _imageData];

      if (_imageData)
      {
        v26 = [MRArtwork alloc];
        mediaContainer3 = [v5 mediaContainer];
        artwork3 = [mediaContainer3 artwork];
        _imageData2 = [artwork3 _imageData];
        mediaContainer4 = [v5 mediaContainer];
        artwork4 = [mediaContainer4 artwork];
        [artwork4 _imageSize];
        v20 = v19;
        mediaContainer5 = [v5 mediaContainer];
        artwork5 = [mediaContainer5 artwork];
        [artwork5 _imageSize];
        v24 = [(MRArtwork *)v26 initWithImageData:_imageData2 height:v20 width:v23];

        (*(intentCopy + 2))(intentCopy, v24, 0);
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"Intent artwork does not require retrieval but has no data."];
        (*(intentCopy + 2))(intentCopy, 0, v25);
      }
    }
  }
}

- (uint64_t)_bundleIdentifierIsSystemMediaApplication:(uint64_t)IsSystemPodcastApplication
{
  v3 = a2;
  v4 = v3;
  if (IsSystemPodcastApplication)
  {
    if (MRMediaRemoteApplicationIsSystemMediaApplication(v3))
    {
      IsSystemPodcastApplication = 1;
    }

    else
    {
      IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication(v4);
    }
  }

  return IsSystemPodcastApplication;
}

void __70__MRMediaSuggestionRequest_performWithPreferences_options_completion___block_invoke_2_96_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRMediaSuggestionRequest] %@ failed to retrieve artwork with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end