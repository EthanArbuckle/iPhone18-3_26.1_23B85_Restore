@interface GVLayout
- (CGSize)doLayout:(id)a3 direction:(int)a4 separation:(CGSize)a5;
- (CGSize)separation;
- (unint64_t)crossings;
- (unint64_t)medianValueOf:(id)a3 withRespectTo:(id)a4;
- (void)_locateCycles:(id)a3 visistedNodes:(id)a4 nodesInStack:(id)a5 reverseList:(id)a6;
- (void)assignCoordinates;
- (void)assignNodeCoordinates;
- (void)assignNodePriorities;
- (void)assignRankCoordinates;
- (void)assignRanks;
- (void)balanceRanks;
- (void)buildRankObjectArray;
- (void)clearNodeState;
- (void)commitOrder;
- (void)dealloc;
- (void)drawAllEdges:(id)a3 of:(id)a4;
- (void)drawAllGroups:(id)a3 of:(id)a4;
- (void)drawAllNodes:(id)a3 of:(id)a4;
- (void)initializeNodeCoordinates;
- (void)initializeOrder;
- (void)initializeRanks;
- (void)insertDummiesBetweenRanks;
- (void)makeFeasibleTree;
- (void)medianPosition:(unint64_t)a3;
- (void)medianSort:(id)a3 withRespectTo:(id)a4;
- (void)orderVertices;
- (void)packCut:(unint64_t)a3;
- (void)removeCycles;
- (void)render:(id)a3;
- (void)restoreOrder;
- (void)saveOrder;
- (void)straighten;
- (void)transpose;
- (void)undoRemoveCycles;
- (void)weightedMedian:(unint64_t)a3;
@end

@implementation GVLayout

- (void)dealloc
{
  savedOrder = self->savedOrder;
  if (savedOrder)
  {
    free(savedOrder);
  }

  [(GVLayout *)self setRanks:0];
  [(GVLayout *)self setGraphOrig:0];
  [(GVLayout *)self setGraphParts:0];
  [(GVLayout *)self setGraphPart:0];
  v4.receiver = self;
  v4.super_class = GVLayout;
  [(GVLayout *)&v4 dealloc];
}

- (void)clearNodeState
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(GVGraph *)self->graphOrig nodes];
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 setRank:0];
        [v7 setIndex:0];
        [v7 setCx:0.0];
        [v7 setCy:0.0];
        [v7 setInPriority:0];
        [v7 setOutPriority:0];
      }

      v4 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (CGSize)doLayout:(id)a3 direction:(int)a4 separation:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v64 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [(GVLayout *)self setGraphOrig:a3];
  -[GVLayout setGraphParts:](self, "setGraphParts:", [MEMORY[0x277CBEB18] array]);
  v10 = [objc_msgSend(a3 "allNodes")];
  while ([v10 count])
  {
    v11 = [v10 firstObject];
    v12 = objc_opt_new();
    [v12 setAllowRedundantEdges:{-[GVGraph allowRedundantEdges](self->graphOrig, "allowRedundantEdges")}];
    [v12 setMinimizeEdgeLengths:{-[GVGraph minimizeEdgeLengths](self->graphOrig, "minimizeEdgeLengths")}];
    [v12 setMinimizeEdgeCrossings:{-[GVGraph minimizeEdgeCrossings](self->graphOrig, "minimizeEdgeCrossings")}];
    [v12 addNode:v11];
    [v10 removeObject:v11];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __42__GVLayout_doLayout_direction_separation___block_invoke;
    v62[3] = &unk_27969D6F0;
    v62[4] = v12;
    v62[5] = v10;
    [a3 traverseEdgesFromStart:v11 callback:v62];
    [v12 setRandomSeed:{objc_msgSend(objc_msgSend(v12, "edges"), "count") + objc_msgSend(objc_msgSend(v12, "nodes"), "count")}];
    [(NSMutableArray *)self->graphParts addObject:v12];
  }

  v13 = malloc_type_calloc([(NSMutableArray *)self->graphParts count], 0x20uLL, 0x1000040E0EAB150uLL);
  [(GVLayout *)self clearNodeState];
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if ([(NSMutableArray *)self->graphParts count])
  {
    v17 = 0;
    do
    {
      [(GVLayout *)self setGraphPart:[(NSMutableArray *)self->graphParts objectAtIndexedSubscript:v17]];
      self->direction = a4;
      self->separation.width = width;
      self->separation.height = height;
      [(NSMutableArray *)[(GVLayout *)self ranks] removeAllObjects];
      [(GVLayout *)self removeCycles];
      [(GVLayout *)self assignRanks];
      [(GVLayout *)self insertDummiesBetweenRanks];
      [(GVLayout *)self orderVertices];
      [(GVLayout *)self assignCoordinates];
      [(GVLayout *)self undoRemoveCycles];
      savedOrder = self->savedOrder;
      if (savedOrder)
      {
        free(savedOrder);
      }

      self->savedOrder = 0;
      [(GVGraph *)[(GVLayout *)self graphPart] bounds];
      v15 = fmax(v15, v19);
      v16 = fmax(v16, v20);
      [(GVLayout *)self setRanks:0];
      ++v17;
    }

    while (v17 < [(NSMutableArray *)self->graphParts count]);
  }

  v21 = 0.0;
  if ([(NSMutableArray *)self->graphParts count])
  {
    v22 = 0;
    v14 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v54 = width;
    v55 = height;
    do
    {
      v56 = v21;
      v57 = v14;
      v25 = [(NSMutableArray *)self->graphParts objectAtIndexedSubscript:v22];
      [v25 bounds];
      v28 = v26;
      v29 = v27;
      v31 = v23 - v30;
      v33 = v24 - v32;
      if (a4)
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 + v16 - v27;
      }

      if (a4 == 3)
      {
        v35 = v31 + v15 - v26;
      }

      else
      {
        v35 = v31;
      }

      v36 = fabs(v34);
      if (fabs(v35) > 2.22044605e-16 || v36 > 2.22044605e-16)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v38 = [v25 nodes];
        v39 = [v38 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v59;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v59 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v58 + 1) + 8 * i);
              [v43 x];
              [v43 setX:v35 + v44];
              [v43 y];
              [v43 setY:v34 + v45];
            }

            v40 = [v38 countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v40);
        }
      }

      v46 = v24 + v29;
      v47 = fmax(v56, v28);
      v48 = v23 + v28;
      v49 = fmax(v57, v29);
      if (a4 <= 1)
      {
        v23 = v23 + v54 + v28;
        v14 = v49;
      }

      else
      {
        v24 = v24 + v55 + v29;
        v14 = v46;
      }

      if (a4 <= 1)
      {
        v21 = v48;
      }

      else
      {
        v21 = v47;
      }

      ++v22;
    }

    while (v22 < [(NSMutableArray *)self->graphParts count]);
  }

  free(v13);
  objc_autoreleasePoolPop(context);
  v50 = *MEMORY[0x277D85DE8];
  v51 = v21;
  v52 = v14;
  result.height = v52;
  result.width = v51;
  return result;
}

