@interface TESStylePatternLoader
- (TESStylePatternLoader)initWithLocaleIdentifier:(id)identifier;
@end

@implementation TESStylePatternLoader

- (TESStylePatternLoader)initWithLocaleIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = TESStylePatternLoader;
  v3 = [(TESLocalizedPListLoader *)&v6 initWithLocaleIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(TESLocalizedPListLoader *)v3 setResourceName:@"TextEffectsStylePatterns"];
  }

  return v4;
}

@end