@interface TESMatchResult
+ (id)resultWithMatchRange:(_NSRange)range effectType:(int64_t)type matchType:(int64_t)matchType sourceString:(id)string;
- (NSString)matchingSubString;
- (NSString)sourceString;
- (_NSRange)matchRange;
- (id)debugDescription;
@end

@implementation TESMatchResult

+ (id)resultWithMatchRange:(_NSRange)range effectType:(int64_t)type matchType:(int64_t)matchType sourceString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v11 = objc_alloc_init(TESMatchResult);
  [(TESMatchResult *)v11 setMatchRange:location, length];
  [(TESMatchResult *)v11 setEffectType:type];
  [(TESMatchResult *)v11 setMatchType:matchType];
  [(TESMatchResult *)v11 setSourceString:stringCopy];

  [(TESMatchResult *)v11 setSuggestionBehavior:1];

  return v11;
}

- (NSString)matchingSubString
{
  sourceString = [(TESMatchResult *)self sourceString];

  if (sourceString)
  {
    sourceString2 = [(TESMatchResult *)self sourceString];
    matchRange = [(TESMatchResult *)self matchRange];
    v7 = [sourceString2 substringWithRange:{matchRange, v6}];
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
  matchingSubString = [(TESMatchResult *)self matchingSubString];
  v14.location = [(TESMatchResult *)self matchRange];
  v6 = NSStringFromRange(v14);
  effectType = [(TESMatchResult *)self effectType];
  matchType = [(TESMatchResult *)self matchType];
  suggestionBehavior = [(TESMatchResult *)self suggestionBehavior];
  sourceString = [(TESMatchResult *)self sourceString];
  v11 = [v3 stringWithFormat:@"<%@: %p> matchingSubstring: %@, matchRange: %@, effectType: %ld, matchType: %ld, suggestionBehavior: %ld, sourceString: %@", v4, self, matchingSubString, v6, effectType, matchType, suggestionBehavior, sourceString];

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