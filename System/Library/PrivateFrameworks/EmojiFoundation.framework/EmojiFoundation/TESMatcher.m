@interface TESMatcher
- (TESMatcher)initWithLocale:(id)a3;
- (void)_loadPatternMatchers;
- (void)asynchronouslyEnumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6;
- (void)enumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6;
@end

@implementation TESMatcher

- (TESMatcher)initWithLocale:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TESMatcher;
  v5 = [(TESMatcher *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    locale = v5->_locale;
    v5->_locale = v6;

    [(TESMatcher *)v5 _loadPatternMatchers];
  }

  return v5;
}

- (void)enumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
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

      v14 = [*(*(&v26 + 1) + 8 * v13) matchesForString:v8 searchRange:{a4.location, a4.length}];
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

          v9[2](v9, *(*(&v22 + 1) + 8 * v19++), &v30);
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

- (void)asynchronouslyEnumerateTextEffectCandidatesInString:(id)a3 searchRange:(_NSRange)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
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

      v14 = [*(*(&v26 + 1) + 8 * v13) matchesForString:v8 searchRange:{a4.location, a4.length}];
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

          v9[2](v9, *(*(&v22 + 1) + 8 * v19++), &v30);
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
  v4 = [(TESMatcher *)self locale];
  v5 = [(TESTriggerPhraseMatcher *)v3 initWithLocale:v4];
  phraseMatcher = self->_phraseMatcher;
  self->_phraseMatcher = v5;

  matchers = self->_matchers;
  if (!matchers || ![(NSMutableArray *)matchers count])
  {
    v8 = [TESPatternMatcherLoader alloc];
    v9 = [(TESMatcher *)self locale];
    v12 = [(TESPatternMatcherLoader *)v8 initWithLocale:v9];

    v10 = [(TESPatternMatcherLoader *)v12 matchers];
    v11 = self->_matchers;
    self->_matchers = v10;
  }
}

@end