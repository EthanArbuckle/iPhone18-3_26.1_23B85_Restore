@interface IMTextMessagePartChatItem(TextEffects)
- (double)ageForTextEffectCoordination;
@end

@implementation IMTextMessagePartChatItem(TextEffects)

- (double)ageForTextEffectCoordination
{
  time = [self time];
  message = [self message];
  messageSummaryInfo = [message messageSummaryInfo];

  if (messageSummaryInfo)
  {
    v5 = [messageSummaryInfo objectForKeyedSubscript:*MEMORY[0x1E69A7248]];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;

        time = v6;
      }
    }
  }

  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceDate:time];
  v9 = v8;

  return v9;
}

@end