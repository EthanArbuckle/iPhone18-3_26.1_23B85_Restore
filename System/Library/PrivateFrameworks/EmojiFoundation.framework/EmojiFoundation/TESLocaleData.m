@interface TESLocaleData
+ (id)animationNameForTextEffectType:(int64_t)a3;
+ (id)localeDataWithLocale:(id)a3;
+ (id)localeDataWithLocaleIdentifier:(id)a3;
+ (int64_t)textEffectTypeForAnimationName:(id)a3;
- (TESLocaleData)initWithLocale:(id)a3;
- (TESLocaleData)initWithLocaleIdentifier:(id)a3;
- (id)textEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5;
- (void)enumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6;
@end

@implementation TESLocaleData

+ (id)animationNameForTextEffectType:(int64_t)a3
{
  if ((a3 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7A5F738[a3 - 1];
  }
}

+ (int64_t)textEffectTypeForAnimationName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"big"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"small"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"jitter"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"explode"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"shakeVertical"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"shakeHorizontal"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"bloom"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"bounce"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"bold"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"underline"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"italic"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"strikeThrough"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)localeDataWithLocaleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[TESLocaleData alloc] initWithLocaleIdentifier:v3];

  return v4;
}

+ (id)localeDataWithLocale:(id)a3
{
  v3 = a3;
  v4 = [[TESLocaleData alloc] initWithLocale:v3];

  return v4;
}

- (TESLocaleData)initWithLocaleIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a3];
  if (v4)
  {
    self = [(TESLocaleData *)self initWithLocale:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TESLocaleData)initWithLocale:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TESLocaleData;
  v5 = [(TESLocaleData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    locale = v5->_locale;
    v5->_locale = v6;
  }

  return v5;
}

- (void)enumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v11 = +[TESMatcherManager sharedManager];
  v12 = [(TESLocaleData *)self locale];
  v13 = [v11 matcherForLocale:v12];

  if ((a5 & 2) != 0)
  {
    v18 = [v13 phraseMatcher];
    [v18 matchesForString:v9 searchRange:{a4.location, a4.length}];
    LOBYTE(v23[0]) = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v28 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = *v26;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if (v10)
          {
            (*(v10 + 2))(v10, *(*(&v25 + 1) + 8 * i), v23);
          }

          if (v23[0])
          {

            goto LABEL_15;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__TESLocaleData_enumerateTextEffectCandidatesInString_searchRange_options_usingBlock___block_invoke;
  v20[3] = &unk_1E7A5F6F0;
  v22 = v23;
  v21 = v10;
  [v13 enumerateTextEffectCandidatesInString:v9 searchRange:a4.location options:a4.length usingBlock:{a5, v20}];

  _Block_object_dispose(v23, 8);
LABEL_15:
}

uint64_t __86__TESLocaleData_enumerateTextEffectCandidatesInString_searchRange_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)textEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  v9 = MEMORY[0x1E695DF70];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__TESLocaleData_textEffectCandidatesInString_searchRange_options___block_invoke;
  v15[3] = &unk_1E7A5F718;
  v16 = v11;
  v12 = v11;
  [(TESLocaleData *)self enumerateTextEffectCandidatesInString:v10 searchRange:location options:length usingBlock:a5, v15];

  v13 = [v12 copy];

  return v13;
}

@end