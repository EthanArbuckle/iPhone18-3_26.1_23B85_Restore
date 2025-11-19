@interface TESMatchResult
+ (id)resultWithMatchRange:(_NSRange)a3 effectType:(int64_t)a4 matchType:(int64_t)a5 sourceString:(id)a6;
- (NSString)matchingSubString;
- (NSString)sourceString;
- (_NSRange)matchRange;
- (id)debugDescription;
@end

@implementation TESMatchResult

+ (id)resultWithMatchRange:(_NSRange)a3 effectType:(int64_t)a4 matchType:(int64_t)a5 sourceString:(id)a6
{
  length = a3.length;
  location = a3.location;
  v10 = a6;
  v11 = objc_alloc_init(TESMatchResult);
  [(TESMatchResult *)v11 setMatchRange:location, length];
  [(TESMatchResult *)v11 setEffectType:a4];
  [(TESMatchResult *)v11 setMatchType:a5];
  [(TESMatchResult *)v11 setSourceString:v10];

  [(TESMatchResult *)v11 setSuggestionBehavior:1];

  return v11;
}

- (NSString)matchingSubString
{
  v3 = [(TESMatchResult *)self sourceString];

  if (v3)
  {
    v4 = [(TESMatchResult *)self sourceString];
    v5 = [(TESMatchResult *)self matchRange];
    v7 = [v4 substringWithRange:{v5, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TESMatchResult *)self matchingSubString];
  v14.location = [(TESMatchResult *)self matchRange];
  v6 = NSStringFromRange(v14);
  v7 = [(TESMatchResult *)self effectType];
  v8 = [(TESMatchResult *)self matchType];
  v9 = [(TESMatchResult *)self suggestionBehavior];
  v10 = [(TESMatchResult *)self sourceString];
  v11 = [v3 stringWithFormat:@"<%@: %p> matchingSubstring: %@, matchRange: %@, effectType: %ld, matchType: %ld, suggestionBehavior: %ld, sourceString: %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (NSString)sourceString
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceString);

  return WeakRetained;
}

- (_NSRange)matchRange
{
  length = self->_matchRange.length;
  location = self->_matchRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end