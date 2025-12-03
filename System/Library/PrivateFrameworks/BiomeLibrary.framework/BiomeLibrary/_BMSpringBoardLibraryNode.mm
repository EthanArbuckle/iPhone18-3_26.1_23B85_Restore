@interface _BMSpringBoardLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSpringBoardLibraryNode

+ (id)sublibraries
{
  v10[4] = *MEMORY[0x1E69E9840];
  domino = [self Domino];
  v10[0] = domino;
  externalDisplay = [self ExternalDisplay];
  v10[1] = externalDisplay;
  gestureEducation = [self GestureEducation];
  v10[2] = gestureEducation;
  windowManagement = [self WindowManagement];
  v10[3] = windowManagement;
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