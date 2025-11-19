@interface TESPatternMatcherRepeatedCharacter
- (TESPatternMatcherRepeatedCharacter)init;
@end

@implementation TESPatternMatcherRepeatedCharacter

- (TESPatternMatcherRepeatedCharacter)init
{
  v7.receiver = self;
  v7.super_class = TESPatternMatcherRepeatedCharacter;
  v2 = [(TESPatternMatcherBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:7];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b(%@*(%@)\\2{2, }%@*)\\b", @"[\\p{Alphabetic}\\p{Mark}\\p{Connector_Punctuation}\\u200c\\u200d]", @"[\\p{Alphabetic}\\p{Mark}\\p{Connector_Punctuation}\\u200c\\u200d]", @"[\\p{Alphabetic}\\p{Mark}\\p{Connector_Punctuation}\\u200c\\u200d]"];
    [(TESPatternMatcherBase *)v3 setPattern:v4];

    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
    v5 = v3;
  }

  return v3;
}

@end