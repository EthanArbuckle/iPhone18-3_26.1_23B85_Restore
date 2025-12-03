@interface TESLocaleData
+ (id)animationNameForTextEffectType:(int64_t)type;
+ (id)localeDataWithLocale:(id)locale;
+ (id)localeDataWithLocaleIdentifier:(id)identifier;
+ (int64_t)textEffectTypeForAnimationName:(id)name;
- (TESLocaleData)initWithLocale:(id)locale;
- (TESLocaleData)initWithLocaleIdentifier:(id)identifier;
- (id)textEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options;
- (void)enumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
@end

@implementation TESLocaleData

+ (id)animationNameForTextEffectType:(int64_t)type
{
  if ((type - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7A5F738[type - 1];
  }
}

+ (int64_t)textEffectTypeForAnimationName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"big"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"small"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@"jitter"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"explode"])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:@"shakeVertical"])
  {
    v4 = 5;
  }

  else if ([nameCopy isEqualToString:@"shakeHorizontal"])
  {
    v4 = 6;
  }

  else if ([nameCopy isEqualToString:@"bloom"])
  {
    v4 = 7;
  }

  else if ([nameCopy isEqualToString:@"bounce"])
  {
    v4 = 8;
  }

  else if ([nameCopy isEqualToString:@"bold"])
  {
    v4 = 9;
  }

  else if ([nameCopy isEqualToString:@"underline"])
  {
    v4 = 10;
  }

  else if ([nameCopy isEqualToString:@"italic"])
  {
    v4 = 11;
  }

  else if ([nameCopy isEqualToString:@"strikeThrough"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)localeDataWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[TESLocaleData alloc] initWithLocaleIdentifier:identifierCopy];

  return v4;
}

+ (id)localeDataWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = [[TESLocaleData alloc] initWithLocale:localeCopy];

  return v4;
}

- (TESLocaleData)initWithLocaleIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifier];
  if (v4)
  {
    self = [(TESLocaleData *)self initWithLocale:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TESLocaleData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TESLocaleData;
  v5 = [(TESLocaleData *)&v9 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    locale = v5->_locale;
    v5->_locale = v6;
  }

  return v5;
}

- (void)enumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  v11 = +[TESMatcherManager sharedManager];
  locale = [(TESLocaleData *)self locale];
  v13 = [v11 matcherForLocale:locale];

  if ((options & 2) != 0)
  {
    phraseMatcher = [v13 phraseMatcher];
    [phraseMatcher matchesForString:stringCopy searchRange:{range.location, range.length}];
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

          if (blockCopy)
          {
            (*(blockCopy + 2))(blockCopy, *(*(&v25 + 1) + 8 * i), v23);
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
  v21 = blockCopy;
  [v13 enumerateTextEffectCandidatesInString:stringCopy searchRange:range.location options:range.length usingBlock:{options, v20}];

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

- (id)textEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  v9 = MEMORY[0x1E695DF70];
  stringCopy = string;
  v11 = objc_alloc_init(v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__TESLocaleData_textEffectCandidatesInString_searchRange_options___block_invoke;
  v15[3] = &unk_1E7A5F718;
  v16 = v11;
  v12 = v11;
  [(TESLocaleData *)self enumerateTextEffectCandidatesInString:stringCopy searchRange:location options:length usingBlock:options, v15];

  v13 = [v12 copy];

  return v13;
}

@end