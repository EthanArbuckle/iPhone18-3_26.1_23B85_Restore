@interface GVGraph
- (BOOL)hasEdgeBetween:(id)a3 :(id)a4;
- (BOOL)hasEdgeFrom:(id)a3 to:(id)a4 reversed:(BOOL)a5;
- (BOOL)render:(id)a3;
- (CGRect)bounds;
- (GVGraph)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)findEdgeBetween:(id)a3 and:(id)a4;
- (id)findEdgeFrom:(id)a3 to:(id)a4;
- (id)inNodesOf:(id)a3;
- (id)outNodesOf:(id)a3;
- (int64_t)minimumSlack;
- (int64_t)slackOfEdge:(id)a3;
- (unint64_t)inDegreeOf:(id)a3;
- (unint64_t)inEdgeCountOf:(id)a3;
- (unint64_t)outDegreeOf:(id)a3;
- (unint64_t)outEdgeCountOf:(id)a3;
- (void)addNode:(id)a3;
- (void)addNodeGroup:(id)a3 identifier:(id)a4 margins:(id)a5;
- (void)dealloc;
- (void)removeEdge:(id)a3;
- (void)removeEdgeFrom:(id)a3 to:(id)a4;
- (void)removeNode:(id)a3;
- (void)reverseEdge:(id)a3;
- (void)traverseEdgesFromStart:(id)a3 callback:(id)a4;
- (void)traverseNodesFromStart:(id)a3 direction:(int)a4 randomize:(BOOL)a5 callback:(id)a6;
@end

@implementation GVGraph

- (GVGraph)init
{
  v4.receiver = self;
  v4.super_class = GVGraph;
  v2 = [(GVGraph *)&v4 init];
  if (v2)
  {
    v2->_nodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_sourceNodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_sinkNodes = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_edges = objc_alloc_init(MEMORY[0x277CBEB40]);
    v2->_groups = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(GVGraph *)v2 setAllowRedundantEdges:0];
    [(GVGraph *)v2 setMinimizeEdgeLengths:1];
    [(GVGraph *)v2 setMinimizeEdgeCrossings:1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GVGraph;
  [(GVGraph *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    nodes = self->_nodes;
    v6 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(nodes);
          }

          [v4 addNode:*(*(&v21 + 1) + 8 * i)];
        }

        v7 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    edges = self->_edges;
    v11 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(edges);
          }

          [v4 addEdgeFrom:objc_msgSend(*(*(&v17 + 1) + 8 * j) to:"from") reversed:{objc_msgSend(*(*(&v17 + 1) + 8 * j), "to"), objc_msgSend(*(*(&v17 + 1) + 8 * j), "reversed")}];
        }

        v12 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)addNode:(id)a3
{
  if (([(NSMutableOrderedSet *)self->_nodes containsObject:?]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_nodes addObject:a3];
    [(NSMutableOrderedSet *)self->_sourceNodes addObject:a3];
    sinkNodes = self->_sinkNodes;

    [(NSMutableOrderedSet *)sinkNodes addObject:a3];
  }
}

- (void)removeNode:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(NSMutableOrderedSet *)self->_nodes containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_nodes removeObject:a3];
    [(NSMutableOrderedSet *)self->_sourceNodes removeObject:a3];
    [(NSMutableOrderedSet *)self->_sinkNodes removeObject:a3];
    v5 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    edges = self->_edges;
    v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(edges);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([v11 to] == a3)
          {
            [v5 addObject:v11];
          }

          if ([v11 from] == a3)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v5);
          }

          [(NSMutableOrderedSet *)self->_edges removeObject:*(*(&v17 + 1) + 8 * j)];
        }

        v13 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)inNodesOf:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 to] == a3)
        {
          [v5 addObject:{objc_msgSend(v11, "from")}];
        }
      }

      v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)outNodesOf:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 from] == a3)
        {
          [v5 addObject:{objc_msgSend(v11, "to")}];
        }
      }

      v8 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)inEdgeCountOf:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  edges = self->_edges;
  v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(edges);
        }

        if ([*(*(&v12 + 1) + 8 * i) to] == a3)
        {
          ++v7;
        }
      }

      v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)outEdgeCountOf:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  edges = self->_edges;
  v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(edges);
        }

        if ([*(*(&v12 + 1) + 8 * i) from] == a3)
        {
          ++v7;
        }
      }

      v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)inDegreeOf:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[GVGraph inNodesOf:](self inNodesOf:{a3), "count"}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (unint64_t)outDegreeOf:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[GVGraph outNodesOf:](self outNodesOf:{a3), "count"}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (void)traverseEdgesFromStart:(id)a3 callback:(id)a4
{
  v7 = [MEMORY[0x277CBEB58] set];

  _traverse_edges(self, 0, 0, a3, 2, 0, v7, a4);
}