uint64_t __42__GVLayout_doLayout_direction_separation___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) addEdgeFrom:objc_msgSend(a2 to:{"from"), objc_msgSend(a2, "to")}];
  [*(a1 + 40) removeObject:a4];
  return 0;
}

- (void)_locateCycles:(id)a3 visistedNodes:(id)a4 nodesInStack:(id)a5 reverseList:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  if (([a4 containsObject:?] & 1) == 0)
  {
    [a4 addObject:a3];
    [a5 addObject:a3];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [(GVGraph *)self->graphPart edges];
    v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if (([a6 containsObject:v16] & 1) == 0 && objc_msgSend(v16, "from") == a3)
          {
            if ([a5 containsObject:{objc_msgSend(v16, "to")}])
            {
              [a6 addObject:v16];
            }

            else if (([a4 containsObject:{objc_msgSend(v16, "to")}] & 1) == 0)
            {
              -[GVLayout _locateCycles:visistedNodes:nodesInStack:reverseList:](self, "_locateCycles:visistedNodes:nodesInStack:reverseList:", [v16 to], a4, a5, a6);
            }
          }
        }

        v13 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [a5 removeObject:a3];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeCycles
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(GVGraph *)self->graphPart edgeCount]>= 2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [(GVGraph *)self->graphPart allNodes];
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 setInteger:-[GVGraph inEdgeCountOf:](self->graphPart forKey:{"inEdgeCountOf:", *(*(&v32 + 1) + 8 * v11)), *(*(&v32 + 1) + 8 * v11)}];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    v12 = [(GVGraph *)self->graphPart allNodes];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __24__GVLayout_removeCycles__block_invoke;
    v31[3] = &unk_27969D718;
    v31[4] = v6;
    v13 = [v12 sortedArrayUsingComparator:v31];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(GVLayout *)self _locateCycles:*(*(&v27 + 1) + 8 * v17++) visistedNodes:v3 nodesInStack:v4 reverseList:v5];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v15);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = [v5 countByEnumeratingWithState:&v23 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v5);
          }

          [(GVGraph *)self->graphPart reverseEdge:*(*(&v23 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v5 countByEnumeratingWithState:&v23 objects:v36 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __24__GVLayout_removeCycles__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) integerForKey:a2];
  v6 = [*(a1 + 32) integerForKey:a3];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)undoRemoveCycles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(GVGraph *)self->graphPart edges];
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) unreverse];
      }

      while (v4 != v6);
      v4 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)assignRanks
{
  [(GVLayout *)self makeFeasibleTree];
  [(GVLayout *)self minimizeCutValues];
  [(GVLayout *)self balanceRanks];

  [(GVLayout *)self buildRankObjectArray];
}

- (void)insertDummiesBetweenRanks
{
  v41 = *MEMORY[0x277D85DE8];
  obj = [MEMORY[0x277CBEB58] set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [(GVGraph *)self->graphPart edges];
  v4 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 "to")];
        if (v9 - [objc_msgSend(v8 "from")] >= 2)
        {
          [obj addObject:v8];
        }
      }

      v5 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * j);
        v12 = [objc_msgSend(v11 "from")];
        v13 = [objc_msgSend(v11 "to")];
        v14 = [v11 from];
        v15 = v12 + 1;
        if (v15 < v13)
        {
          do
          {
            v16 = objc_alloc_init(GVDummyNode);
            v17 = [(NSMutableArray *)self->ranks objectAtIndexedSubscript:v15];
            [v17 sizeForDummy];
            [(GVNode *)v16 setSize:?];
            -[GVGraph addEdgeFrom:to:reversed:](self->graphPart, "addEdgeFrom:to:reversed:", v14, v16, [v11 reversed]);

            [v17 addNode:v16];
            [(GVNode *)v16 setRank:v15++];
            v14 = v16;
          }

          while (v13 != v15);
        }

        -[GVGraph addEdgeFrom:to:reversed:](self->graphPart, "addEdgeFrom:to:reversed:", v14, [v11 to], objc_msgSend(v11, "reversed"));
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v24);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        [(GVGraph *)self->graphPart removeEdge:*(*(&v26 + 1) + 8 * k)];
      }

      v19 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializeRanks
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  v5 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [(GVGraph *)self->graphPart nodes];
  v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        [v11 setRank:0];
        v12 = [(GVGraph *)self->graphPart inDegreeOf:v11];
        [v5 setInteger:v12 forKey:v11];
        if (!v12)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  while ([v4 count])
  {
    v13 = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [(GVGraph *)self->graphPart inNodesOf:v13];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * j);
          v20 = [v13 rank];
          v21 = [v19 rank];
          if (v20 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          else
          {
            v22 = v20;
          }

          [v13 setRank:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v16);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [(GVGraph *)self->graphPart outNodesOf:v13, 0];
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v30 + 1) + 8 * k);
          if (![v5 decrementValueForKey:v28])
          {
            [v4 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v25);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)makeFeasibleTree
{
  v31 = *MEMORY[0x277D85DE8];
  [(GVLayout *)self initializeRanks];
  if ([(GVGraph *)self->graphPart minimizeEdgeLengths])
  {
    if ([(GVGraph *)self->graphPart minimumSlack]>= 1)
    {
      v3 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v27 = __28__GVLayout_makeFeasibleTree__block_invoke;
      v28 = &unk_27969D768;
      v29 = self;
      v4 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] firstObject];
      if (v3)
      {
        v5 = v4;
        for (i = 0; i < v3; i += [v7 count])
        {
          v24 = 0;
          v25 = 0;
          v7 = v27(v26, v5, &v25, &v24);
          if ([v7 count] < v3)
          {
            if (v25)
            {
              v8 = v24 == 0;
            }

            else
            {
              v8 = 1;
            }

            if (v8)
            {
              [GVLayout makeFeasibleTree];
            }

            v9 = [v24 rank];
            v10 = [v25 rank];
            if (v9 - v10 >= 0)
            {
              v11 = v9 - v10;
            }

            else
            {
              v11 = v10 - v9;
            }

            v12 = v11 - 1;
            v13 = [v24 rank];
            v14 = [v25 rank];
            v20 = 0u;
            v21 = 0u;
            if (v13 < v14)
            {
              v12 = 1 - v11;
            }

            v22 = 0uLL;
            v23 = 0uLL;
            v15 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v21;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v21 != v17)
                  {
                    objc_enumerationMutation(v7);
                  }

                  [*(*(&v20 + 1) + 8 * j) setRank:{objc_msgSend(*(*(&v20 + 1) + 8 * j), "rank", v20) + v12}];
                }

                v16 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
              }

              while (v16);
            }

            v5 = v24;
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void *__28__GVLayout_makeFeasibleTree__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CBEB58] set];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0xFFFFFFFFLL;
  [v8 addObject:a2];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__GVLayout_makeFeasibleTree__block_invoke_2;
  v12[3] = &unk_27969D740;
  v12[4] = v9;
  v12[5] = v8;
  v12[6] = v13;
  v12[7] = a3;
  v12[8] = a4;
  [v10 traverseEdgesFromStart:a2 callback:v12];
  _Block_object_dispose(v13, 8);
  return v8;
}

