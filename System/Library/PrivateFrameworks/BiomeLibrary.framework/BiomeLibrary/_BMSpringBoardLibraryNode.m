@interface _BMSpringBoardLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSpringBoardLibraryNode

+ (id)sublibraries
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = [a1 Domino];
  v10[0] = v3;
  v4 = [a1 ExternalDisplay];
  v10[1] = v4;
  v5 = [a1 GestureEducation];
  v10[2] = v5;
  v6 = [a1 WindowManagement];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end