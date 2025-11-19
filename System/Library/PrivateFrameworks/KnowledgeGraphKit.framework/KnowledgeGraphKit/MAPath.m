@interface MAPath
+ (id)path;
+ (id)pathWithEdges:(id)a3;
- (BOOL)containsNode:(id)a3;
- (BOOL)isEqualToPath:(id)a3;
- (MAPath)init;
- (double)edgesWeight;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)edgeAtIndex:(unint64_t)a3;
- (id)edgesForLabel:(id)a3;
- (id)graphRepresentation;
- (id)nodeAtIndex:(unint64_t)a3;
- (id)nodesForLabel:(id)a3;
- (id)sourceNode;
- (id)targetNode;
- (unint64_t)nodesCount;
- (void)addFirstEdge:(id)a3;
- (void)addLastEdge:(id)a3;
- (void)enumerateWithBlock:(id)a3;
- (void)removeAllEdges;
- (void)removeFirstEdge;
- (void)removeLastEdge;
- (void)setEdges:(id)a3;
@end

@implementation MAPath

- (void)enumerateWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v5 = [(MAPath *)self sourceNode];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_edges;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v5;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      v4[2](v4, v11, v12, &v18);
      v5 = [v12 oppositeNode:{v11, v14}];

      if (v18)
      {
        break;
      }

      ++v10;
      v11 = v5;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v6 = [(MAPath *)self targetNode];
    if (v6)
    {
      v4[2](v4, v6, 0, &v18);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)graphRepresentation
{
  v3 = +[MAGraph graph];
  v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __29__MAPath_graphRepresentation__block_invoke;
  v15[3] = &unk_2797FF360;
  v5 = v3;
  v16 = v5;
  v6 = v4;
  v17 = v6;
  [(MAPath *)self enumerateWithBlock:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__MAPath_graphRepresentation__block_invoke_2;
  v12[3] = &unk_2797FF360;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  [(MAPath *)self enumerateWithBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __29__MAPath_graphRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 addNodeFromBase:v4];
  [*(a1 + 40) setObject:v5 forKey:v4];
}

void __29__MAPath_graphRepresentation__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *(a1 + 32);
    v12 = v4;
    v6 = [v4 sourceNode];
    v7 = [v5 objectForKey:v6];

    v8 = *(a1 + 32);
    v9 = [v12 targetNode];
    v10 = [v8 objectForKey:v9];

    if (v7 && v10)
    {
      v11 = [*(a1 + 40) addEdgeFromBase:v12 sourceNode:v7 targetNode:v10];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidGraph" format:{@"Graph invalid for edge %@", v12}];
    }

    v4 = v12;
  }
}

- (void)removeAllEdges
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_edges removeAllObjects];
  objc_sync_exit(obj);
}

- (void)setEdges:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableArray *)v5->_edges removeAllObjects];
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

        [(MAPath *)v5 addLastEdge:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeLastEdge
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_edges removeLastObject];
  objc_sync_exit(obj);
}

- (void)removeFirstEdge
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSMutableArray *)obj->_edges count])
  {
    [(NSMutableArray *)obj->_edges removeObjectAtIndex:0];
  }

  objc_sync_exit(obj);
}

- (void)addLastEdge:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)v4->_edges count];
  edges = v4->_edges;
  if (v5)
  {
    v7 = [(NSMutableArray *)edges lastObject];
    v8 = [v14 commonNode:v7];
    if (v8)
    {
      [(NSMutableArray *)v4->_edges addObject:v14];
      nodes = v4->_nodes;
      v10 = [v14 oppositeNode:v8];
      [(NSMutableSet *)nodes addObject:v10];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidPath" format:{@"Edge does not connect to %@", v7}];
    }
  }

  else
  {
    [(NSMutableArray *)edges addObject:v14];
    v11 = v4->_nodes;
    v12 = [v14 sourceNode];
    [(NSMutableSet *)v11 addObject:v12];

    v13 = v4->_nodes;
    v7 = [v14 targetNode];
    [(NSMutableSet *)v13 addObject:v7];
  }

  objc_sync_exit(v4);
}

- (void)addFirstEdge:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)v4->_edges count];
  edges = v4->_edges;
  if (v5)
  {
    v7 = [(NSMutableArray *)edges firstObject];
    v8 = [v9 commonNode:v7];

    if (v8)
    {
      [(NSMutableArray *)v4->_edges insertObject:v9 atIndex:0];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidPath" format:{@"Edge does not connect to %@", v7}];
    }
  }

  else
  {
    [(NSMutableArray *)edges addObject:v9];
  }

  objc_sync_exit(v4);
}

- (BOOL)containsNode:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_edges;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 sourceNode];
        if ([v11 isEqual:v4])
        {

LABEL_13:
          v14 = 1;
          goto LABEL_14;
        }

        v12 = [v10 targetNode];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          goto LABEL_13;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v14 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (double)edgesWeight
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_edges;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) weight];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)nodesCount
{
  result = [(NSMutableArray *)self->_edges count];
  if (result)
  {
    return [(NSMutableArray *)self->_edges count]+ 1;
  }

  return result;
}

- (id)edgeAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_edges count]<= a3)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidIndex" format:{@"Out of bounds path edge index %ld", a3}];
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_edges objectAtIndex:a3];
  }

  return v5;
}

