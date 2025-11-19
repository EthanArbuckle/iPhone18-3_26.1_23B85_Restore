@interface MCMMutableContainerArray
- (MCMMutableContainerArray)init;
- (void)addObjectsFromArray:(id)a3;
- (void)setGeneration:(unint64_t)a3;
@end

@implementation MCMMutableContainerArray

- (void)setGeneration:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = MCMMutableContainerArray;
  [(MCMContainerArray *)&v4 setGeneration:a3];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)addObjectsFromArray:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = [(MCMContainerArray *)self array];
  [v6 addObjectsFromArray:v4];

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