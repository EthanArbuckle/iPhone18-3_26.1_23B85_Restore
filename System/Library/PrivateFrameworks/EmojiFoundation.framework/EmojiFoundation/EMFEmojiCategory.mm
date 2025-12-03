@interface EMFEmojiCategory
+ (BOOL)_isBaseHandshakeOrHandshakeWithSkintonesEmoji:(id)emoji;
+ (BOOL)_isComposedCoupleMultiSkinToneEmoji:(id)emoji;
+ (BOOL)_isCoupleMultiSkinToneEmoji:(id)emoji;
+ (BOOL)_isDingbatsVariantEmoji:(id)emoji;
+ (BOOL)_isFlagEmoji:(id)emoji;
+ (BOOL)_isGenderEmoji:(id)emoji;
+ (BOOL)_isHandholdingCoupleEmoji:(id)emoji;
+ (BOOL)_isMultiPersonFamilySkinToneEmoji:(id)emoji;
+ (BOOL)_isNoneVariantEmoji:(id)emoji;
+ (BOOL)_isProfessionEmoji:(id)emoji;
+ (BOOL)_isSkinToneEmoji:(id)emoji;
+ (BOOL)_supportsCoupleSkinToneSelection:(id)selection;
+ (id)CoupleMultiSkinToneEmoji;
+ (id)DingbatsVariantEmoji;
+ (id)ExtendedCoupleMultiSkinToneEmoji;
+ (id)GenderEmoji;
+ (id)MultiPersonFamilySkinToneEmoji;
+ (id)NewlyAddedEmoji;
+ (id)NoneVariantEmoji;
+ (id)ProfessionEmoji;
+ (id)ProfessionWithoutSkinToneEmoji;
+ (id)SkinToneEmoji;
+ (id)_baseLocalizationKeyForIdentifier:(id)identifier;
+ (id)_emojiSetForIdentifier:(id)identifier;
+ (id)categoryIdentifierList;
+ (id)categoryWithIdentifier:(id)identifier;
+ (id)computeEmojiFlagsSortedByLanguage;
+ (id)extraFlagsForCountryCode:(id)code;
+ (id)insertionFlagsForCountryCodes:(id)codes inSortedCountryCodes:(id)countryCodes;
+ (id)localizedRecentsDescription;
+ (id)localizedSkinToneEmojiDescription;
+ (id)stringToRegionalIndicatorString:(id)string;
+ (void)insertToSortedCountries:(id)countries withAdditionalFlags:(id)flags;
- (EMFEmojiCategory)initWithIdentifier:(id)identifier;
- (NSString)localizedName;
- (NSString)shortLocalizedName;
- (id)emojiTokensForLocaleData:(id)data;
- (void)dealloc;
@end

@implementation EMFEmojiCategory

+ (id)categoryIdentifierList
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = @"EMFEmojiCategoryRecents";
  v4[1] = @"EMFEmojiCategoryPeople";
  v4[2] = @"EMFEmojiCategoryNature";
  v4[3] = @"EMFEmojiCategoryFoodAndDrink";
  v4[4] = @"EMFEmojiCategoryActivity";
  v4[5] = @"EMFEmojiCategoryTravelAndPlaces";
  v4[6] = @"EMFEmojiCategoryObjects";
  v4[7] = @"EMFEmojiCategorySymbols";
  v4[8] = @"EMFEmojiCategoryFlags";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];

  return v2;
}

+ (id)MultiPersonFamilySkinToneEmoji
{
  if (MultiPersonFamilySkinToneEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory MultiPersonFamilySkinToneEmoji];
  }

  v3 = MultiPersonFamilySkinToneEmoji_MultiPersonFamilySkinToneEmoji;

  return v3;
}

