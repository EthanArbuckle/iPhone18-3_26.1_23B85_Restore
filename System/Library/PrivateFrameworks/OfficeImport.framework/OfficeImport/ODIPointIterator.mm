@interface ODIPointIterator
+ (BOOL)addPoint:(id)point state:(ODIPointIteratorState *)state;
+ (BOOL)isPoint:(id)point ofType:(int)type;
+ (id)pointsForSpecification:(id)specification startingPoint:(id)point isLast:(BOOL)last;
+ (id)processAttributes:(id)attributes startingPoint:(id)point isLast:(BOOL)last;
+ (void)processChildAxisFromPoint:(id)point state:(ODIPointIteratorState *)state;
+ (void)processFollowingSiblingAxisFromPoint:(id)point state:(ODIPointIteratorState *)state;
@end

@implementation ODIPointIterator

+ (id)pointsForSpecification:(id)specification startingPoint:(id)point isLast:(BOOL)last
{
  lastCopy = last;
  specificationCopy = specification;
  pointCopy = point;
  attributesList = [specificationCopy attributesList];
  objectEnumerator = [attributesList objectEnumerator];
  v12 = 0;
  while (1)
  {

    attributesList = [objectEnumerator nextObject];
    if (!attributesList)
    {
      break;
    }

    v13 = [self processAttributes:attributesList startingPoint:pointCopy isLast:lastCopy];
    v14 = v13;
    if (v12)
    {
      [v12 addObjectsFromArray:v13];
    }

    else
    {
      v12 = v13;
    }
  }

  return v12;
}

+ (id)processAttributes:(id)attributes startingPoint:(id)point isLast:(BOOL)last
{
  lastCopy = last;
  attributesCopy = attributes;
  pointCopy = point;
  array = [MEMORY[0x277CBEB18] array];
  start = [attributesCopy start];
  if (start <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = start;
  }

  v20[0] = [attributesCopy pointType];
  v13 = (v12 - 1);
  v20[1] = [attributesCopy count] + v13;
  step = [attributesCopy step];
  v22 = 0;
  v14 = array;
  v23 = v14;
  v15 = v14;
  if (step >= 1)
  {
    axis = [attributesCopy axis];
    switch(axis)
    {
      case 7:
        [self processFollowingSiblingAxisFromPoint:pointCopy state:v20];
        break;
      case 1:
        [self processChildAxisFromPoint:pointCopy state:v20];
        break;
      case 0:
        [self processSelfAxisFromPoint:pointCopy state:v20];
        break;
    }

    if (v13 && [v14 count] > v13)
    {
      [v14 removeObjectsInRange:{0, v13}];
    }

    if (lastCopy)
    {
      if ([attributesCopy hideLastTransition])
      {
        if ([v14 count])
        {
          lastObject = [v14 lastObject];
          type = [lastObject type];

          if (type == 5 || type == 3)
          {
            [v14 removeLastObject];
          }
        }
      }
    }

    v15 = v23;
  }

  return v14;
}

+ (BOOL)addPoint:(id)point state:(ODIPointIteratorState *)state
{
  pointCopy = point;
  if ([self isDoneForState:state])
  {
    v7 = 1;
  }

  else if ([self isPoint:pointCopy ofType:state->var0])
  {
    var3 = state->var3;
    if (var3)
    {
      v7 = 0;
      state->var3 = var3 - 1;
    }

    else
    {
      [state->var4 addObject:pointCopy];
      state->var3 = state->var2 - 1;
      v7 = [self isDoneForState:state];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isPoint:(id)point ofType:(int)type
{
  pointCopy = point;
  v6 = pointCopy;
  if (pointCopy)
  {
    type = [pointCopy type];
    v8 = type == 3;
    v9 = type == 4;
    v10 = type == 5;
    if (type != 9)
    {
      v10 = 0;
    }

    if (type != 8)
    {
      v9 = v10;
    }

    if (type != 7)
    {
      v8 = v9;
    }

    v11 = type == 0;
    v12 = type != 0;
    if (type != 6)
    {
      v12 = 0;
    }

    if (type != 5)
    {
      v11 = v12;
    }

    if (type <= 6)
    {
      v8 = v11;
    }

    v13 = type == 2;
    v15 = type == 5 || (type - 1) < 3;
    v16 = (type & 0xFFFFFFFB) == 0;
    if (type != 4)
    {
      v16 = 0;
    }

    if (type != 3)
    {
      v15 = v16;
    }

    if (type != 2)
    {
      v13 = v15;
    }

    v17 = type == 1;
    if (type != 1)
    {
      v17 = 0;
    }

    if (type)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if (type <= 1)
    {
      v13 = v18;
    }

    if (type <= 4)
    {
      v19 = v13;
    }

    else
    {
      v19 = v8;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)processChildAxisFromPoint:(id)point state:(ODIPointIteratorState *)state
{
  pointCopy = point;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    children = [pointCopy children];
    objectEnumerator = [children objectEnumerator];

    v8 = 0;
    v9 = 0;
    while ((v8 & 1) == 0)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        v9 = 0;
        break;
      }

      v9 = nextObject;
      v8 = [self addPoint:nextObject state:state];
    }
  }
}

+ (void)processFollowingSiblingAxisFromPoint:(id)point state:(ODIPointIteratorState *)state
{
  pointCopy = point;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    siblingTransition = [pointCopy siblingTransition];
    [self addPoint:siblingTransition state:state];
  }
}

@end