uint64_t __28__GVLayout_makeFeasibleTree__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(*(a1 + 32) + 48) slackOfEdge:a2];
  if (v7)
  {
    v8 = *(*(a1 + 48) + 8);
    if (v7 < *(v8 + 24))
    {
      *(v8 + 24) = v7;
      **(a1 + 56) = a3;
      **(a1 + 64) = a4;
    }

    return 1;
  }

  else
  {
    [*(a1 + 40) addObject:a4];
    return 0;
  }
}

- (void)balanceRanks
{
  v2 = self;
  v98 = *MEMORY[0x277D85DE8];
  if ([(GVGraph *)self->graphPart minimizeEdgeLengths]&& [(GVGraph *)v2->graphPart minimumSlack]>= 1)
  {
    v3 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v4 = [(GVGraph *)v2->graphPart nodes];
    v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v88;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v88 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(*(*(&v87 + 1) + 8 * i), "rank"))}];
        }

        v6 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v6);
    }

    v56 = v3;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = [(GVGraph *)v2->graphPart nodes];
    v61 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v61)
    {
      v59 = *v84;
      do
      {
        v9 = 0;
        do
        {
          if (*v84 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v83 + 1) + 8 * v9);
          v11 = [(GVGraph *)v2->graphPart inNodesOf:v10];
          v12 = [(GVGraph *)v2->graphPart outNodesOf:v10];
          v13 = [v11 count];
          if (v13 == [v12 count])
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v14 = [v11 countByEnumeratingWithState:&v79 objects:v95 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v80;
              v17 = -2147483647;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v80 != v16)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v19 = [*(*(&v79 + 1) + 8 * j) rank];
                  if (v19 + 1 > v17)
                  {
                    v17 = v19 + 1;
                  }
                }

                v15 = [v11 countByEnumeratingWithState:&v79 objects:v95 count:16];
              }

              while (v15);
              if (v13)
              {
LABEL_26:
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v20 = [v12 countByEnumeratingWithState:&v75 objects:v94 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v76;
                  v23 = 0x7FFFFFFFLL;
                  do
                  {
                    for (k = 0; k != v21; ++k)
                    {
                      if (*v76 != v22)
                      {
                        objc_enumerationMutation(v12);
                      }

                      v25 = [*(*(&v75 + 1) + 8 * k) rank];
                      if (v25 - 1 < v23)
                      {
                        v23 = v25 - 1;
                      }
                    }

                    v21 = [v12 countByEnumeratingWithState:&v75 objects:v94 count:16];
                  }

                  while (v21);
                  if (v13)
                  {
                    goto LABEL_36;
                  }

LABEL_49:
                  v23 = [v10 rank];
                }

                else
                {
                  v23 = 0x7FFFFFFFLL;
                  if (!v13)
                  {
                    goto LABEL_49;
                  }
                }

LABEL_36:
                if (v17 != v23)
                {
                  v26 = [v10 rank];
                  v27 = [v56 integerForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v26)}];
                  if (v17 <= v23)
                  {
                    v28 = v27 - 1;
                    do
                    {
                      v29 = [v56 integerForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v17)}];
                      if (v29 < v28)
                      {
                        v28 = v29;
                        v26 = v17;
                      }

                      ++v17;
                    }

                    while (v23 + 1 != v17);
                  }

                  if (v26 != [v10 rank])
                  {
                    [v56 decrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "index"))}];
                    [v10 setRank:v26];
                    [v56 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "index"))}];
                  }
                }

                goto LABEL_44;
              }
            }

            else
            {
              v17 = -2147483647;
              if (v13)
              {
                goto LABEL_26;
              }
            }

            v17 = [v10 rank];
            goto LABEL_26;
          }

LABEL_44:
          ++v9;
        }

        while (v9 != v61);
        v30 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v83 objects:v96 count:16];
        v61 = v30;
      }

      while (v30);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obja = [(GVGraph *)v2->graphPart nodes];
    v62 = [(NSOrderedSet *)obja countByEnumeratingWithState:&v71 objects:v93 count:16];
    if (!v62)
    {
      goto LABEL_93;
    }

    v60 = *v72;
    v55 = v2;
