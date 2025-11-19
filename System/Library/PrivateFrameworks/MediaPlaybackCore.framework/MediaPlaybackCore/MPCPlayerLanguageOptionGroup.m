@interface MPCPlayerLanguageOptionGroup
- (MPCPlayerLanguageOptionGroup)initWithLanguageOptionGroups:(id)a3 currentLanguageOptions:(id)a4 response:(id)a5;
- (MPCPlayerResponse)response;
- (MPNowPlayingInfoLanguageOption)selectedOption;
- (NSString)localizedTitle;
- (id)changeRequestForOptionAtIndex:(unint64_t)a3;
- (id)localizedTitleForOptionAtIndex:(unint64_t)a3;
- (unint64_t)indexOfSelectedOption;
@end

@implementation MPCPlayerLanguageOptionGroup

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)changeRequestForOptionAtIndex:(unint64_t)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  allowEmptySelection = self->_allowEmptySelection;
  options = self->_options;
  if (a3 || !allowEmptySelection)
  {
    v7 = [(NSArray *)options objectAtIndexedSubscript:a3 - allowEmptySelection];
    self->_currentIndex = a3 - self->_allowEmptySelection;
    v8 = 27;
  }

  else
  {
    v7 = [(NSArray *)options objectAtIndexedSubscript:self->_currentIndex];
    self->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 28;
  }

  v9 = [v7 copyExternalRepresentation];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_response);
    v11 = [MPCPlayerCommandRequest alloc];
    v18 = *MEMORY[0x1E69B1148];
    v19[0] = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [WeakRetained controller];
    v14 = [WeakRetained request];
    v15 = [v14 label];
    v16 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:v8 options:v12 controller:v13 label:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)localizedTitleForOptionAtIndex:(unint64_t)a3
{
  if (!a3 && self->_allowEmptySelection)
  {
    v3 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v4 = [v3 localizedStringForKey:@"LANGUAGE_OPTIONS_EMPTY_SELECTION_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
LABEL_7:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = [(NSArray *)self->_options objectAtIndexedSubscript:a3 - self->_allowEmptySelection];
  v5 = [v3 displayName];
  if (v5)
  {

LABEL_6:
    v4 = [v3 displayName];
    goto LABEL_7;
  }

  if (([v3 isAutomaticLegibleLanguageOption] & 1) == 0 && !objc_msgSend(v3, "isAutomaticAudibleLanguageOption"))
  {
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  v6 = [v8 localizedStringForKey:@"LANGUAGE_OPTIONS_AUTO_SELECTION_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];

LABEL_8:

  return v6;
}

- (MPNowPlayingInfoLanguageOption)selectedOption
{
  if (self->_currentIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_options objectAtIndexedSubscript:v2];
  }

  return v4;
}

- (unint64_t)indexOfSelectedOption
{
  currentIndex = self->_currentIndex;
  allowEmptySelection = self->_allowEmptySelection;
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL && allowEmptySelection)
  {
    return 0;
  }

  else
  {
    return currentIndex + allowEmptySelection;
  }
}

- (NSString)localizedTitle
{
  v2 = [(NSArray *)self->_options firstObject];
  v3 = [v2 languageOptionType];

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"LANGUAGE_OPTIONS_SUBTITLE_SECTION_TITLE";
  }

  else
  {
    v4 = @"LANGUAGE_OPTIONS_AUDIO_SECTION_TITLE";
  }

  v5 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  v2 = [v5 localizedStringForKey:v4 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

LABEL_6:

  return v2;
}

- (MPCPlayerLanguageOptionGroup)initWithLanguageOptionGroups:(id)a3 currentLanguageOptions:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MPCPlayerLanguageOptionGroup;
  v11 = [(MPCPlayerLanguageOptionGroup *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_response, v10);
    v12->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12->_allowEmptySelection = [v8 allowEmptySelection];
    v13 = [v8 languageOptions];
    options = v12->_options;
    v12->_options = v13;

    v15 = v12->_options;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__MPCPlayerLanguageOptionGroup_initWithLanguageOptionGroups_currentLanguageOptions_response___block_invoke;
    v17[3] = &unk_1E8238D78;
    v18 = v9;
    v12->_currentIndex = [(NSArray *)v15 indexOfObjectPassingTest:v17];
  }

  return v12;
}

uint64_t __93__MPCPlayerLanguageOptionGroup_initWithLanguageOptionGroups_currentLanguageOptions_response___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isEqualToLanguageOption:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end