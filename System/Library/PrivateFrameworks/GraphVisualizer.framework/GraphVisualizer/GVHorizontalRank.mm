@interface GVHorizontalRank
- (CGSize)sizeForDummy;
- (GVHorizontalRank)initWithRank:(int64_t)a3 separation:(CGSize)a4 graph:(id)a5;
- (double)breadth;
- (double)length;
- (void)centerNode:(id)a3 at:(CGPoint)a4;
- (void)centerNodesWithRespectoTo:(id)a3;
@end

@implementation GVHorizontalRank

- (GVHorizontalRank)initWithRank:(int64_t)a3 separation:(CGSize)a4 graph:(id)a5
{
  width = a4.width;
  v7.receiver = self;
  v7.super_class = GVHorizontalRank;
  result = [(GVRank *)&v7 initWithRank:a3 separation:a5 graph:a4.width, a4.height];
  if (result)
  {
    result->super.separation = width;
  }

  return result;
}

- (double)breadth
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->super.separation * ([(NSMutableArray *)self->super.nodes count]- 1);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = self->super.nodes;
  v5 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(nodes);
        }

        [*(*(&v12 + 1) + 8 * v8) w];
        v3 = v3 + v9;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (double)length
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodes = self->super.nodes;
  v3 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(nodes);
        }

        [*(*(&v11 + 1) + 8 * i) h];
        v6 = fmax(v6, v8);
      }

      v4 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (CGSize)sizeForDummy
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = self->super.nodes;
  v3 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(nodes);
        }

        [*(*(&v12 + 1) + 8 * i) h];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  v10 = 20.0;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)centerNodesWithRespectoTo:(id)a3
{
  v3 = a3;
  v70 = *MEMORY[0x277D85DE8];
  if (self->super.prevRank == a3)
  {
    v5 = &__block_literal_global_72;
  }

  else
  {
    if (self->super.nextRank != a3)
    {
      [GVHorizontalRank centerNodesWithRespectoTo:];
    }

    v5 = &__block_literal_global_74;
  }

  v6 = [(NSMutableArray *)self->super.nodes mutableCopy];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __46__GVHorizontalRank_centerNodesWithRespectoTo___block_invoke_3;
  v68[3] = &unk_27969D678;
  v68[4] = v5;
  [v6 sortUsingComparator:v68];
  v7 = v6;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [v6 reverseObjectEnumerator];
  v63 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v63)
  {
    v8 = *v65;
    v61 = *v65;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        v11 = [v3 neighborsOfNode:v10];
        if ([v11 count])
        {
          v12 = *(v5 + 2);
          v13 = v12(v5, v10);
          v14 = [v11 count];
          if (v14)
          {
            v15 = v3;
            v16 = v14 >> 1;
            if (v14)
            {
              [objc_msgSend(v11 objectAtIndexedSubscript:{v16), "cx"}];
              v20 = v21;
            }

            else
            {
              [objc_msgSend(v11 objectAtIndexedSubscript:{v16 - 1), "cx"}];
              v18 = v17;
              [objc_msgSend(v11 objectAtIndexedSubscript:{v16), "cx"}];
              v20 = (v18 + v19) * 0.5;
            }

            v3 = v15;
            v8 = v61;
          }

          else
          {
            v20 = 0.0;
          }

          [v10 cx];
          v23 = v20 - v22;
          if (v20 - v22 >= 0.0)
          {
            v26 = [v10 next];
            if (v26)
            {
              v27 = v26;
              while (v12(v5, v27) < v13)
              {
                v27 = [v27 next];
                if (!v27)
                {
                  goto LABEL_41;
                }
              }

              [v27 x];
              v44 = v43;
              for (j = v27; ; j = v46)
              {
                v46 = [j prev];
                if (v46 == [v10 prev])
                {
                  break;
                }

                [v46 w];
                v44 = v44 - (v47 + self->super.separation);
              }

              [v10 x];
              v49 = v44 - v48;
              if (v23 >= v49)
              {
                v23 = v49;
              }
            }

LABEL_41:
            [v10 x];
            [v10 setX:v23 + v50];
            if ([v10 next])
            {
              do
              {
                v51 = [v10 next];
                [v51 x];
                v53 = v52;
                [v10 x];
                v55 = v54;
                [v10 w];
                if (v53 >= v55 + v56 + self->super.separation)
                {
                  break;
                }

                [v10 x];
                v58 = v57;
                [v10 w];
                [v51 setX:v58 + v59 + self->super.separation];
                v10 = v51;
              }

              while ([v51 next]);
            }
          }

          else
          {
            v24 = [v10 prev];
            if (v24)
            {
              v25 = v24;
              while (v12(v5, v25) < v13)
              {
                v25 = [v25 prev];
                if (!v25)
                {
                  goto LABEL_32;
                }
              }

              [v25 x];
              for (k = v28; v25 != v10; v25 = [v25 next])
              {
                [v25 w];
                k = k + v30 + self->super.separation;
              }

              [v10 x];
              v32 = k - v31;
              if (v23 < v32)
              {
                v23 = v32;
              }
            }

LABEL_32:
            [v10 x];
            [v10 setX:v23 + v33];
            if ([v10 prev])
            {
              do
              {
                v34 = [v10 prev];
                [v34 x];
                v36 = v35;
                [v10 x];
                v38 = v37 - self->super.separation;
                [v34 w];
                if (v36 <= v38 - v39)
                {
                  break;
                }

                [v10 x];
                v41 = v40 - self->super.separation;
                [v34 w];
                [v34 setX:v41 - v42];
                v10 = v34;
              }

              while ([v34 prev]);
            }
          }
        }
      }

      v63 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v63);
  }

  v60 = *MEMORY[0x277D85DE8];
}

uint64_t __46__GVHorizontalRank_centerNodesWithRespectoTo___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 32) + 16))();
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

- (void)centerNode:(id)a3 at:(CGPoint)a4
{
  x = a4.x;
  [a3 cx];
  v8 = x - v7;
  if (x - v7 >= 0.0)
  {
    v18 = [a3 next];
    if (v18)
    {
      [v18 x];
      v20 = v19;
      [a3 w];
      v22 = v20 - v21 - self->super.separation;
      [a3 x];
      v24 = v22 - v23;
      if (v8 >= v24)
      {
        v17 = v24;
      }

      else
      {
        v17 = v8;
      }

LABEL_10:
      [a3 x];
      v26 = v25 + v17;

      [a3 setX:v26];
      return;
    }
  }

  else
  {
    v9 = [a3 prev];
    if (v9)
    {
      v10 = v9;
      [v9 x];
      v12 = v11;
      [v10 w];
      v14 = v12 + v13 + self->super.separation;
      [a3 x];
      v16 = v14 - v15;
      if (v8 >= v16)
      {
        v17 = v8;
      }

      else
      {
        v17 = v16;
      }

      goto LABEL_10;
    }
  }

  [a3 setCx:x];
}

@end