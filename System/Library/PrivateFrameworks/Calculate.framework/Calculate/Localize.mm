@interface Localize
+ (NSArray)availableLocaleNames;
+ (NSArray)systemLocales;
+ (NSBundle)mainBundle;
+ (id)cachedLocalizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization;
+ (id)keyForLocales:(id)locales;
+ (id)locales:(id)locales withDefault:(id)default;
+ (id)localizationForLocale:(id)locale;
+ (id)localizeString:(id)string withNumberingSystem:(id)system locale:(id)locale;
+ (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization;
+ (id)localizedStringsForTable:(id)table localization:(id)localization;
+ (id)numberingSystemCharacterSet;
+ (id)numberingSystemForDigit:(id)digit;
+ (id)numberingSystemOutputCharacterSet;
+ (id)numberingSystems;
+ (void)enumerateLocales:(id)locales withBlock:(id)block;
+ (void)initNumberingSystems:(id)systems;
@end

@implementation Localize

+ (NSArray)systemLocales
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [preferredLanguages countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v14 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [preferredLanguages countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = [v2 count];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  if (v9)
  {
    [v2 setObject:currentLocale atIndexedSubscript:0];
  }

  else
  {
    [v2 addObject:currentLocale];
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)numberingSystems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__Localize_numberingSystems__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (numberingSystems_onceToken != -1)
  {
    dispatch_once(&numberingSystems_onceToken, block);
  }

  v2 = numberingSystems_numberingSystems;

  return v2;
}

void __28__Localize_numberingSystems__block_invoke(uint64_t a1)
{
  v4 = objc_opt_new();
  [*(a1 + 32) initNumberingSystems:v4];
  v2 = [v4 copy];
  v3 = numberingSystems_numberingSystems;
  numberingSystems_numberingSystems = v2;
}

+ (NSArray)availableLocaleNames
{
  v2 = +[Localize mainBundle];
  localizations = [v2 localizations];

  return localizations;
}

+ (NSBundle)mainBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (void)enumerateLocales:(id)locales withBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = localesCopy;
    v8 = localesCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [Localize localizationForLocale:v13];
          if (([v7 containsObject:v14] & 1) == 0)
          {
            if ([v7 count] > 2)
            {

              goto LABEL_14;
            }

            [v7 addObject:v14];
            blockCopy[2](blockCopy, v13, v14);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    localesCopy = v16;
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)keyForLocales:(id)locales
{
  v19 = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = localesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        localeIdentifier = [*(*(&v14 + 1) + 8 * i) localeIdentifier];
        [v4 addObject:localeIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@"|"];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)localizeString:(id)string withNumberingSystem:(id)system locale:(id)locale
{
  stringCopy = string;
  systemCopy = system;
  localeCopy = locale;
  if (![systemCopy allowForOutput])
  {
    goto LABEL_6;
  }

  v10 = +[Localize numberingSystemCharacterSet];
  v11 = [stringCopy rangeOfCharacterFromSet:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:

LABEL_6:
    v15 = stringCopy;
    goto LABEL_7;
  }

  v13 = [stringCopy substringWithRange:{v11, v12}];
  v14 = [Localize numberingSystemForDigit:v13];

  if ([v14 isEqual:systemCopy])
  {

    goto LABEL_5;
  }

  v17 = [stringCopy lengthOfBytesUsingEncoding:2483028224];
  v46 = malloc_type_calloc(v17 >> 1, 2uLL, 0x1000040BDFB0063uLL);
  [stringCopy getBytes:v46 maxLength:v17 usedLength:0 encoding:2483028224 options:0 range:0 remainingRange:{objc_msgSend(stringCopy, "length"), 0}];
  v18 = systemCopy;
  v19 = v18;
  v45 = v17;
  if ((v17 >> 1) < 1)
  {
    goto LABEL_37;
  }

  v20 = 0;
  v21 = 0;
  v22 = v17 >> 1;
  v47 = v18;
  v44 = v14;
  do
  {
    v43 = v21;
    v23 = &v46[v20];
    while (1)
    {
      v48 = *v23;
      if ([v10 characterIsMember:?])
      {
        if (v19)
        {
          v24 = v48;
          if (v24 >= [v19 zero])
          {
            v25 = v48;
            if ([v19 zero] + 10 > v25)
            {
              goto LABEL_40;
            }
          }
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v48 length:1];
        v27 = [Localize numberingSystemForDigit:v26];

        v19 = v27;
        if (v27)
        {
LABEL_40:
          if ([v19 allowForOutput])
          {
            v28 = v48;
            v29 = v28 - [v19 zero];
            v30 = v29 + [v47 zero];
            if (*v23 != v30)
            {
              break;
            }
          }
        }
      }

      ++v20;
      ++v23;
      if (v22 == v20)
      {
        v14 = v44;
        if (v43)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }
    }

    *v23 = v30;
    ++v20;
    v21 = 1;
    v14 = v44;
  }

  while (v20 != v22);
LABEL_25:
  groupingSeparator = [localeCopy groupingSeparator];
  if ([groupingSeparator length] != 1)
  {

    goto LABEL_37;
  }

  decimalSeparator = [localeCopy decimalSeparator];
  v33 = [decimalSeparator length];

  if (v33 == 1)
  {
    usesEastArabicDigits = [v47 usesEastArabicDigits];
    if (usesEastArabicDigits != [v14 usesEastArabicDigits])
    {
      groupingSeparator2 = [localeCopy groupingSeparator];
      v36 = [groupingSeparator2 characterAtIndex:0];

      decimalSeparator2 = [localeCopy decimalSeparator];
      v38 = [decimalSeparator2 characterAtIndex:0];

      v39 = v38;
      v40 = v46;
      while (1)
      {
        v41 = *v40;
        if (v41 == v36)
        {
          break;
        }

        if (v41 == v39)
        {
          suggestedDecimalSeparator = [v47 suggestedDecimalSeparator];
          goto LABEL_33;
        }

LABEL_34:
        ++v40;
        if (!--v22)
        {
          goto LABEL_37;
        }
      }

      suggestedDecimalSeparator = [v47 suggestedGroupingSeparator];
LABEL_33:
      *v40 = suggestedDecimalSeparator;
      goto LABEL_34;
    }
  }

LABEL_37:
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v46 length:v45 encoding:2483028224 freeWhenDone:1];

LABEL_7:

  return v15;
}

+ (id)numberingSystemOutputCharacterSet
{
  if (numberingSystemOutputCharacterSet_onceToken != -1)
  {
    dispatch_once(&numberingSystemOutputCharacterSet_onceToken, &__block_literal_global_90);
  }

  v3 = numberingSystemOutputCharacterSet_numberingSystemOutputCharacterSet;

  return v3;
}

void __45__Localize_numberingSystemOutputCharacterSet__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = +[Localize numberingSystems];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if ([v6 allowForOutput])
        {
          v7 = [v6 id];
          v8 = [v7 isEqualToString:@"latn"];

          if ((v8 & 1) == 0)
          {
            v9 = [v6 digitsString];
            [v0 addCharactersInString:v9];
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = numberingSystemOutputCharacterSet_numberingSystemOutputCharacterSet;
  numberingSystemOutputCharacterSet_numberingSystemOutputCharacterSet = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)numberingSystemCharacterSet
{
  if (numberingSystemCharacterSet_onceToken != -1)
  {
    dispatch_once(&numberingSystemCharacterSet_onceToken, &__block_literal_global_87);
  }

  v3 = numberingSystemCharacterSet_numberingSystemCharacterSet;

  return v3;
}

void __39__Localize_numberingSystemCharacterSet__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = +[Localize numberingSystems];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v10 + 1) + 8 * v5) digitsString];
        [v0 addCharactersInString:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v7 = [v0 copy];
  v8 = numberingSystemCharacterSet_numberingSystemCharacterSet;
  numberingSystemCharacterSet_numberingSystemCharacterSet = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)numberingSystemForDigit:(id)digit
{
  v3 = numberingSystemForDigit__onceToken;
  digitCopy = digit;
  if (v3 != -1)
  {
    dispatch_once(&numberingSystemForDigit__onceToken, &__block_literal_global_84);
  }

  v5 = [numberingSystemForDigit__digitToNumberingSystem objectForKeyedSubscript:digitCopy];

  return v5;
}