uint64_t __50__EMFEmojiCategory_MultiPersonFamilySkinToneEmoji__block_invoke()
{
  MultiPersonFamilySkinToneEmoji_MultiPersonFamilySkinToneEmoji = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF508];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __33__EMFEmojiCategory_SkinToneEmoji__block_invoke()
{
  SkinToneEmoji_SkinToneEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF478];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)SkinToneEmoji
{
  if (SkinToneEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory SkinToneEmoji];
  }

  v3 = SkinToneEmoji_SkinToneEmojiSet;

  return v3;
}

+ (id)CoupleMultiSkinToneEmoji
{
  if (CoupleMultiSkinToneEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory CoupleMultiSkinToneEmoji];
  }

  v3 = CoupleMultiSkinToneEmoji_CoupleMultiSkinToneEmoji;

  return v3;
}

uint64_t __44__EMFEmojiCategory_CoupleMultiSkinToneEmoji__block_invoke()
{
  CoupleMultiSkinToneEmoji_CoupleMultiSkinToneEmoji = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF4D8];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52__EMFEmojiCategory_ExtendedCoupleMultiSkinToneEmoji__block_invoke()
{
  ExtendedCoupleMultiSkinToneEmoji_ExtendedCoupleMultiSkinToneEmoji = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF4F0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)ExtendedCoupleMultiSkinToneEmoji
{
  if (ExtendedCoupleMultiSkinToneEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory ExtendedCoupleMultiSkinToneEmoji];
  }

  v3 = ExtendedCoupleMultiSkinToneEmoji_ExtendedCoupleMultiSkinToneEmoji;

  return v3;
}

- (NSString)localizedName
{
  v3 = objc_opt_class();
  identifier = [(EMFEmojiCategory *)self identifier];
  v5 = [v3 _baseLocalizationKeyForIdentifier:identifier];
  v6 = [v5 stringByAppendingString:@" Category"];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringInDeviceLanguageForKey:v6];

  return v8;
}

- (void)dealloc
{
  identifier = self->_identifier;
  self->_identifier = 0;

  v4.receiver = self;
  v4.super_class = EMFEmojiCategory;
  [(EMFEmojiCategory *)&v4 dealloc];
}

+ (id)ProfessionEmoji
{
  if (ProfessionEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory ProfessionEmoji];
  }

  v3 = ProfessionEmoji_ProfessionEmojiSet;

  return v3;
}

+ (id)GenderEmoji
{
  if (GenderEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory GenderEmoji];
  }

  v3 = GenderEmoji_GenderEmojiSet;

  return v3;
}

+ (id)DingbatsVariantEmoji
{
  if (DingbatsVariantEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory DingbatsVariantEmoji];
  }

  v3 = DingbatsVariantEmoji_DingbatsVariantEmojiSet;

  return v3;
}

