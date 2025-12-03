@interface MAPath
+ (id)path;
+ (id)pathWithEdges:(id)edges;
- (BOOL)containsNode:(id)node;
- (BOOL)isEqualToPath:(id)path;
- (MAPath)init;
- (double)edgesWeight;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)edgeAtIndex:(unint64_t)index;
- (id)edgesForLabel:(id)label;
- (id)graphRepresentation;
- (id)nodeAtIndex:(unint64_t)index;
- (id)nodesForLabel:(id)label;
- (id)sourceNode;
- (id)targetNode;
- (unint64_t)nodesCount;
- (void)addFirstEdge:(id)edge;
- (void)addLastEdge:(id)edge;
- (void)enumerateWithBlock:(id)block;
- (void)removeAllEdges;
- (void)removeFirstEdge;
- (void)removeLastEdge;
- (void)setEdges:(id)edges;
@end

@implementation MAPath

- (void)enumerateWithBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v18 = 0;
  sourceNode = [(MAPath *)self sourceNode];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  targetNode = self->_edges;
  v7 = [(NSMutableArray *)targetNode countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = sourceNode;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(targetNode);
      }

      v12 = *(*(&v14 + 1) + 8 * v10);
      blockCopy[2](blockCopy, v11, v12, &v18);
      sourceNode = [v12 oppositeNode:{v11, v14}];

      if (v18)
      {
        break;
      }

      ++v10;
      v11 = sourceNode;
      if (v8 == v10)
      {
        v8 = [(NSMutableArray *)targetNode countByEnumeratingWithState:&v14 objects:v19 count:16];
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

    targetNode = [(MAPath *)self targetNode];
    if (targetNode)
    {
      blockCopy[2](blockCopy, targetNode, 0, &v18);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)graphRepresentation
{
  v3 = +[MAGraph graph];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __29__MAPath_graphRepresentation__block_invoke;
  v15[3] = &unk_2797FF360;
  v5 = v3;
  v16 = v5;
  v6 = strongToStrongObjectsMapTable;
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

- (void)setEdges:(id)edges
{
  v16 = *MEMORY[0x277D85DE8];
  edgesCopy = edges;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_edges removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = edgesCopy;
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

        [(MAPath *)selfCopy addLastEdge:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
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

- (void)addLastEdge:(id)edge
{
  edgeCopy = edge;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_edges count];
  edges = selfCopy->_edges;
  if (v5)
  {
    lastObject = [(NSMutableArray *)edges lastObject];
    v8 = [edgeCopy commonNode:lastObject];
    if (v8)
    {
      [(NSMutableArray *)selfCopy->_edges addObject:edgeCopy];
      nodes = selfCopy->_nodes;
      v10 = [edgeCopy oppositeNode:v8];
      [(NSMutableSet *)nodes addObject:v10];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidPath" format:{@"Edge does not connect to %@", lastObject}];
    }
  }

  else
  {
    [(NSMutableArray *)edges addObject:edgeCopy];
    v11 = selfCopy->_nodes;
    sourceNode = [edgeCopy sourceNode];
    [(NSMutableSet *)v11 addObject:sourceNode];

    v13 = selfCopy->_nodes;
    lastObject = [edgeCopy targetNode];
    [(NSMutableSet *)v13 addObject:lastObject];
  }

  objc_sync_exit(selfCopy);
}

- (void)addFirstEdge:(id)edge
{
  edgeCopy = edge;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_edges count];
  edges = selfCopy->_edges;
  if (v5)
  {
    firstObject = [(NSMutableArray *)edges firstObject];
    v8 = [edgeCopy commonNode:firstObject];

    if (v8)
    {
      [(NSMutableArray *)selfCopy->_edges insertObject:edgeCopy atIndex:0];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidPath" format:{@"Edge does not connect to %@", firstObject}];
    }
  }

  else
  {
    [(NSMutableArray *)edges addObject:edgeCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)containsNode:(id)node
{
  v22 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
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
        sourceNode = [v10 sourceNode];
        if ([sourceNode isEqual:nodeCopy])
        {

LABEL_13:
          v14 = 1;
          goto LABEL_14;
        }

        targetNode = [v10 targetNode];
        v13 = [targetNode isEqual:nodeCopy];

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

- (id)edgeAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_edges count]<= index)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidIndex" format:{@"Out of bounds path edge index %ld", index}];
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_edges objectAtIndex:index];
  }

  return v5;
}

