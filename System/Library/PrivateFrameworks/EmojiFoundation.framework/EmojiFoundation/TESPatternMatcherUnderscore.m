@interface TESPatternMatcherUnderscore
- (TESPatternMatcherUnderscore)init;
@end

@implementation TESPatternMatcherUnderscore

- (TESPatternMatcherUnderscore)init
{
  v6.receiver = self;
  v6.super_class = TESPatternMatcherUnderscore;
  v2 = [(TESPatternMatcherBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:10];
    [(TESPatternMatcherBase *)v3 setPattern:@"_.+?_"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
    v4 = v3;
  }

  return v3;
}

@end