LABEL_53:
    v31 = 0;
    while (1)
    {
      if (*v72 != v60)
      {
        objc_enumerationMutation(obja);
      }

      v32 = *(*(&v71 + 1) + 8 * v31);
      v33 = [(GVGraph *)v2->graphPart inNodesOf:v32];
      v34 = [(GVGraph *)v2->graphPart outNodesOf:v32];
      v35 = [v33 count];
      v36 = [v34 count];
      if (v35 == v36)
      {
        goto LABEL_86;
      }

      v37 = v36;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v38 = [v33 countByEnumeratingWithState:&v67 objects:v92 count:16];
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = *v68;
      v41 = -2147483647;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v68 != v40)
          {
            objc_enumerationMutation(v33);
          }

          v43 = [*(*(&v67 + 1) + 8 * m) rank];
          if (v43 + 1 > v41)
          {
            v41 = v43 + 1;
          }
        }

        v39 = [v33 countByEnumeratingWithState:&v67 objects:v92 count:16];
      }

      while (v39);
      if (!v35)
      {
        goto LABEL_89;
      }

LABEL_67:
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v44 = [v34 countByEnumeratingWithState:&v63 objects:v91 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v64;
        v47 = 0x7FFFFFFFLL;
        do
        {
          for (n = 0; n != v45; ++n)
          {
            if (*v64 != v46)
            {
              objc_enumerationMutation(v34);
            }

            v49 = [*(*(&v63 + 1) + 8 * n) rank];
            if (v49 - 1 < v47)
            {
              v47 = v49 - 1;
            }
          }

          v45 = [v34 countByEnumeratingWithState:&v63 objects:v91 count:16];
        }

        while (v45);
        if (v37)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v47 = 0x7FFFFFFFLL;
        if (v37)
        {
          goto LABEL_77;
        }
      }

      v47 = [v32 rank];
LABEL_77:
      v2 = v55;
      if (v41 != v47)
      {
        v50 = [v32 rank];
        if (v35 >= v37)
        {
          v51 = v50;
        }

        else
        {
          v51 = v47;
        }

        if (v35 <= v37)
        {
          v52 = v51;
        }

        else
        {
          v52 = v41;
        }

        if (v52 != [v32 rank])
        {
          [v56 decrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v32, "index"))}];
          [v32 setRank:v52];
          [v56 incrementValueForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v32, "index"))}];
        }
      }

LABEL_86:
      if (++v31 == v62)
      {
        v53 = [(NSOrderedSet *)obja countByEnumeratingWithState:&v71 objects:v93 count:16];
        v62 = v53;
        if (!v53)
        {
LABEL_93:

          goto LABEL_94;
        }

        goto LABEL_53;
      }
    }

    v41 = -2147483647;
    if (v35)
    {
      goto LABEL_67;
    }

LABEL_89:
    v41 = [v32 rank];
    goto LABEL_67;
  }

LABEL_94:
  v54 = *MEMORY[0x277D85DE8];
}

