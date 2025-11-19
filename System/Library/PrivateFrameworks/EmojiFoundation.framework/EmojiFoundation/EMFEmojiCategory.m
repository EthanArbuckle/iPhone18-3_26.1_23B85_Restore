@interface EMFEmojiCategory
+ (BOOL)_isBaseHandshakeOrHandshakeWithSkintonesEmoji:(id)a3;
+ (BOOL)_isComposedCoupleMultiSkinToneEmoji:(id)a3;
+ (BOOL)_isCoupleMultiSkinToneEmoji:(id)a3;
+ (BOOL)_isDingbatsVariantEmoji:(id)a3;
+ (BOOL)_isFlagEmoji:(id)a3;
+ (BOOL)_isGenderEmoji:(id)a3;
+ (BOOL)_isHandholdingCoupleEmoji:(id)a3;
+ (BOOL)_isMultiPersonFamilySkinToneEmoji:(id)a3;
+ (BOOL)_isNoneVariantEmoji:(id)a3;
+ (BOOL)_isProfessionEmoji:(id)a3;
+ (BOOL)_isSkinToneEmoji:(id)a3;
+ (BOOL)_supportsCoupleSkinToneSelection:(id)a3;
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
+ (id)_baseLocalizationKeyForIdentifier:(id)a3;
+ (id)_emojiSetForIdentifier:(id)a3;
+ (id)categoryIdentifierList;
+ (id)categoryWithIdentifier:(id)a3;
+ (id)computeEmojiFlagsSortedByLanguage;
+ (id)extraFlagsForCountryCode:(id)a3;
+ (id)insertionFlagsForCountryCodes:(id)a3 inSortedCountryCodes:(id)a4;
+ (id)localizedRecentsDescription;
+ (id)localizedSkinToneEmojiDescription;
+ (id)stringToRegionalIndicatorString:(id)a3;
+ (void)insertToSortedCountries:(id)a3 withAdditionalFlags:(id)a4;
- (EMFEmojiCategory)initWithIdentifier:(id)a3;
- (NSString)localizedName;
- (NSString)shortLocalizedName;
- (id)emojiTokensForLocaleData:(id)a3;
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
  v4 = [(EMFEmojiCategory *)self identifier];
  v5 = [v3 _baseLocalizationKeyForIdentifier:v4];
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

+ (id)categoryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

