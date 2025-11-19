@interface _BMMLSELibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMLSELibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 ShareSheet];
  v6[0] = v2;
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