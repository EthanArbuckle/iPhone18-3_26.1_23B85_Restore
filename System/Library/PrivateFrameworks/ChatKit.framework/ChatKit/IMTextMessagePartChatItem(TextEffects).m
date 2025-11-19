@interface IMTextMessagePartChatItem(TextEffects)
- (double)ageForTextEffectCoordination;
@end

@implementation IMTextMessagePartChatItem(TextEffects)

- (double)ageForTextEffectCoordination
{
  v2 = [a1 time];
  v3 = [a1 message];
  v4 = [v3 messageSummaryInfo];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7248]];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;

        v2 = v6;
      }
    }
  }

  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceDate:v2];
  v9 = v8;

  return v9;
}

@end