- (EMFEmojiCategory)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMFEmojiCategory;
  v6 = [(EMFEmojiCategory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

+ (id)_baseLocalizationKeyForIdentifier:(id)a3
{
  if (a3 == @"EMFEmojiCategoryRecents")
  {
    return @"Frequently Used";
  }

  if (a3 == @"EMFEmojiCategoryPeople")
  {
    return @"People";
  }

  if (a3 == @"EMFEmojiCategoryNature")
  {
    return @"Nature";
  }

  if (a3 == @"EMFEmojiCategoryFoodAndDrink")
  {
    return @"Food & Drink";
  }

  if (a3 == @"EMFEmojiCategoryActivity")
  {
    return @"Activity";
  }

  if (a3 == @"EMFEmojiCategoryTravelAndPlaces")
  {
    return @"Travel & Places";
  }

  if (a3 == @"EMFEmojiCategoryObjects")
  {
    return @"Objects";
  }

  if (a3 == @"EMFEmojiCategorySymbols")
  {
    return @"Symbols";
  }

  if (a3 == @"EMFEmojiCategoryFlags")
  {
    return @"Flags";
  }

  return 0;
}

+ (id)_emojiSetForIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"EMFEmojiCategoryPrepopulated")
  {
    v7 = [a1 PrepopulatedEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryPeople")
  {
    v7 = [a1 PeopleEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryNature")
  {
    v7 = [a1 NatureEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryFoodAndDrink")
  {
    v7 = [a1 FoodAndDrinkEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryActivity")
  {
    v7 = [a1 ActivityEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryTravelAndPlaces")
  {
    v7 = [a1 TravelAndPlacesEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryObjects")
  {
    v7 = [a1 ObjectsEmoji];
  }

  else if (v4 == @"EMFEmojiCategorySymbols")
  {
    v7 = [a1 SymbolsEmoji];
  }

  else if (v4 == @"EMFEmojiCategoryFlags")
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__EMFEmojiCategory__emojiSetForIdentifier___block_invoke;
    v9[3] = &__block_descriptor_40_e14___NSArray_8__0l;
    v9[4] = a1;
    v7 = [EMFEmojiPreferences _cachedFlagCategoryEmoji:v9];
  }

  else
  {
    if (v4 != @"EMFEmojiCategoryRecents")
    {
      v6 = 0;
      goto LABEL_23;
    }

    v7 = +[EMFEmojiPreferences _recentEmojiStrings];
  }

  v6 = v7;
LABEL_23:

  return v6;
}

uint64_t __43__EMFEmojiCategory__emojiSetForIdentifier___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 computeEmojiFlagsSortedByLanguage];
}

+ (id)stringToRegionalIndicatorString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] string];
  if ([v3 length])
  {
    v5 = 0;
    do
    {
      v6 = +[EMFStringUtilities _stringWithUnichar:](EMFStringUtilities, "_stringWithUnichar:", [v3 characterAtIndex:v5] + 127397);
      v7 = [v4 stringByAppendingString:v6];

      ++v5;
      v4 = v7;
    }

    while (v5 < [v3 length]);
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (void)insertToSortedCountries:(id)a3 withAdditionalFlags:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v6 = [v22 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
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
        v16 = [v15 integerValue];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (v16 < [v5 count])
          {
            v18 = [v22 objectForKey:v15];
            if ([v18 count])
            {
              v19 = 0;
              v20 = v17 + 1;
              do
              {
                v21 = [v18 objectAtIndex:v19];
                [v5 insertObject:v21 atIndex:v20 + v19];

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

+ (id)extraFlagsForCountryCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"JP"])
  {
    v4 = &unk_1F24DF400;
  }

  else if ([v3 isEqualToString:@"GB"])
  {
    v4 = &unk_1F24DF418;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)insertionFlagsForCountryCodes:(id)a3 inSortedCountryCodes:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
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
        v13 = [MEMORY[0x1E695DF58] currentLocale];
        v14 = [v13 displayNameForKey:v10 value:v12];
        v15 = [v6 indexOfObject:v14];

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
  v8 = [MEMORY[0x1E695DF58] currentLocale];
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
        v15 = [v8 displayNameForKey:v12 value:v14];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];

          v16 = [v17 displayNameForKey:v12 value:v14];
          v8 = v17;
        }

        v18 = [a1 stringToRegionalIndicatorString:v14];
        [v7 setValue:v18 forKey:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v19 = [v7 allKeys];
  v20 = [v19 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v21 = [EMFEmojiCategory insertionFlagsForCountryCodes:&unk_1F24DF430 inSortedCountryCodes:v20];
  v22 = [v7 objectsForKeys:v20 notFoundMarker:&stru_1F24C94E8];
  v23 = [v22 mutableCopy];

  [EMFEmojiCategory insertToSortedCountries:v23 withAdditionalFlags:v21];
  v24 = [objc_opt_class() FlagsEmoji];
  v25 = [v24 arrayByAddingObjectsFromArray:v23];

  return v25;
}

- (NSString)shortLocalizedName
{
  v3 = objc_opt_class();
  v4 = [(EMFEmojiCategory *)self identifier];
  v5 = [v3 _baseLocalizationKeyForIdentifier:v4];
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

- (id)emojiTokensForLocaleData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(EMFEmojiCategory *)self identifier];
  v7 = [v5 _emojiSetForIdentifier:v6];

  v8 = [MEMORY[0x1E695DF70] array];
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

        v14 = [EMFEmojiToken emojiTokenWithString:*(*(&v16 + 1) + 8 * i) localeData:v4, v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (BOOL)_isDingbatsVariantEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 DingbatsVariantEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isNoneVariantEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 NoneVariantEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isSkinToneEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 SkinToneEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isGenderEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 GenderEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isProfessionEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 ProfessionEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_isFlagEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 FlagsEmoji];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (BOOL)_supportsCoupleSkinToneSelection:(id)a3
{
  v3 = a3;
  v4 = ([objc_opt_class() _isHandholdingCoupleEmoji:v3] & 1) != 0 || (objc_msgSend(objc_opt_class(), "_isCoupleMultiSkinToneEmoji:", v3) & 1) != 0 || objc_msgSend(v3, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)_isCoupleMultiSkinToneEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 CoupleMultiSkinToneEmoji];
  if ([v5 containsObject:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 ExtendedCoupleMultiSkinToneEmoji];
    if ([v7 containsObject:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [a1 _isBaseHandshakeOrHandshakeWithSkintonesEmoji:v4];
    }
  }

  return v6;
}

+ (BOOL)_isHandholdingCoupleEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 CoupleMultiSkinToneEmoji];
  v6 = [EMFStringUtilities _stringWithUnichar:[EMFStringUtilities _firstLongCharacterOfString:v4]];
  v7 = ([v5 containsObject:v6] & 1) != 0 || objc_msgSend(v4, "rangeOfString:options:", @"‍🤝‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

+ (BOOL)_isComposedCoupleMultiSkinToneEmoji:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"‍🤝‍" options:2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:options:", @"‍❤️‍", 2) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)_isBaseHandshakeOrHandshakeWithSkintonesEmoji:(id)a3
{
  v3 = a3;
  if ([v3 rangeOfString:@"🤝" options:2])
  {
    v4 = [v3 rangeOfString:@"🫱" options:2];
    v5 = [v3 rangeOfString:@"🫲" options:2];
    v7 = v4 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)_isMultiPersonFamilySkinToneEmoji:(id)a3
{
  v4 = a3;
  v5 = [a1 MultiPersonFamilySkinToneEmoji];
  v6 = [v5 containsObject:v4];

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