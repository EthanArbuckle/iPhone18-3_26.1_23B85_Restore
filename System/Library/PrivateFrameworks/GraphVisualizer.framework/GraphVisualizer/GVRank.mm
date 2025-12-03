@interface GVRank
- (CGSize)sizeForDummy;
- (GVRank)initWithRank:(int64_t)rank separation:(CGSize)separation graph:(id)graph;
- (id)debugDescription;
- (id)neighborsOfNode:(id)node;
- (unint64_t)inCrossings;
- (unint64_t)outCrossings;
- (void)addNode:(id)node;
- (void)buildNodeIterators;
- (void)dealloc;
- (void)exchangeNodeAtIndex:(unint64_t)index withNodeAtIndex:(unint64_t)atIndex;
- (void)removeNode:(id)node;
- (void)sortByIndex;
@end

@implementation GVRank

- (GVRank)initWithRank:(int64_t)rank separation:(CGSize)separation graph:(id)graph
{
  v10.receiver = self;
  v10.super_class = GVRank;
  v7 = [(GVRank *)&v10 init:separation.width];
  v8 = v7;
  if (v7)
  {
    [(GVRank *)v7 setGraph:graph];
    v8->nodes = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->prevRank = 0;
    v8->nextRank = 0;
    v8->rank = rank;
  }

  return v8;
}

- (void)dealloc
{
  [(GVRank *)self setGraph:0];
  [(GVRank *)self setPrevRank:0];
  [(GVRank *)self setNextRank:0];
  [(NSMutableArray *)self->nodes dealloc];
  v3.receiver = self;
  v3.super_class = GVRank;
  [(GVRank *)&v3 dealloc];
}

- (id)debugDescription
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ rank:%ld", -[GVRank description](self, "description"), self->rank];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodes = self->nodes;
  v5 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n  %ld: %@", v3, objc_msgSend(*(*(&v11 + 1) + 8 * v8), "index"), objc_msgSend(*(*(&v11 + 1) + 8 * v8), "debugDescription")];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addNode:(id)node
{
  [(NSMutableArray *)self->nodes addObject:?];
  [node setIndex:{-[NSMutableArray count](self->nodes, "count") - 1}];
  if ([node index])
  {
    v5 = -[NSMutableArray objectAtIndexedSubscript:](self->nodes, "objectAtIndexedSubscript:", [node index] - 1);
  }

  else
  {
    v5 = 0;
  }

  [node setPrev:v5];

  [node setNext:0];
}

- (void)removeNode:(id)node
{
  [(NSMutableArray *)self->nodes removeObject:?];
  if ([node prev])
  {
    [objc_msgSend(node "prev")];
  }

  if ([node next])
  {
    [objc_msgSend(node "next")];
  }

  [node setPrev:0];
  [node setNext:0];
  if ([(NSMutableArray *)self->nodes count])
  {
    v5 = 0;
    do
    {
      [-[NSMutableArray objectAtIndexedSubscript:](self->nodes objectAtIndexedSubscript:{v5), "setIndex:", v5}];
      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->nodes count]);
  }
}

- (id)neighborsOfNode:(id)node
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  nodes = self->nodes;
  v7 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(nodes);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(GVGraph *)self->graph hasEdgeBetween:v11])
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)sortByIndex
{
  [(NSMutableArray *)self->nodes sortUsingComparator:&__block_literal_global_0];
  if ([(NSMutableArray *)self->nodes count])
  {
    v3 = 0;
    do
    {
      [-[NSMutableArray objectAtIndexedSubscript:](self->nodes objectAtIndexedSubscript:{v3), "setIndex:", v3}];
      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->nodes count]);
  }
}

uint64_t __21__GVRank_sortByIndex__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 index];
  if (v5 < [a3 index])
  {
    return -1;
  }

  v7 = [a2 index];
  return v7 > [a3 index];
}

- (void)exchangeNodeAtIndex:(unint64_t)index withNodeAtIndex:(unint64_t)atIndex
{
  v7 = [(NSMutableArray *)self->nodes objectAtIndexedSubscript:?];
  v8 = [(NSMutableArray *)self->nodes objectAtIndexedSubscript:atIndex];
  [v7 setIndex:atIndex];
  [(NSMutableArray *)self->nodes setObject:v7 atIndexedSubscript:atIndex];
  [v8 setIndex:index];
  nodes = self->nodes;

  [(NSMutableArray *)nodes setObject:v8 atIndexedSubscript:index];
}

