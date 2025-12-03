@interface AvailableUnitRanks
+ (AvailableUnitRanks)shared;
- (AvailableUnitRanks)init;
- (AvailableUnitRanks)ranksWithLocales:(id)locales cachedOnly:(BOOL)only;
- (id)conversionVerbsWithLocalization:(id)localization from:(BOOL)from;
- (id)ranks;
@end

@implementation AvailableUnitRanks

+ (AvailableUnitRanks)shared
{
  if (shared_onceToken_1104 != -1)
  {
    dispatch_once(&shared_onceToken_1104, &__block_literal_global_1105);
  }

  v3 = shared_shared_1106;

  return v3;
}

uint64_t __28__AvailableUnitRanks_shared__block_invoke()
{
  shared_shared_1106 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (AvailableUnitRanks)init
{
  v10.receiver = self;
  v10.super_class = AvailableUnitRanks;
  v2 = [(AvailableUnitRanks *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_opt_new();
    availableRanks = v2->_availableRanks;
    v2->_availableRanks = v5;

    [(NSCache *)v2->_availableRanks setCountLimit:2];
    v7 = +[UnitsInfo converterUnits];
    unitsInfo = v2->_unitsInfo;
    v2->_unitsInfo = v7;
  }

  return v2;
}

- (id)conversionVerbsWithLocalization:(id)localization from:(BOOL)from
{
  fromCopy = from;
  v5 = [Localize localizedStringForKey:@"CONVERSION_SYNTAX" value:0 table:@"Localizable" localization:localization];
  v6 = [CalculateTokenizer prepareString:v5];

  v7 = @"_unit_to_";
  if (fromCopy)
  {
    v8 = @"_unit_to_";
  }

  else
  {
    v8 = @"_number_and_unit_from_";
  }

  if (fromCopy)
  {
    v7 = @"_number_and_unit_from_";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(\\s*)\\(([^)]*)\\(\\s*)%@"], v8, v7);
  v17 = 0;
  v10 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v9 options:0 error:&v17];
  v11 = [v10 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  v12 = 0;
  if ([v11 numberOfRanges] == 4)
  {
    v13 = [v11 rangeAtIndex:2];
    v15 = [v6 substringWithRange:{v13, v14}];
    v12 = [v15 componentsSeparatedByString:@"|"];
  }

  return v12;
}

- (AvailableUnitRanks)ranksWithLocales:(id)locales cachedOnly:(BOOL)only
{
  onlyCopy = only;
  v44[1] = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  if (![localesCopy count])
  {
    v7 = +[Localize systemLocale];
    v44[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

    localesCopy = v8;
  }

  v9 = [Localize keyForLocales:localesCopy];
  [(NSLock *)self->_lock lock];
  v10 = [(NSCache *)self->_availableRanks objectForKey:v9];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = !onlyCopy;
  }

  if (v11)
  {
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke;
    aBlock[3] = &unk_1E815CAA0;
    aBlock[4] = self;
    v15 = v13;
    v41 = v15;
    v16 = v14;
    v42 = v16;
    v17 = _Block_copy(aBlock);
    if (ranksWithLocales_cachedOnly__onceToken != -1)
    {
      dispatch_once(&ranksWithLocales_cachedOnly__onceToken, &__block_literal_global_26);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke_3;
    v38[3] = &unk_1E815CAC8;
    v18 = v17;
    v39 = v18;
    v19 = _Block_copy(v38);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke_4;
    v32[3] = &unk_1E815CAF0;
    v32[4] = self;
    v20 = v19;
    v34 = v20;
    v35 = v36;
    v21 = v15;
    v33 = v21;
    [Localize enumerateLocales:localesCopy withBlock:v32];
    [CalculateTokenizer addSymbols:v21];
    [CalculateTokenizer addLocalizedSymbols:v21 locales:localesCopy];
    [CalculateTokenizer addUnits:v21 builtIn:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v16;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v43 count:16];
    if (v23)
    {
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v28 + 1) + 8 * i) sort];
        }

        v23 = [v22 countByEnumeratingWithState:&v28 objects:v43 count:16];
      }

      while (v23);
    }

    [(NSCache *)self->_availableRanks setObject:v21 forKey:v9];
    [(NSLock *)self->_lock unlock];
    v12 = v21;

    _Block_object_dispose(v36, 8);
  }

  else
  {
    [(NSLock *)self->_lock unlock];
    v12 = v10;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

void __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, float a5)
{
  v18 = a2;
  v9 = a4;
  if (![CalculateTokenizer displayNameExponent:v18])
  {
    if ([v18 containsString:@"/"])
    {
      v10 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:a3];
      v11 = [v10 name];
      if ([v11 hasPrefix:@"BTU "] & 1) != 0 || (objc_msgSend(v18, "containsString:", @"100") & 1) != 0 || (objc_msgSend(v18, "containsString:", @"١٠٠"))
      {
      }

      else
      {
        v17 = [v18 containsString:@"百"];

        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    v12 = [(Trie *)*(a1 + 40) objectForKeyedSubscript:v18];
    if (!v12)
    {
      v13 = [*(a1 + 32) unitsInfo];
      v12 = [UnitRanks unitRanksWithUnitsInfo:v13];
      [(Trie *)*(a1 + 40) setObject:v12 forKeyedSubscript:v18];

      [*(a1 + 48) addObject:v12];
    }

    v14 = [UnitRank alloc];
    *&v15 = a5;
    v16 = [(UnitRank *)v14 initWithUnitID:a3 rank:v9 locale:v15];
    [v12 addUnitRank:v16];
  }

LABEL_10:
}

void __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v31;
    v15 = (a4 + 1);
    v16 = v15;
    v17 = (v15 + 1.1);
    v29 = *MEMORY[0x1E695DA48];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = *(a1 + 32);
        v21 = v13 / [v9 count] + v16;
        (*(v20 + 16))(v20, v19, a3, v10, v21);
        v22 = v13 / [v9 count] + v17;
        v23 = v19;
        v24 = [ranksWithLocales_cachedOnly__diacriticsRegex firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}];

        if (v24)
        {
          v25 = [v23 stringByApplyingTransform:v29 reverse:0];

          if (([v25 isEqualToString:v23] & 1) == 0)
          {
            (*(*(a1 + 32) + 16))(v22);
          }
        }

        else
        {
          v25 = v23;
        }

        v26 = [ranksWithLocales_cachedOnly__uppercaseRegex firstMatchInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}];

        if (v26)
        {
          v27 = [v25 lowercaseStringWithLocale:v10];
          if (([v27 isEqualToString:v25] & 1) == 0)
          {
            (*(*(a1 + 32) + 16))(v22);
          }
        }

        ++v13;
      }

      v12 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v5 = a3;
  v6 = CalculateLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = v5;
    _os_log_impl(&dword_1C1E73000, v6, OS_LOG_TYPE_DEFAULT, "Calculate: loading localization %{public}@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v41 = v5;
  v7 = [Localize localizedStringsForTable:@"LocalizableUnits" localization:v5];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = [*(a1 + 32) unitsInfo];
  v9 = [v8 unitNames];

  v10 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        v15 = [*(a1 + 32) unitsInfo];
        v16 = [v15 objectForKeyedSubscript:v14];
        [v16 unitID];

        v17 = [v7 objectForKeyedSubscript:v14];
        if (v17)
        {
          v18 = v17;
          v19 = [CalculateTokenizer prepareString:v17];

          v20 = [v19 componentsSeparatedByString:@"|"];
          v21 = *(*(*(a1 + 56) + 8) + 24);
          (*(*(a1 + 48) + 16))();
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v11);
  }

  v22 = [v7 objectForKeyedSubscript:@"ConfusableUnits"];
  if (v22)
  {
    v39 = v22;
    [v22 componentsSeparatedByString:@"|"];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v51 = 0u;
    v23 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [(Trie *)*(a1 + 40) objectForKeyedSubscript:?];
          v28 = v27;
          if (v27)
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v29 = [v27 ranks];
            v30 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v45;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v45 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [*(*(&v44 + 1) + 8 * k) setIsConfusable:1];
                }

                v31 = [v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
              }

              while (v31);
            }
          }
        }

        v24 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v24);
    }

    v22 = v39;
  }

  objc_autoreleasePoolPop(context);
  *(*(*(a1 + 56) + 8) + 24) += 5;
  v34 = [*(a1 + 32) conversionVerbsWithLocalization:v41 from:0];
  if (v34)
  {
    v35 = v34;
    v36 = v43;
LABEL_34:
    (*(*(a1 + 48) + 16))();

    goto LABEL_35;
  }

  v37 = [*(a1 + 32) conversionVerbsWithLocalization:v41 from:1];
  v36 = v43;
  if (v37)
  {
    v35 = v37;
    goto LABEL_34;
  }

LABEL_35:

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __50__AvailableUnitRanks_ranksWithLocales_cachedOnly___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\p{Diacritic}|\\p{Mn}" options:0 error:0];
  v1 = ranksWithLocales_cachedOnly__diacriticsRegex;
  ranksWithLocales_cachedOnly__diacriticsRegex = v0;

  ranksWithLocales_cachedOnly__uppercaseRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\p{Lu}|\\p{Lt}" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)ranks
{
  v3 = +[Localize systemLocales];
  v4 = [(AvailableUnitRanks *)self ranksWithLocales:v3];

  return v4;
}

@end