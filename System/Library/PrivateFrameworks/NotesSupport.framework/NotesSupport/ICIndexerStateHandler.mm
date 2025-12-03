@interface ICIndexerStateHandler
+ (id)stateDictionary;
+ (void)logMethodCall:(unint64_t)call;
+ (void)registerStateHandler;
+ (void)setStateDictionary:(id)dictionary;
@end

@implementation ICIndexerStateHandler

+ (void)registerStateHandler
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__ICIndexerStateHandler_registerStateHandler__block_invoke;
  v2[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v2[4] = self;
  [ICStateHandler addStateHandlerWithName:"Notes Indexer" sysdiagnoseOnly:1 stateBlock:v2];
}

+ (id)stateDictionary
{
  v2 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v3 = [v2 dictionaryForKey:@"kICIndexerStateUserDefaultsKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (void)setStateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  [v4 setObject:dictionaryCopy forKey:@"kICIndexerStateUserDefaultsKey"];
}

+ (void)logMethodCall:(unint64_t)call
{
  date = [MEMORY[0x1E695DF00] date];
  stateDictionary = [self stateDictionary];
  v6 = [stateDictionary mutableCopy];
  call = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", call];
  v8 = MEMORY[0x1E695DF70];
  v9 = [v6 objectForKeyedSubscript:call];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v8 arrayWithArray:v11];

  if ([v12 count] >= 0xA)
  {
    do
    {
      [v12 removeObjectAtIndex:0];
    }

    while ([v12 count] > 9);
  }

  v13 = MEMORY[0x1E696AD98];
  [date timeIntervalSinceReferenceDate];
  v14 = [v13 numberWithDouble:?];
  [v12 addObject:v14];

  [v6 setObject:v12 forKeyedSubscript:call];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  [self setStateDictionary:v15];
}

@end