@interface TESMatcher
- (TESMatcher)initWithLocale:(id)locale;
- (void)_loadPatternMatchers;
- (void)asynchronouslyEnumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
@end

@implementation TESMatcher

- (TESMatcher)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TESMatcher;
  v5 = [(TESMatcher *)&v9 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    locale = v5->_locale;
    v5->_locale = v6;

    [(TESMatcher *)v5 _loadPatternMatchers];
  }

  return v5;
}

- (void)enumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_matchers;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(obj);
      }

      if (v30)
      {
        break;
      }

      v14 = [*(*(&v26 + 1) + 8 * v13) matchesForString:stringCopy searchRange:{range.location, range.length}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
LABEL_9:
        v19 = 0;
        while (1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (v30)
          {
            break;
          }

          blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * v19++), &v30);
          if (v17 == v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
            if (v17)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (++v13 == v11)
      {
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)asynchronouslyEnumerateTextEffectCandidatesInString:(id)string searchRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  blockCopy = block;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_matchers;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(obj);
      }

      if (v30)
      {
        break;
      }

      v14 = [*(*(&v26 + 1) + 8 * v13) matchesForString:stringCopy searchRange:{range.location, range.length}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
LABEL_9:
        v19 = 0;
        while (1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (v30)
          {
            break;
          }

          blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * v19++), &v30);
          if (v17 == v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v22 objects:v31 count:16];
            if (v17)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (++v13 == v11)
      {
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_loadPatternMatchers
{
  v3 = [TESTriggerPhraseMatcher alloc];
  locale = [(TESMatcher *)self locale];
  v5 = [(TESTriggerPhraseMatcher *)v3 initWithLocale:locale];
  phraseMatcher = self->_phraseMatcher;
  self->_phraseMatcher = v5;

  matchers = self->_matchers;
  if (!matchers || ![(NSMutableArray *)matchers count])
  {
    v8 = [TESPatternMatcherLoader alloc];
    locale2 = [(TESMatcher *)self locale];
    v12 = [(TESPatternMatcherLoader *)v8 initWithLocale:locale2];

    matchers = [(TESPatternMatcherLoader *)v12 matchers];
    v11 = self->_matchers;
    self->_matchers = matchers;
  }
}

@end