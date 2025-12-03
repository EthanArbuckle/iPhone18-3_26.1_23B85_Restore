@interface PRAstCompositeNode
- (id)description;
- (id)toDictionary;
- (void)addChild:(id)child;
- (void)dealloc;
@end

@implementation PRAstCompositeNode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: type='%@', children=%lu>", NSStringFromClass(v4), -[PRAstCompositeNode nodeType](self, "nodeType"), -[NSMutableArray count](-[PRAstCompositeNode children](self, "children"), "count")];
}

- (id)toDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(PRAstCompositeNode *)self children];
  v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(children);
        }

        [array addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v8++), "toDictionary")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v16[0] = @"type";
  nodeType = [(PRAstCompositeNode *)self nodeType];
  v16[1] = @"children";
  v17[0] = nodeType;
  v17[1] = [array copy];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addChild:(id)child
{
  if (child)
  {
    children = [(PRAstCompositeNode *)self children];

    [(NSMutableArray *)children addObject:child];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstCompositeNode;
  [(PRAstNode *)&v3 dealloc];
}

@end