- (id)nodeAtIndex:(unint64_t)a3
{
  if (!a3)
  {
    v5 = [(MAPath *)self sourceNode];
    goto LABEL_5;
  }

  if ([(MAPath *)self nodesCount]- 1 == a3)
  {
    v5 = [(MAPath *)self targetNode];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([(MAPath *)self nodesCount]> a3)
  {
    v8 = [(NSMutableArray *)self->_edges objectAtIndex:a3];
    v9 = [(NSMutableArray *)self->_edges objectAtIndex:a3 - 1];
    v6 = [v8 sourceNode];
    v10 = [v9 sourceNode];
    if (([v6 isSameNodeAsNode:v10] & 1) == 0)
    {
      v11 = [v9 targetNode];
      v12 = [v6 isSameNodeAsNode:v11];

      if (v12)
      {
LABEL_14:

        goto LABEL_6;
      }

      [v8 targetNode];
      v6 = v10 = v6;
    }

    goto LABEL_14;
  }

  [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidIndex" format:{@"Out of bounds path node index %ld", a3}];
  v6 = 0;
LABEL_6:

  return v6;
}

- (id)edgesForLabel:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __24__MAPath_edgesForLabel___block_invoke;
  v13 = &unk_2797FF360;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [(MAPath *)self enumerateWithBlock:&v10];
  v8 = [MEMORY[0x277CBEB98] setWithSet:{v6, v10, v11, v12, v13}];

  return v8;
}

void __24__MAPath_edgesForLabel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 label];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      [*(a1 + 40) addObject:v6];
    }
  }
}

- (id)nodesForLabel:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __24__MAPath_nodesForLabel___block_invoke;
  v13 = &unk_2797FF360;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [(MAPath *)self enumerateWithBlock:&v10];
  v8 = [MEMORY[0x277CBEB98] setWithSet:{v6, v10, v11, v12, v13}];

  return v8;
}

void __24__MAPath_nodesForLabel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [v8 label];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if (v7)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (id)targetNode
{
  if ([(NSMutableArray *)self->_edges count])
  {
    v3 = [(NSMutableArray *)self->_edges count];
    v4 = [(NSMutableArray *)self->_edges lastObject];
    v5 = v4;
    if (v3 == 1)
    {
      v6 = [v4 targetNode];
    }

    else
    {
      v7 = [(NSMutableArray *)self->_edges objectAtIndex:[(NSMutableArray *)self->_edges count]- 2];
      v8 = [v5 commonNode:v7];
      v6 = [v5 oppositeNode:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sourceNode
{
  if ([(NSMutableArray *)self->_edges count])
  {
    v3 = [(NSMutableArray *)self->_edges count];
    v4 = [(NSMutableArray *)self->_edges firstObject];
    v5 = v4;
    if (v3 == 1)
    {
      v6 = [v4 sourceNode];
    }

    else
    {
      v7 = [(NSMutableArray *)self->_edges objectAtIndex:1];
      v8 = [v5 commonNode:v7];
      v6 = [v5 oppositeNode:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_edges];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)isEqualToPath:(id)a3
{
  v4 = a3;
  v5 = [(MAPath *)self nodesCount];
  if (v5 != [v4 nodesCount] || (v6 = -[MAPath edgesCount](self, "edgesCount"), v6 != objc_msgSend(v4, "edgesCount")))
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  if ([(MAPath *)self nodesCount])
  {
    v7 = 0;
    do
    {
      v8 = [(MAPath *)self nodeAtIndex:v7];
      v9 = [v4 nodeAtIndex:v7];
      v10 = [v8 isEqualToNode:v9];

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    while (++v7 < [(MAPath *)self nodesCount]);
  }

  if ([(MAPath *)self edgesCount])
  {
    v11 = 0;
    do
    {
      v12 = [(MAPath *)self edgeAtIndex:v11];
      v13 = [v4 edgeAtIndex:v11];
      v14 = [v12 isEqualToEdge:v13];

      if ((v14 & 1) == 0)
      {
        break;
      }

      ++v11;
    }

    while (v11 < [(MAPath *)self edgesCount]);
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__MAPath_description__block_invoke;
  v6[3] = &unk_2797FF338;
  v4 = v3;
  v7 = v4;
  [(MAPath *)self enumerateWithBlock:v6];

  return v4;
}

void __21__MAPath_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v14 visualString];
  [v6 appendFormat:@"%@", v7];

  if (v5)
  {
    v8 = [v5 sourceNode];
    v9 = *(a1 + 32);
    if ([v8 isEqual:v14])
    {
      v10 = &stru_2867AAB68;
    }

    else
    {
      v10 = @"<";
    }

    v11 = [v5 visualString];
    v12 = [v8 isEqual:v14];
    v13 = @">";
    if (!v12)
    {
      v13 = &stru_2867AAB68;
    }

    [v9 appendFormat:@"%@-%@-%@", v10, v11, v13];
  }
}

- (MAPath)init
{
  v8.receiver = self;
  v8.super_class = MAPath;
  v2 = [(MAPath *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    edges = v2->_edges;
    v2->_edges = v3;

    v5 = objc_opt_new();
    nodes = v2->_nodes;
    v2->_nodes = v5;
  }

  return v2;
}

+ (id)pathWithEdges:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEdges:v3];

  return v4;
}

+ (id)path
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end