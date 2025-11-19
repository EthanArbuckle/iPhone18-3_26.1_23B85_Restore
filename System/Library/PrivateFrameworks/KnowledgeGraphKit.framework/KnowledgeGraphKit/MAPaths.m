@interface MAPaths
+ (id)paths;
+ (id)pathsWithPaths:(id)a3;
- (MAPaths)init;
- (id)description;
- (id)pathAtIndex:(unint64_t)a3;
- (id)uniqueEdgesForLabel:(id)a3;
- (id)uniqueNodesForLabel:(id)a3;
- (void)addPath:(id)a3;
- (void)enumerateWithBlock:(id)a3;
- (void)removeAllPaths;
- (void)setPaths:(id)a3;
@end

@implementation MAPaths

- (id)uniqueEdgesForLabel:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_paths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) edgesForLabel:{v4, v14}];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)uniqueNodesForLabel:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_paths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) nodesForLabel:{v4, v14}];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)enumerateWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_paths;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPaths
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_paths removeAllObjects];
  objc_sync_exit(obj);
}

- (void)setPaths:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableArray *)v5->_paths removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(MAPaths *)v5 addPath:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPath:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_paths addObject:v5];
  objc_sync_exit(v4);
}

- (id)pathAtIndex:(unint64_t)a3
{
  if ([(MAPaths *)self count]<= a3)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAPathsInvalidIndex" format:{@"Out of bounds result path index %ld", a3}];
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_paths objectAtIndex:a3];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendString:@"["];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__MAPaths_description__block_invoke;
  v6[3] = &unk_2797FF928;
  v4 = v3;
  v7 = v4;
  [(MAPaths *)self enumerateWithBlock:v6];
  if ([v4 length] >= 2)
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 2}];
  }

  [v4 appendString:@"]"];

  return v4;
}

void __22__MAPaths_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendFormat:@"%@, ", v3];
}

- (MAPaths)init
{
  v6.receiver = self;
  v6.super_class = MAPaths;
  v2 = [(MAPaths *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    paths = v2->_paths;
    v2->_paths = v3;
  }

  return v2;
}

+ (id)pathsWithPaths:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPaths:v3];

  return v4;
}

+ (id)paths
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end