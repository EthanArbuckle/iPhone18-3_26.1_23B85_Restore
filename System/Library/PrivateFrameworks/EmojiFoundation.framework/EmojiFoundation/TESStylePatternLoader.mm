@interface TESStylePatternLoader
- (TESStylePatternLoader)initWithLocaleIdentifier:(id)a3;
@end

@implementation TESStylePatternLoader

- (TESStylePatternLoader)initWithLocaleIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = TESStylePatternLoader;
  v3 = [(TESLocalizedPListLoader *)&v6 initWithLocaleIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(TESLocalizedPListLoader *)v3 setResourceName:@"TextEffectsStylePatterns"];
  }

  return v4;
}

@end