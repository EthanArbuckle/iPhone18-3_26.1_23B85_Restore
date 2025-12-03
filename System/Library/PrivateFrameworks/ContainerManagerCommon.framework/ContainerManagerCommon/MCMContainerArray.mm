@interface MCMContainerArray
- (MCMContainerArray)initWithGeneration:(unint64_t)generation;
- (MCMContainerArray)initWithMutableArray:(id)array generation:(unint64_t)generation;
- (NSMutableArray)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)generation;
- (void)setGeneration:(unint64_t)generation;
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

- (void)setGeneration:(unint64_t)generation
{
  v4 = *MEMORY[0x1E69E9840];
  self->_generation = generation;
  v3 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x1E69E9840];
  array = [(MCMContainerArray *)self array];
  v5 = [array mutableCopy];

  v6 = [(MCMContainerArray *)[MCMMutableContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x1E69E9840];
  array = [(MCMContainerArray *)self array];
  v5 = [array mutableCopy];

  v6 = [[MCMContainerArray alloc] initWithMutableArray:v5 generation:[(MCMContainerArray *)self generation]];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v12 = *MEMORY[0x1E69E9840];
  array = [(MCMContainerArray *)self array];
  v9 = [array countByEnumeratingWithState:state objects:objects count:count];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMContainerArray)initWithGeneration:(unint64_t)generation
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MCMContainerArray *)self initWithMutableArray:v5 generation:generation];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMContainerArray)initWithMutableArray:(id)array generation:(unint64_t)generation
{
  v13 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = MCMContainerArray;
  v8 = [(MCMContainerArray *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_array, array);
    v9->_generation = generation;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end