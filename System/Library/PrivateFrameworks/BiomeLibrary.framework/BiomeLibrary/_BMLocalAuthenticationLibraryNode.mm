@interface _BMLocalAuthenticationLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMLocalAuthenticationLibraryNode

+ (id)sublibraries
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 Interactive];
  v8[0] = v3;
  v4 = [a1 UI];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end