- (id)nodeAtIndex:(unint64_t)index
{
  if (!index)
  {
    sourceNode = [(MAPath *)self sourceNode];
    goto LABEL_5;
  }

  if ([(MAPath *)self nodesCount]- 1 == index)
  {
    sourceNode = [(MAPath *)self targetNode];
LABEL_5:
    sourceNode2 = sourceNode;
    goto LABEL_6;
  }

  if ([(MAPath *)self nodesCount]> index)
  {
    v8 = [(NSMutableArray *)self->_edges objectAtIndex:index];
    v9 = [(NSMutableArray *)self->_edges objectAtIndex:index - 1];
    sourceNode2 = [v8 sourceNode];
    sourceNode3 = [v9 sourceNode];
    if (([sourceNode2 isSameNodeAsNode:sourceNode3] & 1) == 0)
    {
      targetNode = [v9 targetNode];
      v12 = [sourceNode2 isSameNodeAsNode:targetNode];

      if (v12)
      {
LABEL_14:

        goto LABEL_6;
      }

      [v8 targetNode];
      sourceNode2 = sourceNode3 = sourceNode2;
    }

    goto LABEL_14;
  }

  [MEMORY[0x277CBEAD8] raise:@"MAPathInvalidIndex" format:{@"Out of bounds path node index %ld", index}];
  sourceNode2 = 0;
LABEL_6:

  return sourceNode2;
}

- (id)edgesForLabel:(id)label
{
  labelCopy = label;
  v5 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __24__MAPath_edgesForLabel___block_invoke;
  v13 = &unk_2797FF360;
  v14 = labelCopy;
  v15 = v5;
  v6 = v5;
  v7 = labelCopy;
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

- (id)nodesForLabel:(id)label
{
  labelCopy = label;
  v5 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __24__MAPath_nodesForLabel___block_invoke;
  v13 = &unk_2797FF360;
  v14 = labelCopy;
  v15 = v5;
  v6 = v5;
  v7 = labelCopy;
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
    lastObject = [(NSMutableArray *)self->_edges lastObject];
    v5 = lastObject;
    if (v3 == 1)
    {
      targetNode = [lastObject targetNode];
    }

    else
    {
      v7 = [(NSMutableArray *)self->_edges objectAtIndex:[(NSMutableArray *)self->_edges count]- 2];
      v8 = [v5 commonNode:v7];
      targetNode = [v5 oppositeNode:v8];
    }
  }

  else
  {
    targetNode = 0;
  }

  return targetNode;
}

- (id)sourceNode
{
  if ([(NSMutableArray *)self->_edges count])
  {
    v3 = [(NSMutableArray *)self->_edges count];
    firstObject = [(NSMutableArray *)self->_edges firstObject];
    v5 = firstObject;
    if (v3 == 1)
    {
      sourceNode = [firstObject sourceNode];
    }

    else
    {
      v7 = [(NSMutableArray *)self->_edges objectAtIndex:1];
      v8 = [v5 commonNode:v7];
      sourceNode = [v5 oppositeNode:v8];
    }
  }

  else
  {
    sourceNode = 0;
  }

  return sourceNode;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_edges];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)isEqualToPath:(id)path
{
  pathCopy = path;
  nodesCount = [(MAPath *)self nodesCount];
  if (nodesCount != [pathCopy nodesCount] || (v6 = -[MAPath edgesCount](self, "edgesCount"), v6 != objc_msgSend(pathCopy, "edgesCount")))
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
      v9 = [pathCopy nodeAtIndex:v7];
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
      v13 = [pathCopy edgeAtIndex:v11];
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
  string = [MEMORY[0x277CCAB68] string];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__MAPath_description__block_invoke;
  v6[3] = &unk_2797FF338;
  v4 = string;
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

+ (id)pathWithEdges:(id)edges
{
  edgesCopy = edges;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEdges:edgesCopy];

  return v4;
}

+ (id)path
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end