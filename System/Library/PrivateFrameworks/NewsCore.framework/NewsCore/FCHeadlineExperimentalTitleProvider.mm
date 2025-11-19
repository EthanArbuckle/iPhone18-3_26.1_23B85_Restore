@interface FCHeadlineExperimentalTitleProvider
+ (BOOL)isDebugModeEnabled;
- (FCHeadlineExperimentalTitleProvider)initWithShouldShowAlternateHeadlines:(BOOL)a3;
- (id)_debugHeadlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5;
- (id)_headlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5;
- (id)headlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5;
- (id)metadataForDefaultHeadlineWithTitle:(id)a3;
@end

@implementation FCHeadlineExperimentalTitleProvider

+ (BOOL)isDebugModeEnabled
{
  if (qword_1EDB27930 != -1)
  {
    dispatch_once(&qword_1EDB27930, &__block_literal_global_163);
  }

  return _MergedGlobals_204;
}

void __57__FCHeadlineExperimentalTitleProvider_isDebugModeEnabled__block_invoke()
{
  if (NFInternalBuild())
  {
    v0 = NewsCoreUserDefaults();
    _MergedGlobals_204 = [v0 BOOLForKey:@"debug_alternate_headline_preference_key"];
  }

  else
  {
    _MergedGlobals_204 = 0;
  }
}

- (FCHeadlineExperimentalTitleProvider)initWithShouldShowAlternateHeadlines:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = FCHeadlineExperimentalTitleProvider;
  v4 = [(FCHeadlineExperimentalTitleProvider *)&v10 init];
  if (v4)
  {
    v5 = +[FCFeldsparIDProvider sharedInstance];
    v6 = [v5 feldsparID];
    v7 = [v6 copy];
    feldsparID = v4->_feldsparID;
    v4->_feldsparID = v7;

    v4->_shouldShowAlternateHeadlines = +[FCHeadlineExperimentalTitleProvider isDebugModeEnabled]|| a3;
  }

  return v4;
}

- (id)headlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (+[FCHeadlineExperimentalTitleProvider isDebugModeEnabled])
  {
    [(FCHeadlineExperimentalTitleProvider *)self _debugHeadlineMetadataFromTitle:v10 fromExperimentalTitles:v9 forArticleID:v8];
  }

  else
  {
    [(FCHeadlineExperimentalTitleProvider *)self _headlineMetadataFromTitle:v10 fromExperimentalTitles:v9 forArticleID:v8];
  }
  v11 = ;

  return v11;
}

- (id)_headlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!-[FCHeadlineExperimentalTitleProvider shouldShowAlternateHeadlines](self, "shouldShowAlternateHeadlines") || ![v9 count] || (-[FCHeadlineExperimentalTitleProvider feldsparID](self, "feldsparID"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = v8;
    v20 = [(FCHeadlineExperimentalTitleProvider *)self metadataForDefaultHeadlineWithTitle:v24, v23, 3221225472, __102__FCHeadlineExperimentalTitleProvider__headlineMetadataFromTitle_fromExperimentalTitles_forArticleID___block_invoke, &unk_1E7C465B8, self];

    goto LABEL_8;
  }

  v12 = v8;
  v13 = [v9 count];
  if (v13 == 1)
  {
    v18 = [v9 objectAtIndexedSubscript:0];

    v17 = 0;
    if ([v12 isEqualToString:v18])
    {
      v19 = 5;
    }

    else
    {
      v19 = 6;
    }
  }

  else
  {
    if ([v9 count] < 2)
    {
      v22 = [(FCHeadlineExperimentalTitleProvider *)self metadataForDefaultHeadlineWithTitle:v12];
      goto LABEL_16;
    }

    v14 = [(FCHeadlineExperimentalTitleProvider *)self feldsparID];
    v15 = [v14 hash];
    v16 = [v10 hash] ^ v15;
    v17 = v16 % [v9 count];

    v18 = [v9 objectAtIndexedSubscript:v17];

    v19 = 3;
  }

  v12 = v18;
  v22 = [[FCHeadlineExperimentalTitleMetadata alloc] initWithChosenTitle:v18 isTitleExperimental:v13 != 1 arrayIndexUsedforTitle:v17 treatmentState:v19];
LABEL_16:
  v20 = v22;

LABEL_8:

  return v20;
}

- (id)_debugHeadlineMetadataFromTitle:(id)a3 fromExperimentalTitles:(id)a4 forArticleID:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9)
  {
    v23 = v10;
    v24 = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*%@", *(*(&v25 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v10 = v23;
    self = v24;
  }

  else
  {
    v18 = 1;
    do
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d %@", v18, v8];
      [v11 addObject:v19];

      v18 = (v18 + 1);
    }

    while (v18 != 8);
  }

  v20 = [(FCHeadlineExperimentalTitleProvider *)self _headlineMetadataFromTitle:v8 fromExperimentalTitles:v11 forArticleID:v10];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)metadataForDefaultHeadlineWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[FCHeadlineExperimentalTitleMetadata alloc] initWithChosenTitle:v3 isTitleExperimental:0 arrayIndexUsedforTitle:0 treatmentState:1];

  return v4;
}

@end