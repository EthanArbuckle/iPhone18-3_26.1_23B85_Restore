@interface MCMMutableContainerArray
- (MCMMutableContainerArray)init;
- (void)addObjectsFromArray:(id)array;
- (void)setGeneration:(unint64_t)generation;
@end

@implementation MCMMutableContainerArray

- (void)setGeneration:(unint64_t)generation
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = MCMMutableContainerArray;
  [(MCMContainerArray *)&v4 setGeneration:generation];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(id)array
{
  v7 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  array = [(MCMContainerArray *)self array];
  [array addObjectsFromArray:arrayCopy];

  v5 = *MEMORY[0x1E69E9840];
}

- (MCMMutableContainerArray)init
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9968];

  return [(MCMContainerArray *)self initWithGeneration:v3];
}

@end