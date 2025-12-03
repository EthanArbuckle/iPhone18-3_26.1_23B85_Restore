@interface MPCPlayerLanguageOptionGroup
- (MPCPlayerLanguageOptionGroup)initWithLanguageOptionGroups:(id)groups currentLanguageOptions:(id)options response:(id)response;
- (MPCPlayerResponse)response;
- (MPNowPlayingInfoLanguageOption)selectedOption;
- (NSString)localizedTitle;
- (id)changeRequestForOptionAtIndex:(unint64_t)index;
- (id)localizedTitleForOptionAtIndex:(unint64_t)index;
- (unint64_t)indexOfSelectedOption;
@end

@implementation MPCPlayerLanguageOptionGroup

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)changeRequestForOptionAtIndex:(unint64_t)index
{
  v19[1] = *MEMORY[0x1E69E9840];
  allowEmptySelection = self->_allowEmptySelection;
  options = self->_options;
  if (index || !allowEmptySelection)
  {
    allowEmptySelection = [(NSArray *)options objectAtIndexedSubscript:index - allowEmptySelection];
    self->_currentIndex = index - self->_allowEmptySelection;
    v8 = 27;
  }

  else
  {
    allowEmptySelection = [(NSArray *)options objectAtIndexedSubscript:self->_currentIndex];
    self->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 28;
  }

  copyExternalRepresentation = [allowEmptySelection copyExternalRepresentation];
  if (copyExternalRepresentation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_response);
    v11 = [MPCPlayerCommandRequest alloc];
    v18 = *MEMORY[0x1E69B1148];
    v19[0] = copyExternalRepresentation;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    controller = [WeakRetained controller];
    request = [WeakRetained request];
    label = [request label];
    v16 = [(MPCPlayerCommandRequest *)v11 initWithMediaRemoteCommand:v8 options:v12 controller:controller label:label];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)localizedTitleForOptionAtIndex:(unint64_t)index
{
  if (!index && self->_allowEmptySelection)
  {
    mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    displayName2 = [mediaPlaybackCoreBundle localizedStringForKey:@"LANGUAGE_OPTIONS_EMPTY_SELECTION_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];
LABEL_7:
    v6 = displayName2;
    goto LABEL_8;
  }

  mediaPlaybackCoreBundle = [(NSArray *)self->_options objectAtIndexedSubscript:index - self->_allowEmptySelection];
  displayName = [mediaPlaybackCoreBundle displayName];
  if (displayName)
  {

LABEL_6:
    displayName2 = [mediaPlaybackCoreBundle displayName];
    goto LABEL_7;
  }

  if (([mediaPlaybackCoreBundle isAutomaticLegibleLanguageOption] & 1) == 0 && !objc_msgSend(mediaPlaybackCoreBundle, "isAutomaticAudibleLanguageOption"))
  {
    goto LABEL_6;
  }

  mediaPlaybackCoreBundle2 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  v6 = [mediaPlaybackCoreBundle2 localizedStringForKey:@"LANGUAGE_OPTIONS_AUTO_SELECTION_TITLE" value:&stru_1F454A698 table:@"MediaPlaybackCore"];

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
  firstObject = [(NSArray *)self->_options firstObject];
  languageOptionType = [firstObject languageOptionType];

  if (languageOptionType)
  {
    if (languageOptionType != 1)
    {
      goto LABEL_6;
    }

    v4 = @"LANGUAGE_OPTIONS_SUBTITLE_SECTION_TITLE";
  }

  else
  {
    v4 = @"LANGUAGE_OPTIONS_AUDIO_SECTION_TITLE";
  }

  mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  firstObject = [mediaPlaybackCoreBundle localizedStringForKey:v4 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

LABEL_6:

  return firstObject;
}

- (MPCPlayerLanguageOptionGroup)initWithLanguageOptionGroups:(id)groups currentLanguageOptions:(id)options response:(id)response
{
  groupsCopy = groups;
  optionsCopy = options;
  responseCopy = response;
  v19.receiver = self;
  v19.super_class = MPCPlayerLanguageOptionGroup;
  v11 = [(MPCPlayerLanguageOptionGroup *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_response, responseCopy);
    v12->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12->_allowEmptySelection = [groupsCopy allowEmptySelection];
    languageOptions = [groupsCopy languageOptions];
    options = v12->_options;
    v12->_options = languageOptions;

    v15 = v12->_options;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__MPCPlayerLanguageOptionGroup_initWithLanguageOptionGroups_currentLanguageOptions_response___block_invoke;
    v17[3] = &unk_1E8238D78;
    v18 = optionsCopy;
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