- (void)buildRankObjectArray
{
  v54 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = [(GVGraph *)self->graphPart nodes];
  v4 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v4)
  {
    v7 = -2147483647;
    v8 = 0x7FFFFFFFLL;
LABEL_15:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = [(GVGraph *)self->graphPart nodes];
    v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v42 + 1) + 8 * i) setRank:{objc_msgSend(*(*(&v42 + 1) + 8 * i), "rank") - v8}];
        }

        v13 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v13);
    }

    v7 -= v8;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = *v47;
  v7 = -2147483647;
  v8 = 0x7FFFFFFFLL;
  do
  {
    for (j = 0; j != v5; ++j)
    {
      if (*v47 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v46 + 1) + 8 * j);
      if ([v10 rank] > v7)
      {
        v7 = [v10 rank];
      }

      if ([v10 rank] < v8)
      {
        v8 = [v10 rank];
      }
    }

    v5 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v46 objects:v53 count:16];
  }

  while (v5);
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_23:
  v16 = v7 + 1;
  self->ranks = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  v17 = objc_opt_class();
  if (self->direction <= 1u)
  {
    v17 = objc_opt_class();
  }

  v18 = v17;
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      v20 = [[v18 alloc] initWithRank:k separation:self->graphPart graph:{self->separation.width, self->separation.height}];
      [(NSMutableArray *)self->ranks addObject:v20];
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  ranks = self->ranks;
  v22 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v39;
    do
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(ranks);
        }

        v24 = *(*(&v38 + 1) + 8 * v26);
        [v27 setNextRank:v24];
        [v24 setPrevRank:v27];
        ++v26;
        v27 = v24;
      }

      while (v23 != v26);
      v23 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  [v24 setNextRank:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = [(GVGraph *)self->graphPart nodes];
  v29 = [(NSOrderedSet *)v28 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [-[NSMutableArray objectAtIndexedSubscript:](self->ranks objectAtIndexedSubscript:{objc_msgSend(*(*(&v34 + 1) + 8 * m), "rank")), "addNode:", *(*(&v34 + 1) + 8 * m)}];
      }

      v30 = [(NSOrderedSet *)v28 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)orderVertices
{
  v21 = *MEMORY[0x277D85DE8];
  [(GVLayout *)self initializeOrder];
  v3 = &v16 - ((8 * [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]+ 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v4 = 0;
    do
    {
      *&v3[8 * v4] = [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v4;
    }

    while (v4 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }

  if ([(GVGraph *)self->graphPart minimizeEdgeCrossings]&& self->currentCrossings)
  {
    for (i = 0; i != 24; ++i)
    {
      [(GVLayout *)self weightedMedian:i];
      [(GVLayout *)self transpose];
    }

    [(GVLayout *)self commitOrder];
    v6 = [(GVLayout *)self crossings];
    if (v6 < self->currentCrossings)
    {
      self->currentCrossings = v6;
      [(GVLayout *)self saveOrder];
    }

    if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
    {
      v7 = 0;
      do
      {
        [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
        ++v7;
      }

      while (v7 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
    }

    for (j = 1; j != 25; ++j)
    {
      [(GVLayout *)self weightedMedian:j];
      [(GVLayout *)self transpose];
    }

    [(GVLayout *)self commitOrder];
    v9 = [(GVLayout *)self crossings];
    if (v9 >= self->currentCrossings)
    {
      [(GVLayout *)self restoreOrder];
    }

    else
    {
      self->currentCrossings = v9;
    }

    [(GVLayout *)self commitOrder];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  ranks = self->ranks;
  v11 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(ranks);
        }

        [*(*(&v16 + 1) + 8 * v14++) buildNodeIterators];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)crossings
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  ranks = self->ranks;
  v3 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(ranks);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) inCrossings];
      }

      v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)saveOrder
{
  if (!self->savedOrder)
  {
    self->savedOrder = malloc_type_malloc(8 * [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count], 0x100004000313F17uLL);
  }

  if ([(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v3 = 0;
    do
    {
      self->savedOrder[v3] = [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v3;
    }

    while (v3 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }
}

- (void)restoreOrder
{
  if (self->savedOrder && [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count])
  {
    v3 = 0;
    do
    {
      [-[NSOrderedSet objectAtIndexedSubscript:](-[GVGraph nodes](self->graphPart "nodes")];
      ++v3;
    }

    while (v3 < [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] count]);
  }
}

- (void)commitOrder
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  ranks = self->ranks;
  v3 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(ranks);
        }

        [*(*(&v8 + 1) + 8 * i) sortByIndex];
      }

      v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initializeOrder
{
  v53 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->ranks count])
  {
    if ([(GVGraph *)self->graphPart minimizeEdgeCrossings])
    {
      v3 = &v32 - ((8 * [(NSMutableArray *)self->ranks count]+ 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v3, 8 * [(NSMutableArray *)self->ranks count]);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __27__GVLayout_initializeOrder__block_invoke;
      v48[3] = &__block_descriptor_40_e16_q16__0__GVNode_8l;
      v48[4] = v3;
      v4 = [(GVLayout *)self crossings];
      self->currentCrossings = v4;
      if (v4)
      {
        v5 = 0;
        while (1)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v6 = [(GVGraph *)self->graphPart nodes];
          v7 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v45;
            do
            {
              v10 = 0;
              do
              {
                if (*v45 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                [*(*(&v44 + 1) + 8 * v10++) setIndex:-1];
              }

              while (v8 != v10);
              v8 = [(NSOrderedSet *)v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v8);
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v11 = [(GVGraph *)self->graphPart sourceNodes];
          v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v41;
            do
            {
              v15 = 0;
              do
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [(GVGraph *)self->graphPart traverseNodesFromStart:*(*(&v40 + 1) + 8 * v15++) direction:0 randomize:1 callback:v48];
              }

              while (v13 != v15);
              v13 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
            }

            while (v13);
          }

          [(GVLayout *)self commitOrder];
          v16 = [(GVLayout *)self crossings];
          if (v16 < self->currentCrossings)
          {
            v17 = v16;
            [(GVLayout *)self saveOrder];
            self->currentCrossings = v17;
            if (!v17)
            {
              break;
            }
          }

          if (++v5 == 10)
          {
            for (i = 0; ; ++i)
            {
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v19 = [(GVGraph *)self->graphPart nodes];
              v20 = [(NSOrderedSet *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v37;
                do
                {
                  v23 = 0;
                  do
                  {
                    if (*v37 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    [*(*(&v36 + 1) + 8 * v23++) setIndex:-1];
                  }

                  while (v21 != v23);
                  v21 = [(NSOrderedSet *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
                }

                while (v21);
              }

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v24 = [(GVGraph *)self->graphPart sinkNodes];
              v25 = [(NSOrderedSet *)v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v33;
                do
                {
                  v28 = 0;
                  do
                  {
                    if (*v33 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    [(GVGraph *)self->graphPart traverseNodesFromStart:*(*(&v32 + 1) + 8 * v28++) direction:1 randomize:1 callback:v48];
                  }

                  while (v26 != v28);
                  v26 = [(NSOrderedSet *)v24 countByEnumeratingWithState:&v32 objects:v49 count:16];
                }

                while (v26);
              }

              [(GVLayout *)self commitOrder];
              v29 = [(GVLayout *)self crossings];
              if (v29 >= self->currentCrossings)
              {
                if (i > 8)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                v30 = v29;
                [(GVLayout *)self saveOrder];
                self->currentCrossings = v30;
                if (!v30 || i >= 9)
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_43:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __27__GVLayout_initializeOrder__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 index] != -1)
  {
    return 1;
  }

  [a2 setIndex:{*(*(a1 + 32) + 8 * objc_msgSend(a2, "rank"))}];
  v5 = *(a1 + 32);
  v6 = [a2 rank];
  result = 0;
  ++*(v5 + 8 * v6);
  return result;
}

- (unint64_t)medianValueOf:(id)a3 withRespectTo:(id)a4
{
  v4 = [a4 neighborsOfNode:a3];
  v5 = [v4 count];
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = v5 >> 1;
  if (v5)
  {
    v10 = [v4 objectAtIndexedSubscript:v7];

    return [v10 index];
  }

  else if (v5 == 2)
  {
    v8 = [objc_msgSend(v4 objectAtIndexedSubscript:{0), "index"}];
    return ([objc_msgSend(v4 objectAtIndexedSubscript:{1), "index"}] + v8) / 2;
  }

  else
  {
    v11 = [objc_msgSend(v4 objectAtIndexedSubscript:{v7 - 1), "index"}];
    v12 = v11 - [objc_msgSend(v4 objectAtIndexedSubscript:{0), "index"}];
    v13 = [objc_msgSend(v4 objectAtIndexedSubscript:{v6 - 1), "index"}];
    v14 = v13 - [objc_msgSend(v4 objectAtIndexedSubscript:{v7), "index"}];
    v15 = [objc_msgSend(v4 objectAtIndexedSubscript:{v7 - 1), "index"}] * v14;
    return (v15 + [objc_msgSend(v4 objectAtIndexedSubscript:{v7), "index"}] * v12) / (v14 + v12);
  }
}

- (void)medianSort:(id)a3 withRespectTo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  if ([a3 count] >= 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v17 + 1) + 8 * v10) setIndex:{-[GVLayout medianValueOf:withRespectTo:](self, "medianValueOf:withRespectTo:", *(*(&v17 + 1) + 8 * v10), a4)}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v11 = [objc_msgSend(a3 "nodes")];
    [v11 sortUsingComparator:&__block_literal_global_2];
    v12 = v11;
    v13 = -1;
    do
    {
      ++v13;
    }

    while ([objc_msgSend(v12 objectAtIndexedSubscript:{v13), "index"}] < 0);
    if ([a3 count])
    {
      v14 = 0;
      do
      {
        if (([objc_msgSend(a3 objectAtIndexedSubscript:{v14), "index"}] & 0x8000000000000000) == 0)
        {
          [objc_msgSend(a3 "nodes")];
        }

        ++v14;
      }

      while (v14 < [a3 count]);
    }

    if ([a3 count])
    {
      v15 = 0;
      do
      {
        [objc_msgSend(a3 objectAtIndexedSubscript:{v15), "setIndex:", v15}];
        ++v15;
      }

      while (v15 < [a3 count]);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)weightedMedian:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v9 = [(NSMutableArray *)self->ranks reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          -[GVLayout medianSort:withRespectTo:](self, "medianSort:withRespectTo:", [*(*(&v15 + 1) + 8 * i) prevRank], *(*(&v15 + 1) + 8 * i));
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    ranks = self->ranks;
    v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(ranks);
          }

          -[GVLayout medianSort:withRespectTo:](self, "medianSort:withRespectTo:", [*(*(&v19 + 1) + 8 * j) nextRank], *(*(&v19 + 1) + 8 * j));
        }

        v6 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transpose
{
  v22 = *MEMORY[0x277D85DE8];
  do
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    ranks = self->ranks;
    v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(ranks);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 count] != 1)
        {
          v10 = 0;
          do
          {
            v11 = [v9 inCrossings];
            v12 = [v9 outCrossings] + v11;
            v13 = v10 + 1;
            [v9 exchangeNodeAtIndex:v10 withNodeAtIndex:v10 + 1];
            v14 = [v9 inCrossings];
            v15 = [v9 outCrossings] + v14;
            v6 = v12 > v15;
            if (v12 <= v15)
            {
              [v9 exchangeNodeAtIndex:v10 + 1 withNodeAtIndex:v10];
            }

            ++v10;
          }

          while (v13 < [v9 count] - 1);
        }
      }

      v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  while (v6);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)assignCoordinates
{
  [(GVLayout *)self assignNodePriorities];
  [(GVLayout *)self assignNodeCoordinates];

  [(GVLayout *)self assignRankCoordinates];
}

- (void)assignNodePriorities
{
  v62 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [(GVGraph *)self->graphPart nodes];
  v34 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v34)
  {
    v32 = *v54;
    do
    {
      v2 = 0;
      do
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v53 + 1) + 8 * v2);
        v4 = [(GVGraph *)self->graphPart inNodesOf:v3];
        v5 = [(GVGraph *)self->graphPart outNodesOf:v3];
        v35 = v3;
        v36 = v2;
        if ([v3 isMemberOfClass:objc_opt_class()])
        {
          v51 = 0uLL;
          v52 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          v6 = [v4 countByEnumeratingWithState:&v49 objects:v60 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = 0;
            v9 = *v50;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v50 != v9)
                {
                  objc_enumerationMutation(v4);
                }

                v11 = [*(*(&v49 + 1) + 8 * i) isMemberOfClass:objc_opt_class()];
                v12 = 2;
                if (v11)
                {
                  v12 = 8;
                }

                v8 += v12;
              }

              v7 = [v4 countByEnumeratingWithState:&v49 objects:v60 count:16];
            }

            while (v7);
          }

          else
          {
            v8 = 0;
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v18 = [v5 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (!v18)
          {
            goto LABEL_51;
          }

          v19 = v18;
          v20 = 0;
          v21 = *v46;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v46 != v21)
              {
                objc_enumerationMutation(v5);
              }

              v23 = [*(*(&v45 + 1) + 8 * j) isMemberOfClass:objc_opt_class()];
              v24 = 2;
              if (v23)
              {
                v24 = 8;
              }

              v20 += v24;
            }

            v19 = [v5 countByEnumeratingWithState:&v45 objects:v59 count:16];
          }

          while (v19);
        }

        else
        {
          v43 = 0uLL;
          v44 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v13 = [v4 countByEnumeratingWithState:&v41 objects:v58 count:16];
          if (v13)
          {
            v14 = v13;
            v8 = 0;
            v15 = *v42;
            do
            {
              for (k = 0; k != v14; ++k)
              {
                if (*v42 != v15)
                {
                  objc_enumerationMutation(v4);
                }

                if ([*(*(&v41 + 1) + 8 * k) isMemberOfClass:objc_opt_class()])
                {
                  v17 = 2;
                }

                else
                {
                  v17 = 1;
                }

                v8 += v17;
              }

              v14 = [v4 countByEnumeratingWithState:&v41 objects:v58 count:16];
            }

            while (v14);
          }

          else
          {
            v8 = 0;
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v25 = [v5 countByEnumeratingWithState:&v37 objects:v57 count:16];
          if (!v25)
          {
LABEL_51:
            v20 = 0;
            goto LABEL_52;
          }

          v26 = v25;
          v20 = 0;
          v27 = *v38;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(v5);
              }

              if ([*(*(&v37 + 1) + 8 * m) isMemberOfClass:objc_opt_class()])
              {
                v29 = 2;
              }

              else
              {
                v29 = 1;
              }

              v20 += v29;
            }

            v26 = [v5 countByEnumeratingWithState:&v37 objects:v57 count:16];
          }

          while (v26);
        }

LABEL_52:
        [v35 setInPriority:v8];
        [v35 setOutPriority:v20];
        v2 = v36 + 1;
      }

      while (v36 + 1 != v34);
      v34 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v34);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)initializeNodeCoordinates
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->direction > 1u)
  {
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    ranks = self->ranks;
    v17 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(ranks);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v22 = [v21 countByEnumeratingWithState:&v30 objects:v46 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v31;
            v25 = 0.0;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = *(*(&v30 + 1) + 8 * j);
                [v27 setY:v25];
                [v27 h];
                v25 = v25 + v28 + self->separation.height;
              }

              v23 = [v21 countByEnumeratingWithState:&v30 objects:v46 count:16];
            }

            while (v23);
          }
        }

        v18 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v3 = self->ranks;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v43;
      do
      {
        for (k = 0; k != v5; ++k)
        {
          if (*v43 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v42 + 1) + 8 * k);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v39;
            v12 = 0.0;
            do
            {
              for (m = 0; m != v10; ++m)
              {
                if (*v39 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v38 + 1) + 8 * m);
                [v14 setX:v12];
                [v14 w];
                v12 = v12 + v15 + self->separation.width;
              }

              v10 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
            }

            while (v10);
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v5);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)medianPosition:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v8 = [(NSMutableArray *)self->ranks reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [objc_msgSend(*(*(&v14 + 1) + 8 * i) "prevRank")];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    ranks = self->ranks;
    v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(ranks);
          }

          [objc_msgSend(*(*(&v18 + 1) + 8 * j) "nextRank")];
        }

        v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)packCut:(unint64_t)a3
{
  v60 = *MEMORY[0x277D85DE8];
  ranks = self->ranks;
  if (a3)
  {
    v22 = [-[NSMutableArray firstObject](ranks "firstObject")];
    if (v22)
    {
      v23 = v22;
      do
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v24 = [v23 reverseObjectEnumerator];
        v25 = [v24 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v53;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v53 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v52 + 1) + 8 * i);
              v30 = [objc_msgSend(v23 "prevRank")];
              if ([v30 count])
              {
                medianPt(v30);
                [v23 centerNode:v29 at:?];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v52 objects:v59 count:16];
          }

          while (v26);
        }

        v23 = [v23 nextRank];
      }

      while (v23);
    }

    v31 = [-[NSMutableArray firstObject](self->ranks "firstObject")];
    if (v31)
    {
      v32 = v31;
      do
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v33 = [v32 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v49;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v49 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v48 + 1) + 8 * j);
              v38 = [objc_msgSend(v32 "prevRank")];
              if ([v38 count])
              {
                medianPt(v38);
                [v32 centerNode:v37 at:?];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v34);
        }

        v32 = [v32 nextRank];
      }

      while (v32);
    }
  }

  else
  {
    v5 = [-[NSMutableArray lastObject](ranks "lastObject")];
    if (v5)
    {
      v6 = v5;
      do
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v7 = [v6 reverseObjectEnumerator];
        v8 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v45;
          do
          {
            for (k = 0; k != v9; ++k)
            {
              if (*v45 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v44 + 1) + 8 * k);
              v13 = [objc_msgSend(v6 "nextRank")];
              if ([v13 count])
              {
                medianPt(v13);
                [v6 centerNode:v12 at:?];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
          }

          while (v9);
        }

        v6 = [v6 prevRank];
      }

      while (v6);
    }

    v14 = [-[NSMutableArray lastObject](self->ranks "lastObject")];
    if (v14)
    {
      v15 = v14;
      do
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v41;
          do
          {
            for (m = 0; m != v17; ++m)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v40 + 1) + 8 * m);
              v21 = [objc_msgSend(v15 "nextRank")];
              if ([v21 count])
              {
                medianPt(v21);
                [v15 centerNode:v20 at:?];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v40 objects:v56 count:16];
          }

          while (v17);
        }

        v15 = [v15 prevRank];
      }

      while (v15);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)straighten
{
  v70 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  ranks = self->ranks;
  v4 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v62;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(ranks);
        }

        v10 = *(*(&v61 + 1) + 8 * i);
        [v10 breadth];
        if (v11 >= v8)
        {
          v8 = v11;
          v6 = v10;
        }
      }

      v5 = [(NSMutableArray *)ranks countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] set];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __22__GVLayout_straighten__block_invoke;
  v60[3] = &unk_27969D7B0;
  v60[4] = self;
  v13 = [(NSSet *)v12 objectsPassingTest:v60];
  v14 = [(NSOrderedSet *)[(GVGraph *)self->graphPart nodes] set];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __22__GVLayout_straighten__block_invoke_2;
  v59[3] = &unk_27969D7B0;
  v59[4] = self;
  v15 = [(NSSet *)v14 objectsPassingTest:v59];
  v16 = [v6 nextRank];
  if (v16)
  {
    v17 = v16;
    do
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v56;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v56 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v55 + 1) + 8 * j);
            if ([(NSSet *)v13 containsObject:v22])
            {
              [objc_msgSend(-[GVGraph inNodesOf:](self->graphPart inNodesOf:{v22), "objectAtIndexedSubscript:", 0), "center"}];
              [v17 centerNode:v22 at:?];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v19);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v23 = [v17 reverseObjectEnumerator];
      v24 = [v23 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v52;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v51 + 1) + 8 * k);
            if ([(NSSet *)v13 containsObject:v28])
            {
              [objc_msgSend(-[GVGraph inNodesOf:](self->graphPart inNodesOf:{v28), "objectAtIndexedSubscript:", 0), "center"}];
              [v17 centerNode:v28 at:?];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v51 objects:v67 count:16];
        }

        while (v25);
      }

      v17 = [v17 nextRank];
    }

    while (v17);
  }

  v29 = [v6 prevRank];
  if (v29)
  {
    v30 = v29;
    do
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v47 objects:v66 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v48;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v48 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v47 + 1) + 8 * m);
            if ([(NSSet *)v15 containsObject:v35])
            {
              [objc_msgSend(-[GVGraph outNodesOf:](self->graphPart outNodesOf:{v35), "objectAtIndexedSubscript:", 0), "center"}];
              [v30 centerNode:v35 at:?];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v47 objects:v66 count:16];
        }

        while (v32);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v36 = [v30 reverseObjectEnumerator];
      v37 = [v36 countByEnumeratingWithState:&v43 objects:v65 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v44;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v44 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v43 + 1) + 8 * n);
            if ([(NSSet *)v15 containsObject:v41])
            {
              [objc_msgSend(-[GVGraph outNodesOf:](self->graphPart outNodesOf:{v41), "objectAtIndexedSubscript:", 0), "center"}];
              [v30 centerNode:v41 at:?];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v43 objects:v65 count:16];
        }

        while (v38);
      }

      v30 = [v30 prevRank];
    }

    while (v30);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)assignNodeCoordinates
{
  [(GVLayout *)self initializeNodeCoordinates];
  for (i = 0; i != 8; ++i)
  {
    [(GVLayout *)self medianPosition:i];
    [(GVLayout *)self packCut:i];
    [(GVLayout *)self straighten];
  }
}

