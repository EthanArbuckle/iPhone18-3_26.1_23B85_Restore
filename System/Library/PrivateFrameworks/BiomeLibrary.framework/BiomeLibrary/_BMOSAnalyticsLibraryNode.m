@interface _BMOSAnalyticsLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMOSAnalyticsLibraryNode

+ (id)sublibraries
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = [a1 CA];
  v4 = [a1 Hardware];
  v9[1] = v4;
  v5 = [a1 Stability];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end