- (void)traverseNodesFromStart:(id)a3 direction:(int)a4 randomize:(BOOL)a5 callback:(id)a6
{
  v7 = a5;
  if ([(NSMutableOrderedSet *)self->_nodes containsObject:?]&& (*(a6 + 2))(a6, a3) != 1)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    if (v7)
    {
      p_randomSeed = &self->randomSeed;
    }

    else
    {
      p_randomSeed = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__GVGraph_traverseNodesFromStart_direction_randomize_callback___block_invoke;
    v13[3] = &unk_27969D6A0;
    v13[4] = a6;
    _traverse_edges(self, 0, 0, a3, a4, p_randomSeed, v11, v13);
  }
}

- (id)findEdgeFrom:(id)a3 to:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  edges = self->_edges;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__GVGraph_findEdgeFrom_to___block_invoke;
  v7[3] = &unk_27969D6C8;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = &v8;
  [(NSMutableOrderedSet *)edges enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __27__GVGraph_findEdgeFrom_to___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 from];
  if (result == a1[4])
  {
    result = [a2 to];
    if (result == a1[5])
    {
      *(*(a1[6] + 8) + 40) = a2;
      *a4 = 1;
    }
  }

  return result;
}

- (id)findEdgeBetween:(id)a3 and:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  edges = self->_edges;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__GVGraph_findEdgeBetween_and___block_invoke;
  v7[3] = &unk_27969D6C8;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = &v8;
  [(NSMutableOrderedSet *)edges enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __31__GVGraph_findEdgeBetween_and___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 from] == a1[4] && (result = objc_msgSend(a2, "to"), result == a1[5]) || (result = objc_msgSend(a2, "from"), result == a1[5]) && (result = objc_msgSend(a2, "to"), result == a1[4]))
  {
    *(*(a1[6] + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasEdgeFrom:(id)a3 to:(id)a4 reversed:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  LODWORD(v9) = [(NSMutableOrderedSet *)self->_nodes containsObject:?];
  if (v9)
  {
    LODWORD(v9) = [(NSMutableOrderedSet *)self->_nodes containsObject:a4];
    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      edges = self->_edges;
      v9 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v18;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(edges);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            if ([v14 from] == a3 && objc_msgSend(v14, "to") == a4 && objc_msgSend(v14, "reversed") == v5)
            {
              LOBYTE(v9) = 1;
              goto LABEL_15;
            }

            ++v13;
          }

          while (v11 != v13);
          v9 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v17 objects:v21 count:16];
          v11 = v9;
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)hasEdgeBetween:(id)a3 :(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  edges = self->_edges;
  v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ([v11 from] == a3 && objc_msgSend(v11, "to") == a4 || objc_msgSend(v11, "from") == a4 && objc_msgSend(v11, "to") == a3)
        {
          LOBYTE(v7) = 1;
          goto LABEL_14;
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = v7;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)removeEdge:(id)a3
{
  if ([(NSMutableOrderedSet *)self->_edges containsObject:?])
  {
    edges = self->_edges;

    [(NSMutableOrderedSet *)edges removeObject:a3];
  }
}

- (void)reverseEdge:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  [a3 reverse];
  -[NSMutableOrderedSet removeObject:](self->_sourceNodes, "removeObject:", [a3 to]);
  -[NSMutableOrderedSet removeObject:](self->_sinkNodes, "removeObject:", [a3 from]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  edges = self->_edges;
  v6 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(edges);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [a3 to];
        v8 |= v13 == [v12 from];
        v14 = [a3 from];
        v9 |= v14 == [v12 to];
      }

      v7 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    if (v8)
    {
      -[NSMutableOrderedSet removeObject:](self->_sinkNodes, "removeObject:", [a3 to]);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  if ((-[NSMutableOrderedSet containsObject:](self->_sinkNodes, "containsObject:", [a3 to]) & 1) == 0)
  {
    -[NSMutableOrderedSet addObject:](self->_sinkNodes, "addObject:", [a3 to]);
  }

LABEL_13:
  if (v9)
  {
    -[NSMutableOrderedSet removeObject:](self->_sourceNodes, "removeObject:", [a3 from]);
  }

  else if ((-[NSMutableOrderedSet containsObject:](self->_sourceNodes, "containsObject:", [a3 from]) & 1) == 0)
  {
    -[NSMutableOrderedSet addObject:](self->_sourceNodes, "addObject:", [a3 from]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeEdgeFrom:(id)a3 to:(id)a4
{
  v5 = [(GVGraph *)self findEdgeFrom:a3 to:a4];

  [(GVGraph *)self removeEdge:v5];
}

- (int64_t)slackOfEdge:(id)a3
{
  v4 = [objc_msgSend(a3 "from")];
  v5 = [objc_msgSend(a3 "to")];
  v6 = v4 - v5;
  if (v4 - v5 < 0)
  {
    v6 = v5 - v4;
  }

  return v6 - 1;
}

- (int64_t)minimumSlack
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  edges = self->_edges;
  result = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    v7 = 0x7FFFFFFFLL;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(edges);
      }

      result = [(GVGraph *)self slackOfEdge:*(*(&v11 + 1) + 8 * v8)];
      if (result == -1)
      {
        break;
      }

      if (v7 >= result)
      {
        v9 = result;
      }

      else
      {
        v9 = v7;
      }

      if (result > 0)
      {
        v7 = v9;
      }

      if (v5 == ++v8)
      {
        v5 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        if (v7 == 0x7FFFFFFF)
        {
          result = 0;
        }

        else
        {
          result = v7;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (CGRect)bounds
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  nodes = self->_nodes;
  v3 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    v6 = 1.79769313e308;
    v7 = -1.79769313e308;
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(nodes);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        [v11 x];
        if (v9 >= v12)
        {
          v9 = v12;
        }

        [v11 x];
        v14 = v13;
        [v11 w];
        v16 = v14 + v15;
        if (v8 < v16)
        {
          v8 = v16;
        }

        [v11 y];
        if (v6 >= v17)
        {
          v6 = v17;
        }

        [v11 y];
        v19 = v18;
        [v11 h];
        v21 = v19 + v20;
        if (v7 < v21)
        {
          v7 = v21;
        }
      }

      v4 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1.79769313e308;
    v7 = -1.79769313e308;
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
  }

  v22 = *MEMORY[0x277D85DE8];
  v23 = v8 - v9;
  v24 = v7 - v6;
  v25 = v9;
  v26 = v6;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)addNodeGroup:(id)a3 identifier:(id)a4 margins:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    [(NSMutableDictionary *)self->_groups removeObjectForKey:a4, a5.var0, a5.var1, a5.var2, a5.var3];
    if (![a3 count])
    {
      goto LABEL_22;
    }

    memset(v22, 0, sizeof(v22));
    if (!-[NSMutableDictionary countByEnumeratingWithState:objects:count:](self->_groups, "countByEnumeratingWithState:objects:count:", v22, v24, 16) || (v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_groups, "objectForKeyedSubscript:", **(&v22[0] + 1)), ![v8 intersectsSet:a3]) || (objc_msgSend(v8, "isSubsetOfSet:", a3) & 1) != 0 || (objc_msgSend(a3, "isSubsetOfSet:", v8) & 1) != 0)
    {
      [(NSMutableDictionary *)self->_groups setObject:a3 forKey:a4];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [a3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(a3);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            if (([(NSMutableOrderedSet *)self->_nodes containsObject:v13]& 1) == 0)
            {
              [(NSMutableOrderedSet *)self->_nodes addObject:v13];
            }
          }

          v10 = [a3 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }

      goto LABEL_22;
    }

    if ([a3 isEqualToSet:v8])
    {
      if (gvgraph_logger_onceToken != -1)
      {
        [GVGraph addNodeGroup:identifier:margins:];
      }

      v14 = gvgraph_logger_logger;
      if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v26 = "[GVGraph addNodeGroup:identifier:margins:]";
        v15 = "%{public}s Adding a GVNodeGroup with the same contents as an existing group has no effect.";
        goto LABEL_21;
      }
    }

    else
    {
      if (gvgraph_logger_onceToken != -1)
      {
        [GVGraph addNodeGroup:identifier:margins:];
      }

      v17 = gvgraph_logger_logger;
      if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_ERROR))
      {
        [GVGraph addNodeGroup:v17 identifier:? margins:?];
      }
    }
  }

  else
  {
    if (gvgraph_logger_onceToken != -1)
    {
      [GVGraph addEdgeFrom:to:reversed:];
    }

    v14 = gvgraph_logger_logger;
    if (os_log_type_enabled(gvgraph_logger_logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v26 = "[GVGraph addNodeGroup:identifier:margins:]";
      v15 = "%{public}s A unique identifier is required when adding a GVNodeGroup.";
LABEL_21:
      _os_log_impl(&dword_2507D1000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)render:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    v6 = [a3 direction];
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [a3 separation];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 50.0;
    v8 = 50.0;
  }

  v11 = objc_alloc_init(GVLayout);
  [(GVLayout *)v11 doLayout:self direction:v6 separation:v8, v10];
  if ([a3 setCanvasWidth:v12 height:v13])
  {
    [(GVLayout *)v11 render:a3];
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = GVGraph;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ nodeCount=%lu edgeCount=%lu", -[GVGraph description](&v3, sel_description), -[NSMutableOrderedSet count](self->_nodes, "count"), -[NSMutableOrderedSet count](self->_edges, "count")];
}

- (id)debugDescription
{
  v61 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = GVGraph;
  v3 = [(GVGraph *)&v56 description];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  nodes = self->_nodes;
  v5 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        v10 = [*(*(&v52 + 1) + 8 * i) rank];
        if (v7 <= v10)
        {
          v7 = v10;
        }
      }

      v6 = [(NSMutableOrderedSet *)nodes countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v6);
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = self->_nodes;
  v13 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v49;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v48 + 1) + 8 * j) index];
        if (v15 <= v18)
        {
          v15 = v18;
        }
      }

      v14 = [(NSMutableOrderedSet *)v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v14);
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = [v3 stringByAppendingString:@"\n  Nodes:\n\n"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_nodes;
  v21 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v44 + 1) + 8 * k);
        v26 = [objc_msgSend(v20 stringByAppendingString:{@"  ", "stringByAppendingString:", objc_msgSend(v25, "description")}];
        if (!v11)
        {
          v26 = [v26 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @" rank=%lu", objc_msgSend(v25, "rank"))}];
        }

        if (!v19)
        {
          v26 = [v26 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @" index=%lu", objc_msgSend(v25, "index"))}];
        }

        if ([(NSMutableOrderedSet *)self->_sourceNodes containsObject:v25]&& (v27 = [(NSMutableOrderedSet *)self->_sinkNodes containsObject:v25], v28 = @" Solo", (v27 & 1) != 0) || (v29 = [(NSMutableOrderedSet *)self->_sourceNodes containsObject:v25], v28 = @" Source", (v29 & 1) != 0) || (v30 = [(NSMutableOrderedSet *)self->_sinkNodes containsObject:v25], v28 = @" Sink", v30))
        {
          v26 = [v26 stringByAppendingString:v28];
        }

        v20 = [v26 stringByAppendingString:@"\n"];
      }

      v22 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v22);
  }

  v31 = [v20 stringByAppendingString:@"\n  Edges:\n\n"];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  edges = self->_edges;
  v33 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v41;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(edges);
        }

        v31 = [objc_msgSend(objc_msgSend(v31 stringByAppendingString:{@"  ", "stringByAppendingString:", objc_msgSend(*(*(&v40 + 1) + 8 * m), "description")), "stringByAppendingString:", @"\n"}];
      }

      v34 = [(NSMutableOrderedSet *)edges countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v34);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)addNodeGroup:(os_log_t)log identifier:margins:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[GVGraph addNodeGroup:identifier:margins:]";
  _os_log_error_impl(&dword_2507D1000, log, OS_LOG_TYPE_ERROR, "%{public}s Adding a GVNodeGroup with contents that overlap with an existing group is unsupported.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end