- (void)assignRankCoordinates
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = self->direction - 1;
  ranks = self->ranks;
  if (v3 > 1)
  {
    v5 = [(NSMutableArray *)ranks reverseObjectEnumerator];
  }

  else
  {
    v5 = [(NSMutableArray *)ranks objectEnumerator];
  }

  v6 = v5;
  if (self->direction > 1u)
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v19 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          [v24 length];
          v26 = v25;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v27 = [v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v33;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v33 != v29)
                {
                  objc_enumerationMutation(v24);
                }

                [*(*(&v32 + 1) + 8 * j) setCx:v22 + v26 * 0.5];
              }

              v28 = [v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
            }

            while (v28);
          }

          v22 = v22 + v26 + self->separation.width;
        }

        v20 = [v6 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v7 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      v10 = 0.0;
      do
      {
        for (k = 0; k != v8; ++k)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v44 + 1) + 8 * k);
          [v12 length];
          v14 = v13;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v15 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v41;
            do
            {
              for (m = 0; m != v16; ++m)
              {
                if (*v41 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v40 + 1) + 8 * m) setCy:v10 + v14 * 0.5];
              }

              v16 = [v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
            }

            while (v16);
          }

          v10 = v10 + v14 + self->separation.height;
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v8);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)drawAllNodes:(id)a3 of:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a4 nodes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [a3 drawNode:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)drawAllGroups:(id)a3 of:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [a4 groups];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = [objc_msgSend(a4 "groups")];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        height = v12;
        width = v11;
        y = v10;
        x = v9;
        if (v16)
        {
          v21 = v16;
          v22 = *v32;
          height = v12;
          width = v11;
          y = v10;
          x = v9;
          do
          {
            v23 = 0;
            do
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v31 + 1) + 8 * v23) frame];
              v47.origin.x = v24;
              v47.origin.y = v25;
              v47.size.width = v26;
              v47.size.height = v27;
              v42.origin.x = x;
              v42.origin.y = y;
              v42.size.width = width;
              v42.size.height = height;
              v43 = CGRectUnion(v42, v47);
              x = v43.origin.x;
              y = v43.origin.y;
              width = v43.size.width;
              height = v43.size.height;
              ++v23;
            }

            while (v21 != v23);
            v21 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v21);
        }

        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        if (!CGRectIsEmpty(v44))
        {
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v46 = CGRectInset(v45, self->separation.width / -3.0, self->separation.height / -3.0);
          [a3 drawGroup:v14 frame:{v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}];
        }

        ++v13;
      }

      while (v13 != v7);
      v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)drawAllEdges:(id)a3 of:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = a4;
  obj = [a4 edges];
  v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    v44 = *v50;
    v45 = a3;
    do
    {
      v10 = 0;
      v46 = v8;
      do
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        [(GVEdge *)v11 from];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [(GVEdge *)v11 from];
          v13 = [(GVEdge *)v11 to];
          [v6 removeAllObjects];
          if (objc_opt_respondsToSelector())
          {
            v14 = [a3 direction];
          }

          else
          {
            v14 = 0;
          }

          v15 = 0.0;
          if (![(GVEdge *)v11 redundancyMax])
          {
            goto LABEL_14;
          }

          if (v14 - 2 < 2)
          {
            v18 = [(GVEdge *)v11 redundancy];
            v17 = self->separation.height * 0.25 * (v18 / [(GVEdge *)v11 redundancyMax]+ -0.5);
          }

          else
          {
            if (v14 <= 1)
            {
              v16 = [(GVEdge *)v11 redundancy];
              v15 = self->separation.width * 0.25 * (v16 / [(GVEdge *)v11 redundancyMax]+ -0.5);
            }

LABEL_14:
            v17 = 0.0;
          }

          [(GVNode *)v12 center];
          v20 = v15 + v19;
          [(GVNode *)v12 center];
          v53 = v20;
          v54 = v17 + v21;
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v53, "{CGPoint=dd}")}];
          objc_opt_class();
          while ((objc_opt_isKindOfClass() & 1) != 0)
          {
            v22 = 0.0;
            if (v14 - 2 < 2)
            {
              [(GVNode *)v13 w];
              v29 = v28 * 0.5;
              [(GVNode *)v12 cx];
              v31 = v30;
              [(GVNode *)v13 cx];
              if (v31 > v32)
              {
                v27 = -v29;
              }

              else
              {
                v27 = v29;
              }
            }

            else
            {
              if (v14 <= 1)
              {
                [(GVNode *)v13 h];
                v22 = v23 * 0.5;
                [(GVNode *)v12 cy];
                v25 = v24;
                [(GVNode *)v13 cy];
                if (v25 > v26)
                {
                  v22 = -v22;
                }
              }

              v27 = 0.0;
            }

            [(GVNode *)v13 cx];
            v34 = v15 + v33 - v27;
            [(GVNode *)v13 cy];
            v53 = v34;
            v54 = v17 + v35 - v22;
            [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v53, "{CGPoint=dd}")}];
            [(GVNode *)v13 cx];
            v37 = v27 + v15 + v36;
            [(GVNode *)v13 cy];
            v53 = v37;
            v54 = v22 + v17 + v38;
            [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v53, "{CGPoint=dd}")}];
            v13 = [objc_msgSend(v48 outNodesOf:{v13), "objectAtIndexedSubscript:", 0}];
            v11 = [[GVEdge alloc] initWithFromNode:v12 to:v13 reversed:[(GVEdge *)v11 reversed]];
            objc_opt_class();
          }

          [(GVNode *)v13 center];
          v40 = v15 + v39;
          [(GVNode *)v13 center];
          v53 = v40;
          v54 = v17 + v41;
          [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithBytes:objCType:", &v53, "{CGPoint=dd}")}];
          a3 = v45;
          [v45 drawEdge:v11 withPath:v6];
          v9 = v44;
          v8 = v46;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v8);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)render:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v5 = [a3 drawEdgesFirst];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [(GVLayout *)self drawAllGroups:a3 of:self->graphOrig];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(GVLayout *)self graphParts];
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

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (v5)
        {
          [(GVLayout *)self drawAllEdges:a3 of:v11];
          [(GVLayout *)self drawAllNodes:a3 of:v11];
        }

        else
        {
          [(GVLayout *)self drawAllNodes:a3 of:v11];
          [(GVLayout *)self drawAllEdges:a3 of:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (CGSize)separation
{
  width = self->separation.width;
  height = self->separation.height;
  result.height = height;
  result.width = width;
  return result;
}

@end