- (void)buildNodeIterators
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  nodes = self->nodes;
  v3 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(nodes);
        }

        v5 = *(*(&v10 + 1) + 8 * v7);
        [v8 setNext:v5];
        [v5 setPrev:v8];
        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  [v5 setNext:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)inCrossings
{
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  if ([(GVRank *)self count]>= 2 && [(GVRank *)selfCopy count])
  {
    v3 = 0;
    v4 = 0;
    v22 = selfCopy;
    do
    {
      obj = [(GVGraph *)selfCopy->graph inNodesOf:[(NSMutableArray *)selfCopy->nodes objectAtIndexedSubscript:v4]];
      v5 = v4 + 1;
      v20 = v5;
      if (v5 < [(GVRank *)selfCopy count])
      {
        do
        {
          v23 = v5;
          v6 = [(GVGraph *)selfCopy->graph inNodesOf:[(NSMutableArray *)selfCopy->nodes objectAtIndexedSubscript:v5, v20]];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v30;
            do
            {
              v10 = 0;
              do
              {
                if (*v30 != v9)
                {
                  objc_enumerationMutation(obj);
                }

                v11 = *(*(&v29 + 1) + 8 * v10);
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                v12 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v26;
                  do
                  {
                    v15 = 0;
                    do
                    {
                      if (*v26 != v14)
                      {
                        objc_enumerationMutation(v6);
                      }

                      index = [*(*(&v25 + 1) + 8 * v15) index];
                      if (index < [v11 index])
                      {
                        ++v3;
                      }

                      ++v15;
                    }

                    while (v13 != v15);
                    v13 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
                  }

                  while (v13);
                }

                ++v10;
              }

              while (v10 != v8);
              v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
            }

            while (v8);
          }

          selfCopy = v22;
          v5 = v23 + 1;
        }

        while (v23 + 1 < [(GVRank *)v22 count]);
      }

      v17 = [(GVRank *)selfCopy count];
      v4 = v21;
    }

    while (v21 < v17);
  }

  else
  {
    v3 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)outCrossings
{
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  if ([(GVRank *)self count]>= 2 && [(GVRank *)selfCopy count])
  {
    v3 = 0;
    v4 = 0;
    v22 = selfCopy;
    do
    {
      obj = [(GVGraph *)selfCopy->graph outNodesOf:[(NSMutableArray *)selfCopy->nodes objectAtIndexedSubscript:v4]];
      v5 = v4 + 1;
      v20 = v5;
      if (v5 < [(GVRank *)selfCopy count])
      {
        do
        {
          v23 = v5;
          v6 = [(GVGraph *)selfCopy->graph outNodesOf:[(NSMutableArray *)selfCopy->nodes objectAtIndexedSubscript:v5, v20]];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v30;
            do
            {
              v10 = 0;
              do
              {
                if (*v30 != v9)
                {
                  objc_enumerationMutation(obj);
                }

                v11 = *(*(&v29 + 1) + 8 * v10);
                v25 = 0u;
                v26 = 0u;
                v27 = 0u;
                v28 = 0u;
                v12 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v26;
                  do
                  {
                    v15 = 0;
                    do
                    {
                      if (*v26 != v14)
                      {
                        objc_enumerationMutation(v6);
                      }

                      index = [*(*(&v25 + 1) + 8 * v15) index];
                      if (index < [v11 index])
                      {
                        ++v3;
                      }

                      ++v15;
                    }

                    while (v13 != v15);
                    v13 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
                  }

                  while (v13);
                }

                ++v10;
              }

              while (v10 != v8);
              v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
            }

            while (v8);
          }

          selfCopy = v22;
          v5 = v23 + 1;
        }

        while (v23 + 1 < [(GVRank *)v22 count]);
      }

      v17 = [(GVRank *)selfCopy count];
      v4 = v21;
    }

    while (v21 < v17);
  }

  else
  {
    v3 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CGSize)sizeForDummy
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end