void __36__Localize_numberingSystemForDigit___block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = numberingSystemForDigit__digitToNumberingSystem;
  numberingSystemForDigit__digitToNumberingSystem = v0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[Localize numberingSystems];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 digits];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [numberingSystemForDigit__digitToNumberingSystem setObject:v7 forKeyedSubscript:*(*(&v14 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)initNumberingSystems:(id)systems
{
  v14 = *MEMORY[0x1E69E9840];
  systemsCopy = systems;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__Localize_initNumberingSystems___block_invoke;
  aBlock[3] = &unk_1E815C1A0;
  v4 = systemsCopy;
  v12 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, @"0123456789", @"latn");
  unumsys_openAvailableNames();
  while (1)
  {
    v6 = uenum_next();
    if (!v6)
    {
      break;
    }

    v7 = v6;
    unumsys_openByName();
    if (!MEMORY[0x1C6912EB0]())
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:v13 length:unumsys_getDescription()];
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:1];
      if (([(__CFString *)v9 isEqualToString:@"latn"]& 1) == 0)
      {
        v5[2](v5, v8, v9);
      }
    }

    unumsys_close();
  }

  uenum_close();

  v10 = *MEMORY[0x1E69E9840];
}

void __33__Localize_initNumberingSystems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[LocalizeNumberingSystem alloc] initWithDigits:v6 id:v5];

  [v4 addObject:v7];
}

