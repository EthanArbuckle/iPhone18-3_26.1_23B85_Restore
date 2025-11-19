@interface TESPatternMatcherCapitalLetter
- (TESPatternMatcherCapitalLetter)init;
@end

@implementation TESPatternMatcherCapitalLetter

- (TESPatternMatcherCapitalLetter)init
{
  v5.receiver = self;
  v5.super_class = TESPatternMatcherCapitalLetter;
  v2 = [(TESPatternMatcherBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:1];
    [(TESPatternMatcherBase *)v3 setPattern:@"[[:upper:]]{5, }"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
  }

  return v3;
}

@end