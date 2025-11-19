@interface ODILayoutNode
- (ODILayoutNode)initWithLayoutNode:(id)a3 point:(id)a4;
- (ODILayoutNode)initWithLayoutNode:(id)a3 state:(ODILayoutNodeState *)a4;
- (void)processChoose:(id)a3 state:(ODILayoutNodeState *)a4;
- (void)processForEach:(id)a3 state:(ODILayoutNodeState *)a4;
- (void)processLayoutNode:(id)a3 state:(ODILayoutNodeState *)a4;
- (void)processLayoutObjects:(id)a3 state:(ODILayoutNodeState *)a4;
@end

@implementation ODILayoutNode

- (ODILayoutNode)initWithLayoutNode:(id)a3 point:(id)a4
{
  v9 = a4;
  v10 = 1;
  v6 = v9;
  v7 = [(ODILayoutNode *)self initWithLayoutNode:a3 state:&v9];

  return v7;
}

- (ODILayoutNode)initWithLayoutNode:(id)a3 state:(ODILayoutNodeState *)a4
{
  v6 = a3;
  v7 = [(ODILayoutNode *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mPoint, a4->var0);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v8->mChildren;
    v8->mChildren = v9;

    v11 = [v6 children];
    [(ODILayoutNode *)v8 processLayoutObjects:v11 state:a4];

    v12 = v8;
  }

  return v8;
}

- (void)processLayoutObjects:(id)a3 state:(ODILayoutNodeState *)a4
{
  v8 = a3;
  v6 = [v8 objectEnumerator];
  while (1)
  {
    v7 = [v6 nextObject];
    if (!v7)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ODILayoutNode *)self processLayoutNode:v7 state:a4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ODILayoutNode *)self processChoose:v7 state:a4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ODILayoutNode *)self processForEach:v7 state:a4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ODILayoutNode *)self processAlgorithm:v7 state:a4];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ODILayoutNode *)self processShape:v7 state:a4];
            }
          }
        }
      }
    }
  }
}

- (void)processLayoutNode:(id)a3 state:(ODILayoutNodeState *)a4
{
  v7 = a3;
  v6 = [[ODILayoutNode alloc] initWithLayoutNode:v7 state:a4];
  [(NSMutableArray *)self->mChildren addObject:v6];
}

- (void)processChoose:(id)a3 state:(ODILayoutNodeState *)a4
{
  v6 = [a3 whens];
  v7 = v6;
  if (v6)
  {
    v11 = v6;
    v8 = [v6 count];
    v7 = v11;
    if (v8)
    {
      v9 = [v11 objectAtIndex:0];
      v10 = [v9 children];
      [(ODILayoutNode *)self processLayoutObjects:v10 state:a4];

      v7 = v11;
    }
  }
}

- (void)processForEach:(id)a3 state:(ODILayoutNodeState *)a4
{
  v17 = a3;
  v6 = a4->var0;
  var1 = a4->var1;
  v8 = [v17 iteratorSpecification];
  v9 = [ODIPointIterator pointsForSpecification:v8 startingPoint:v6 isLast:var1];

  v10 = [v9 count];
  v11 = [v17 children];
  if (v10)
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndex:v12];
      var0 = a4->var0;
      a4->var0 = v13;

      a4->var1 = v10 == 1;
      [(ODILayoutNode *)self processLayoutObjects:v11 state:a4];
      ++v12;
      --v10;
    }

    while (v10);
  }

  v15 = a4->var0;
  a4->var0 = v6;
  v16 = v6;

  a4->var1 = var1;
}

@end