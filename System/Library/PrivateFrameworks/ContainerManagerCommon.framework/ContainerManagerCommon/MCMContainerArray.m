@interface MCMContainerArray
- (MCMContainerArray)initWithGeneration:(unint64_t)a3;
- (MCMContainerArray)initWithMutableArray:(id)a3 generation:(unint64_t)a4;
- (NSMutableArray)array;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)generation;
- (void)setGeneration:(unint64_t)a3;
@end

@implementation MCMContainerArray

- (NSMutableArray)array
{
  result = self->_array;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)generation
{
  result = self->_generation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setGeneration:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_generation = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerArray *)self array];
  v5 = [v4 mutableCopy];

  v6 = [(MCMContainerArray *)[MCMMutableContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerArray *)self array];
  v5 = [v4 mutableCopy];

  v6 = [[MCMContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = [(MCMContainerArray *)self array];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMContainerArray)initWithGeneration:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MCMContainerArray *)self initWithMutableArray:v5 generation:a3];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMContainerArray)initWithMutableArray:(id)a3 generation:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MCMContainerArray;
  v8 = [(MCMContainerArray *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_array, a3);
    v9->_generation = a4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end