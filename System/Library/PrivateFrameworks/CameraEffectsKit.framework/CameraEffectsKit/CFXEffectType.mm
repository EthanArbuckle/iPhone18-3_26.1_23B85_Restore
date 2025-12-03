@interface CFXEffectType
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CFXEffectType)initWithIdentifier:(id)identifier;
- (NSOrderedSet)effects;
- (unint64_t)hash;
@end

@implementation CFXEffectType

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[CFXEffectType initialize];
  }
}

void __27__CFXEffectType_initialize__block_invoke()
{
  v20[5] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB70]);
  v20[0] = @"Animoji";
  v20[1] = @"Filter";
  v20[2] = @"Shapes";
  v20[3] = @"Text";
  v20[4] = @"EmojiStickers";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v2 = [v0 initWithArray:v1];
  v3 = s_OrderedEffectTypes;
  s_OrderedEffectTypes = v2;

  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = [v4 initWithCapacity:{objc_msgSend(s_OrderedEffectTypes, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = s_OrderedEffectTypes;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [CFXEffectType alloc];
        v13 = [(CFXEffectType *)v12 initWithIdentifier:v11, v15];
        [v5 setValue:v13 forKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = s_EffectTypeMap;
  s_EffectTypeMap = v5;
}

- (CFXEffectType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CFXEffectType;
  v6 = [(CFXEffectType *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = @"Filter";
    if ([identifierCopy isEqualToString:@"Filter"])
    {
      v9 = 1;
    }

    else
    {
      v8 = @"Shapes";
      if ([identifierCopy isEqualToString:@"Shapes"] & 1) != 0 || (v8 = @"Text", (objc_msgSend(identifierCopy, "isEqualToString:", @"Text")) || (v8 = @"EmojiStickers", (objc_msgSend(identifierCopy, "isEqualToString:", @"EmojiStickers")))
      {
        v9 = 2;
      }

      else
      {
        v8 = @"Animoji";
        if (![identifierCopy isEqualToString:@"Animoji"])
        {
          goto LABEL_9;
        }

        v9 = 7;
      }
    }

    v7->_jtEffectType = v9;
    localizedTitle = v7->_localizedTitle;
    v7->_localizedTitle = &v8->isa;
  }

LABEL_9:

  return v7;
}

- (NSOrderedSet)effects
{
  v19 = *MEMORY[0x277D85DE8];
  effects = self->_effects;
  if (!effects)
  {
    v4 = [CFXEffect effectIdentifiersForEffectType:self];
    v5 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [CFXEffect effectWithIdentifier:*(*(&v14 + 1) + 8 * v10) forEffectType:self, v14];
          if (v11)
          {
            [(NSOrderedSet *)v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = self->_effects;
    self->_effects = v5;

    effects = self->_effects;
  }

  return effects;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(CFXEffectType *)self identifier];
      identifier2 = [(CFXEffectType *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(CFXEffectType *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end