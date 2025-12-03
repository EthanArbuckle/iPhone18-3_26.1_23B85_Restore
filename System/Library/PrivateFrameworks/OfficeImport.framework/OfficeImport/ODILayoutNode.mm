@interface ODILayoutNode
- (ODILayoutNode)initWithLayoutNode:(id)node point:(id)point;
- (ODILayoutNode)initWithLayoutNode:(id)node state:(ODILayoutNodeState *)state;
- (void)processChoose:(id)choose state:(ODILayoutNodeState *)state;
- (void)processForEach:(id)each state:(ODILayoutNodeState *)state;
- (void)processLayoutNode:(id)node state:(ODILayoutNodeState *)state;
- (void)processLayoutObjects:(id)objects state:(ODILayoutNodeState *)state;
@end

@implementation ODILayoutNode

- (ODILayoutNode)initWithLayoutNode:(id)node point:(id)point
{
  pointCopy = point;
  v10 = 1;
  v6 = pointCopy;
  v7 = [(ODILayoutNode *)self initWithLayoutNode:node state:&pointCopy];

  return v7;
}

- (ODILayoutNode)initWithLayoutNode:(id)node state:(ODILayoutNodeState *)state
{
  nodeCopy = node;
  v7 = [(ODILayoutNode *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->mPoint, state->var0);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v8->mChildren;
    v8->mChildren = v9;

    children = [nodeCopy children];
    [(ODILayoutNode *)v8 processLayoutObjects:children state:state];

    v12 = v8;
  }

  return v8;
}

- (void)processLayoutObjects:(id)objects state:(ODILayoutNodeState *)state
{
  objectsCopy = objects;
  objectEnumerator = [objectsCopy objectEnumerator];
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ODILayoutNode *)self processLayoutNode:nextObject state:state];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ODILayoutNode *)self processChoose:nextObject state:state];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ODILayoutNode *)self processForEach:nextObject state:state];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ODILayoutNode *)self processAlgorithm:nextObject state:state];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ODILayoutNode *)self processShape:nextObject state:state];
            }
          }
        }
      }
    }
  }
}

- (void)processLayoutNode:(id)node state:(ODILayoutNodeState *)state
{
  nodeCopy = node;
  v6 = [[ODILayoutNode alloc] initWithLayoutNode:nodeCopy state:state];
  [(NSMutableArray *)self->mChildren addObject:v6];
}

- (void)processChoose:(id)choose state:(ODILayoutNodeState *)state
{
  whens = [choose whens];
  v7 = whens;
  if (whens)
  {
    v11 = whens;
    v8 = [whens count];
    v7 = v11;
    if (v8)
    {
      v9 = [v11 objectAtIndex:0];
      children = [v9 children];
      [(ODILayoutNode *)self processLayoutObjects:children state:state];

      v7 = v11;
    }
  }
}

- (void)processForEach:(id)each state:(ODILayoutNodeState *)state
{
  eachCopy = each;
  v6 = state->var0;
  var1 = state->var1;
  iteratorSpecification = [eachCopy iteratorSpecification];
  v9 = [ODIPointIterator pointsForSpecification:iteratorSpecification startingPoint:v6 isLast:var1];

  v10 = [v9 count];
  children = [eachCopy children];
  if (v10)
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndex:v12];
      var0 = state->var0;
      state->var0 = v13;

      state->var1 = v10 == 1;
      [(ODILayoutNode *)self processLayoutObjects:children state:state];
      ++v12;
      --v10;
    }

    while (v10);
  }

  v15 = state->var0;
  state->var0 = v6;
  v16 = v6;

  state->var1 = var1;
}

@end