+ (id)cachedLocalizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization
{
  keyCopy = key;
  valueCopy = value;
  tableCopy = table;
  localizationCopy = localization;
  if (cachedLocalizedStringForKey_value_table_localization__onceToken != -1)
  {
    dispatch_once(&cachedLocalizedStringForKey_value_table_localization__onceToken, &__block_literal_global_83);
  }

  tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", localizationCopy, tableCopy];
  v14 = [cachedLocalizedStringForKey_value_table_localization__tableCache objectForKey:tableCopy];
  if (!v14)
  {
    v14 = [Localize localizedStringsForTable:tableCopy localization:localizationCopy];
    [cachedLocalizedStringForKey_value_table_localization__tableCache setObject:v14 forKey:tableCopy];
  }

  v15 = [v14 objectForKeyedSubscript:keyCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = keyCopy;
  }

  v18 = v17;

  return v17;
}

uint64_t __65__Localize_cachedLocalizedStringForKey_value_table_localization___block_invoke()
{
  v0 = objc_opt_new();
  v1 = cachedLocalizedStringForKey_value_table_localization__tableCache;
  cachedLocalizedStringForKey_value_table_localization__tableCache = v0;

  v2 = cachedLocalizedStringForKey_value_table_localization__tableCache;

  return [v2 setCountLimit:5];
}

+ (id)localizedStringsForTable:(id)table localization:(id)localization
{
  localizationCopy = localization;
  tableCopy = table;
  v7 = +[Localize mainBundle];
  v8 = [v7 localizedStringsForTable:tableCopy localization:localizationCopy];

  return v8;
}

+ (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization
{
  localizationCopy = localization;
  tableCopy = table;
  valueCopy = value;
  keyCopy = key;
  v13 = +[Localize mainBundle];
  v14 = [v13 localizedStringForKey:keyCopy value:valueCopy table:tableCopy localization:localizationCopy];

  return v14;
}

+ (id)localizationForLocale:(id)locale
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AAE8];
  localeCopy = locale;
  v5 = +[Localize availableLocaleNames];
  localeIdentifier = [localeCopy localeIdentifier];

  v12[0] = localeIdentifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 preferredLocalizationsFromArray:v5 forPreferences:v7];

  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)locales:(id)locales withDefault:(id)default
{
  v28 = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  defaultCopy = default;
  if (defaultCopy)
  {
    if (!localesCopy)
    {
      goto LABEL_5;
    }

    if (![localesCopy count])
    {
      goto LABEL_5;
    }

    v7 = [localesCopy objectAtIndexedSubscript:0];
    localeIdentifier = [v7 localeIdentifier];
    localeIdentifier2 = [defaultCopy localeIdentifier];
    v10 = [localeIdentifier isEqualToString:localeIdentifier2];

    if ((v10 & 1) == 0)
    {
LABEL_5:
      v11 = objc_opt_new();
      [v11 addObject:defaultCopy];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = localesCopy;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            localeIdentifier3 = [v17 localeIdentifier];
            localeIdentifier4 = [defaultCopy localeIdentifier];
            v20 = [localeIdentifier3 isEqualToString:localeIdentifier4];

            if ((v20 & 1) == 0)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      localesCopy = [v11 copy];
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return localesCopy;
}

@end