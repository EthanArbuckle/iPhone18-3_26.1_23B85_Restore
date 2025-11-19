@interface TESTriggerPhraseLoader
- (TESTriggerPhraseLoader)initWithLocaleIdentifier:(id)a3;
@end

@implementation TESTriggerPhraseLoader

- (TESTriggerPhraseLoader)initWithLocaleIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = TESTriggerPhraseLoader;
  v3 = [(TESLocalizedPListLoader *)&v6 initWithLocaleIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(TESLocalizedPListLoader *)v3 setResourceName:@"TextEffectsTriggerPhrases"];
  }

  return v4;
}

@end