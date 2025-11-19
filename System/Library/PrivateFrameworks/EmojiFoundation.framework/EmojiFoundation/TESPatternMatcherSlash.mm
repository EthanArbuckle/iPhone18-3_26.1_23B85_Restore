@interface TESPatternMatcherSlash
- (TESPatternMatcherSlash)init;
@end

@implementation TESPatternMatcherSlash

- (TESPatternMatcherSlash)init
{
  v6.receiver = self;
  v6.super_class = TESPatternMatcherSlash;
  v2 = [(TESPatternMatcherBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:11];
    [(TESPatternMatcherBase *)v3 setPattern:@"/.+?/"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
    v4 = v3;
  }

  return v3;
}

@end