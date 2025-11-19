@interface TESPatternMatcherHyphen
- (TESPatternMatcherHyphen)init;
@end

@implementation TESPatternMatcherHyphen

- (TESPatternMatcherHyphen)init
{
  v6.receiver = self;
  v6.super_class = TESPatternMatcherHyphen;
  v2 = [(TESPatternMatcherBase *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TESPatternMatcherBase *)v2 setEffectType:12];
    [(TESPatternMatcherBase *)v3 setPattern:@"-\\w([\\w\\s]*\\w)?-"];
    [(TESPatternMatcherBase *)v3 configurePrecompiledRegularExpression];
    v4 = v3;
  }

  return v3;
}

@end