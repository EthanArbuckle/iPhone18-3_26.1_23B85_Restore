@interface NSDictionary(MPCMediaRemoteController)
- (id)allCommandInfos;
- (void)commandInfoForCommand:()MPCMediaRemoteController;
@end

@implementation NSDictionary(MPCMediaRemoteController)

- (id)allCommandInfos
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NSDictionary_MPCMediaRemoteController__allCommandInfos__block_invoke;
  v5[3] = &unk_1E8238460;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

- (void)commandInfoForCommand:()MPCMediaRemoteController
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v3 = [a1 objectForKeyedSubscript:v2];

  return v3;
}

@end