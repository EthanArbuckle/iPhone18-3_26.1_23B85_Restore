@interface CFXAvailability
+ (id)availableEffects;
@end

@implementation CFXAvailability

+ (id)availableEffects
{
  if (availableEffects_onceToken != -1)
  {
    +[CFXAvailability availableEffects];
  }

  v3 = availableEffects_s_availableEffects;

  return v3;
}

void __35__CFXAvailability_availableEffects__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = +[CFXEffectType effectTypeIdentifiers];
  v1 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v0, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [CFXEffectType effectTypeWithIdentifier:*(*(&v9 + 1) + 8 * v6), v9];
        if (v7)
        {
          [v1 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = availableEffects_s_availableEffects;
  availableEffects_s_availableEffects = v1;
}

@end