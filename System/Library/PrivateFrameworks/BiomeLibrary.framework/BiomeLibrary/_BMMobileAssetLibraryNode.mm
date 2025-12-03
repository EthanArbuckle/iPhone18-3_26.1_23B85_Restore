@interface _BMMobileAssetLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMobileAssetLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  lifeCycle = [self LifeCycle];
  v6[0] = lifeCycle;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end