uint64_t __40__EMFEmojiCategory_DingbatsVariantEmoji__block_invoke()
{
  DingbatsVariantEmoji_DingbatsVariantEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF448];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)categoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (EMFEmojiCategory)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = EMFEmojiCategory;
  v6 = [(EMFEmojiCategory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

+ (id)_baseLocalizationKeyForIdentifier:(id)identifier
{
  if (identifier == @"EMFEmojiCategoryRecents")
  {
    return @"Frequently Used";
  }

  if (identifier == @"EMFEmojiCategoryPeople")
  {
    return @"People";
  }

  if (identifier == @"EMFEmojiCategoryNature")
  {
    return @"Nature";
  }

  if (identifier == @"EMFEmojiCategoryFoodAndDrink")
  {
    return @"Food & Drink";
  }

  if (identifier == @"EMFEmojiCategoryActivity")
  {
    return @"Activity";
  }

  if (identifier == @"EMFEmojiCategoryTravelAndPlaces")
  {
    return @"Travel & Places";
  }

  if (identifier == @"EMFEmojiCategoryObjects")
  {
    return @"Objects";
  }

  if (identifier == @"EMFEmojiCategorySymbols")
  {
    return @"Symbols";
  }

  if (identifier == @"EMFEmojiCategoryFlags")
  {
    return @"Flags";
  }

  return 0;
}

+ (id)_emojiSetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy == @"EMFEmojiCategoryPrepopulated")
  {
    prepopulatedEmoji = [self PrepopulatedEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryPeople")
  {
    prepopulatedEmoji = [self PeopleEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryNature")
  {
    prepopulatedEmoji = [self NatureEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryFoodAndDrink")
  {
    prepopulatedEmoji = [self FoodAndDrinkEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryActivity")
  {
    prepopulatedEmoji = [self ActivityEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryTravelAndPlaces")
  {
    prepopulatedEmoji = [self TravelAndPlacesEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryObjects")
  {
    prepopulatedEmoji = [self ObjectsEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategorySymbols")
  {
    prepopulatedEmoji = [self SymbolsEmoji];
  }

  else if (identifierCopy == @"EMFEmojiCategoryFlags")
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__EMFEmojiCategory__emojiSetForIdentifier___block_invoke;
    v9[3] = &__block_descriptor_40_e14___NSArray_8__0l;
    v9[4] = self;
    prepopulatedEmoji = [EMFEmojiPreferences _cachedFlagCategoryEmoji:v9];
  }

  else
  {
    if (identifierCopy != @"EMFEmojiCategoryRecents")
    {
      v6 = 0;
      goto LABEL_23;
    }

    prepopulatedEmoji = +[EMFEmojiPreferences _recentEmojiStrings];
  }

  v6 = prepopulatedEmoji;
LABEL_23:

  return v6;
}

uint64_t __43__EMFEmojiCategory__emojiSetForIdentifier___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 computeEmojiFlagsSortedByLanguage];
}

+ (id)stringToRegionalIndicatorString:(id)string
{
  stringCopy = string;
  string = [MEMORY[0x1E696AEC0] string];
  if ([stringCopy length])
  {
    v5 = 0;
    do
    {
      v6 = +[EMFStringUtilities _stringWithUnichar:](EMFStringUtilities, "_stringWithUnichar:", [stringCopy characterAtIndex:v5] + 127397);
      v7 = [string stringByAppendingString:v6];

      ++v5;
      string = v7;
    }

    while (v5 < [stringCopy length]);
  }

  else
  {
    v7 = string;
  }

  return v7;
}

+ (void)insertToSortedCountries:(id)countries withAdditionalFlags:(id)flags
{
  v28 = *MEMORY[0x1E69E9840];
  countriesCopy = countries;
  flagsCopy = flags;
  allKeys = [flagsCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];
  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        integerValue = [v15 integerValue];
        if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = integerValue;
          if (integerValue < [countriesCopy count])
          {
            v18 = [flagsCopy objectForKey:v15];
            if ([v18 count])
            {
              v19 = 0;
              v20 = v17 + 1;
              do
              {
                v21 = [v18 objectAtIndex:v19];
                [countriesCopy insertObject:v21 atIndex:v20 + v19];

                ++v19;
              }

              while (v19 < [v18 count]);
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }
}

+ (id)extraFlagsForCountryCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"JP"])
  {
    v4 = &unk_1F24DF400;
  }

  else if ([codeCopy isEqualToString:@"GB"])
  {
    v4 = &unk_1F24DF418;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)insertionFlagsForCountryCodes:(id)codes inSortedCountryCodes:(id)countryCodes
{
  v26 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  countryCodesCopy = countryCodes;
  v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(codesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = codesCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = *MEMORY[0x1E695D978];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v14 = [currentLocale displayNameForKey:v10 value:v12];
        v15 = [countryCodesCopy indexOfObject:v14];

        v16 = [EMFEmojiCategory extraFlagsForCountryCode:v12];
        if (v16)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
          [v20 setObject:v16 forKey:v17];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v20;
}

+ (id)computeEmojiFlagsSortedByLanguage
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = +[EMFEmojiCategory flagEmojiCountryCodesCommon];
  v5 = [v3 arrayWithArray:v4];

  if ((EMFIsDeviceInGreaterChina() & 1) == 0)
  {
    [v5 addObject:@"TW"];
  }

  v6 = [v5 count];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = *MEMORY[0x1E695D978];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [currentLocale displayNameForKey:v12 value:v14];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];

          v16 = [v17 displayNameForKey:v12 value:v14];
          currentLocale = v17;
        }

        v18 = [self stringToRegionalIndicatorString:v14];
        [v7 setValue:v18 forKey:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  allKeys = [v7 allKeys];
  v20 = [allKeys sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v21 = [EMFEmojiCategory insertionFlagsForCountryCodes:&unk_1F24DF430 inSortedCountryCodes:v20];
  v22 = [v7 objectsForKeys:v20 notFoundMarker:&stru_1F24C94E8];
  v23 = [v22 mutableCopy];

  [EMFEmojiCategory insertToSortedCountries:v23 withAdditionalFlags:v21];
  flagsEmoji = [objc_opt_class() FlagsEmoji];
  v25 = [flagsEmoji arrayByAddingObjectsFromArray:v23];

  return v25;
}

- (NSString)shortLocalizedName
{
  v3 = objc_opt_class();
  identifier = [(EMFEmojiCategory *)self identifier];
  v5 = [v3 _baseLocalizationKeyForIdentifier:identifier];
  v6 = [v5 stringByAppendingString:@" Category Fallback"];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringInDeviceLanguageForKey:v6];

  return v8;
}

+ (id)localizedRecentsDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringInDeviceLanguageForKey:@"Recents Description"];

  return v3;
}

+ (id)localizedSkinToneEmojiDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringInDeviceLanguageForKey:@"Skin Tone Emoji Help"];

  return v3;
}

- (id)emojiTokensForLocaleData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = objc_opt_class();
  identifier = [(EMFEmojiCategory *)self identifier];
  v7 = [v5 _emojiSetForIdentifier:identifier];

  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [EMFEmojiToken emojiTokenWithString:*(*(&v16 + 1) + 8 * i) localeData:dataCopy, v16];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

+ (BOOL)_isDingbatsVariantEmoji:(id)emoji
{
  emojiCopy = emoji;
  dingbatsVariantEmoji = [self DingbatsVariantEmoji];
  v6 = [dingbatsVariantEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_isNoneVariantEmoji:(id)emoji
{
  emojiCopy = emoji;
  noneVariantEmoji = [self NoneVariantEmoji];
  v6 = [noneVariantEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_isSkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  skinToneEmoji = [self SkinToneEmoji];
  v6 = [skinToneEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_isGenderEmoji:(id)emoji
{
  emojiCopy = emoji;
  genderEmoji = [self GenderEmoji];
  v6 = [genderEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_isProfessionEmoji:(id)emoji
{
  emojiCopy = emoji;
  professionEmoji = [self ProfessionEmoji];
  v6 = [professionEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_isFlagEmoji:(id)emoji
{
  emojiCopy = emoji;
  flagsEmoji = [self FlagsEmoji];
  v6 = [flagsEmoji containsObject:emojiCopy];

  return v6;
}

+ (BOOL)_supportsCoupleSkinToneSelection:(id)selection
{
  selectionCopy = selection;
  v4 = ([objc_opt_class() _isHandholdingCoupleEmoji:selectionCopy] & 1) != 0 || (objc_msgSend(objc_opt_class(), "_isCoupleMultiSkinToneEmoji:", selectionCopy) & 1) != 0 || objc_msgSend(selectionCopy, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)_isCoupleMultiSkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  coupleMultiSkinToneEmoji = [self CoupleMultiSkinToneEmoji];
  if ([coupleMultiSkinToneEmoji containsObject:emojiCopy])
  {
    v6 = 1;
  }

  else
  {
    extendedCoupleMultiSkinToneEmoji = [self ExtendedCoupleMultiSkinToneEmoji];
    if ([extendedCoupleMultiSkinToneEmoji containsObject:emojiCopy])
    {
      v6 = 1;
    }

    else
    {
      v6 = [self _isBaseHandshakeOrHandshakeWithSkintonesEmoji:emojiCopy];
    }
  }

  return v6;
}

+ (BOOL)_isHandholdingCoupleEmoji:(id)emoji
{
  emojiCopy = emoji;
  coupleMultiSkinToneEmoji = [self CoupleMultiSkinToneEmoji];
  v6 = [EMFStringUtilities _stringWithUnichar:[EMFStringUtilities _firstLongCharacterOfString:emojiCopy]];
  v7 = ([coupleMultiSkinToneEmoji containsObject:v6] & 1) != 0 || objc_msgSend(emojiCopy, "rangeOfString:options:", @"‍🤝‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

+ (BOOL)_isComposedCoupleMultiSkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = [emojiCopy rangeOfString:@"‍🤝‍" options:2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(emojiCopy, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)_isBaseHandshakeOrHandshakeWithSkintonesEmoji:(id)emoji
{
  emojiCopy = emoji;
  if ([emojiCopy rangeOfString:@"🤝" options:2])
  {
    v4 = [emojiCopy rangeOfString:@"🫱" options:2];
    v5 = [emojiCopy rangeOfString:@"🫲" options:2];
    v7 = v4 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)_isMultiPersonFamilySkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  multiPersonFamilySkinToneEmoji = [self MultiPersonFamilySkinToneEmoji];
  v6 = [multiPersonFamilySkinToneEmoji containsObject:emojiCopy];

  return v6;
}

+ (id)NoneVariantEmoji
{
  if (NoneVariantEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory NoneVariantEmoji];
  }

  v3 = NoneVariantEmoji_NoneVariantEmojiSet;

  return v3;
}

uint64_t __36__EMFEmojiCategory_NoneVariantEmoji__block_invoke()
{
  NoneVariantEmoji_NoneVariantEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF460];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __31__EMFEmojiCategory_GenderEmoji__block_invoke()
{
  GenderEmoji_GenderEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF490];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __35__EMFEmojiCategory_ProfessionEmoji__block_invoke()
{
  ProfessionEmoji_ProfessionEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF4A8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)ProfessionWithoutSkinToneEmoji
{
  if (ProfessionWithoutSkinToneEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory ProfessionWithoutSkinToneEmoji];
  }

  v3 = ProfessionWithoutSkinToneEmoji_ProfessionWithoutSkinToneEmojiSet;

  return v3;
}

uint64_t __50__EMFEmojiCategory_ProfessionWithoutSkinToneEmoji__block_invoke()
{
  ProfessionWithoutSkinToneEmoji_ProfessionWithoutSkinToneEmojiSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F24DF4C0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)NewlyAddedEmoji
{
  if (NewlyAddedEmoji_onceToken != -1)
  {
    +[EMFEmojiCategory NewlyAddedEmoji];
  }

  v3 = NewlyAddedEmoji_newlyAddedEmojiSet;

  return v3;
}

void __35__EMFEmojiCategory_NewlyAddedEmoji__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [&unk_1F24DF538 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v10;
    do
    {
      v4 = 0;
      do
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(&unk_1F24DF538);
        }

        v5 = [EMFStringUtilities _skinToneVariantsForString:*(*(&v9 + 1) + 8 * v4)];
        [v0 addObjectsFromArray:v5];

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_1F24DF538 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);
  }

  v6 = [&unk_1F24DF520 arrayByAddingObjectsFromArray:v0];
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  v8 = NewlyAddedEmoji_newlyAddedEmojiSet;
  NewlyAddedEmoji_newlyAddedEmojiSet = v7;
}

@end