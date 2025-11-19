@interface TESPatternMatcherTilde
- (TESPatternMatcherTilde)init;
@end

@implementation TESPatternMatcherTilde

- (TESPatternMatcherTilde)init
{
  v5.receiver = self;
  v5.super_class = TESPatternMatcherTilde;
  v2 = [(TESPatternMatcherBase *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:8];
    [(TESPatternMatcherBase *)v3 setPattern:@"\\b\\w+~+$"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
  }

  return v3;
}

@end