@interface TESPatternMatcherAsterisk
- (TESPatternMatcherAsterisk)init;
@end

@implementation TESPatternMatcherAsterisk

- (TESPatternMatcherAsterisk)init
{
  v6.receiver = self;
  v6.super_class = TESPatternMatcherAsterisk;
  v2 = [(TESPatternMatcherBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:9];
    [(TESPatternMatcherBase *)v3 setPattern:@"\\*\\w([\\w\\s]*\\w)?\\*"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
    v4 = v3;
  }

  return v3;
}

@end