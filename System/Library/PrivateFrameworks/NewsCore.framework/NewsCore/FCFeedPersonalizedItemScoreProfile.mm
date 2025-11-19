@interface FCFeedPersonalizedItemScoreProfile
- (FCFeedPersonalizedItemScoreProfile)init;
- (FCFeedPersonalizedItemScoreProfile)initWithPBScoreProfile:(id)a3;
- (NTPBScoreProfileDebug)debugFields;
- (double)sortingScore;
- (void)setDebugFields:(id)a3;
@end

@implementation FCFeedPersonalizedItemScoreProfile

- (FCFeedPersonalizedItemScoreProfile)initWithPBScoreProfile:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCFeedPersonalizedItemScoreProfile;
  v6 = [(FCFeedPersonalizedItemScoreProfile *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbScoreProfile, a3);
    v8 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    debugFieldsLock = v7->_debugFieldsLock;
    v7->_debugFieldsLock = v8;
  }

  return v7;
}

- (FCFeedPersonalizedItemScoreProfile)init
{
  v3 = objc_opt_new();
  v4 = [(FCFeedPersonalizedItemScoreProfile *)self initWithPBScoreProfile:v3];

  return v4;
}

- (NTPBScoreProfileDebug)debugFields
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__66;
  v11 = __Block_byref_object_dispose__66;
  v12 = 0;
  v3 = [(FCFeedPersonalizedItemScoreProfile *)self debugFieldsLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__FCFeedPersonalizedItemScoreProfile_debugFields__block_invoke;
  v6[3] = &unk_1E7C37160;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__FCFeedPersonalizedItemScoreProfile_debugFields__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pbScoreProfile];
  v3 = [v2 debugFields];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = [*(a1 + 32) pbScoreProfile];
    v6 = objc_alloc_init(MEMORY[0x1E69B6FB8]);
    [v9 setDebugFields:v6];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setDebugFields:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedPersonalizedItemScoreProfile *)self debugFieldsLock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__FCFeedPersonalizedItemScoreProfile_setDebugFields___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithLockSync:v7];
}

void __53__FCFeedPersonalizedItemScoreProfile_setDebugFields___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) pbScoreProfile];
  [v2 setDebugFields:v1];
}

- (double)sortingScore
{
  if (qword_1EDB276E8 != -1)
  {
    dispatch_once(&qword_1EDB276E8, &__block_literal_global_133);
  }

  if (_MergedGlobals_186 == 1)
  {

    [(FCFeedPersonalizedItemScoreProfile *)self tabiScore];
  }

  else
  {

    [(FCFeedPersonalizedItemScoreProfile *)self agedPersonalizationScore];
  }

  return result;
}

void __50__FCFeedPersonalizedItemScoreProfile_sortingScore__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_186 = [v0 BOOLForKey:@"news.features.scoreExclusivelyUsingTabi"];

  v1 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = _MergedGlobals_186;
    _os_log_impl(&dword_1B63EF000, v1, OS_LOG_TYPE_DEFAULT, "Configuring sortingScore with scoreExclusivelyUsingTabi=%d", v3, 8u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end