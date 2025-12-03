@interface FCHeadlineExperimentalTitleProvider
+ (BOOL)isDebugModeEnabled;
- (FCHeadlineExperimentalTitleProvider)initWithShouldShowAlternateHeadlines:(BOOL)headlines;
- (id)_debugHeadlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d;
- (id)_headlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d;
- (id)headlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d;
- (id)metadataForDefaultHeadlineWithTitle:(id)title;
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

- (FCHeadlineExperimentalTitleProvider)initWithShouldShowAlternateHeadlines:(BOOL)headlines
{
  v10.receiver = self;
  v10.super_class = FCHeadlineExperimentalTitleProvider;
  v4 = [(FCHeadlineExperimentalTitleProvider *)&v10 init];
  if (v4)
  {
    v5 = +[FCFeldsparIDProvider sharedInstance];
    feldsparID = [v5 feldsparID];
    v7 = [feldsparID copy];
    feldsparID = v4->_feldsparID;
    v4->_feldsparID = v7;

    v4->_shouldShowAlternateHeadlines = +[FCHeadlineExperimentalTitleProvider isDebugModeEnabled]|| headlines;
  }

  return v4;
}

- (id)headlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d
{
  dCopy = d;
  titlesCopy = titles;
  titleCopy = title;
  if (+[FCHeadlineExperimentalTitleProvider isDebugModeEnabled])
  {
    [(FCHeadlineExperimentalTitleProvider *)self _debugHeadlineMetadataFromTitle:titleCopy fromExperimentalTitles:titlesCopy forArticleID:dCopy];
  }

  else
  {
    [(FCHeadlineExperimentalTitleProvider *)self _headlineMetadataFromTitle:titleCopy fromExperimentalTitles:titlesCopy forArticleID:dCopy];
  }
  v11 = ;

  return v11;
}

- (id)_headlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d
{
  titleCopy = title;
  titlesCopy = titles;
  dCopy = d;
  if (!-[FCHeadlineExperimentalTitleProvider shouldShowAlternateHeadlines](self, "shouldShowAlternateHeadlines") || ![titlesCopy count] || (-[FCHeadlineExperimentalTitleProvider feldsparID](self, "feldsparID"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = titleCopy;
    v20 = [(FCHeadlineExperimentalTitleProvider *)self metadataForDefaultHeadlineWithTitle:v24, v23, 3221225472, __102__FCHeadlineExperimentalTitleProvider__headlineMetadataFromTitle_fromExperimentalTitles_forArticleID___block_invoke, &unk_1E7C465B8, self];

    goto LABEL_8;
  }

  v12 = titleCopy;
  v13 = [titlesCopy count];
  if (v13 == 1)
  {
    v18 = [titlesCopy objectAtIndexedSubscript:0];

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
    if ([titlesCopy count] < 2)
    {
      v22 = [(FCHeadlineExperimentalTitleProvider *)self metadataForDefaultHeadlineWithTitle:v12];
      goto LABEL_16;
    }

    feldsparID = [(FCHeadlineExperimentalTitleProvider *)self feldsparID];
    v15 = [feldsparID hash];
    v16 = [dCopy hash] ^ v15;
    v17 = v16 % [titlesCopy count];

    v18 = [titlesCopy objectAtIndexedSubscript:v17];

    v19 = 3;
  }

  v12 = v18;
  v22 = [[FCHeadlineExperimentalTitleMetadata alloc] initWithChosenTitle:v18 isTitleExperimental:v13 != 1 arrayIndexUsedforTitle:v17 treatmentState:v19];
LABEL_16:
  v20 = v22;

LABEL_8:

  return v20;
}

- (id)_debugHeadlineMetadataFromTitle:(id)title fromExperimentalTitles:(id)titles forArticleID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  titlesCopy = titles;
  dCopy = d;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (titlesCopy)
  {
    v23 = dCopy;
    selfCopy = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = titlesCopy;
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

    dCopy = v23;
    self = selfCopy;
  }

  else
  {
    v18 = 1;
    do
    {
      titleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d %@", v18, titleCopy];
      [v11 addObject:titleCopy];

      v18 = (v18 + 1);
    }

    while (v18 != 8);
  }

  v20 = [(FCHeadlineExperimentalTitleProvider *)self _headlineMetadataFromTitle:titleCopy fromExperimentalTitles:v11 forArticleID:dCopy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)metadataForDefaultHeadlineWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[FCHeadlineExperimentalTitleMetadata alloc] initWithChosenTitle:titleCopy isTitleExperimental:0 arrayIndexUsedforTitle:0 treatmentState:1];

  return v4;
}

@end