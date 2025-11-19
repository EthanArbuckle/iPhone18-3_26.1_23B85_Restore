@interface ODIPointIterator
+ (BOOL)addPoint:(id)a3 state:(ODIPointIteratorState *)a4;
+ (BOOL)isPoint:(id)a3 ofType:(int)a4;
+ (id)pointsForSpecification:(id)a3 startingPoint:(id)a4 isLast:(BOOL)a5;
+ (id)processAttributes:(id)a3 startingPoint:(id)a4 isLast:(BOOL)a5;
+ (void)processChildAxisFromPoint:(id)a3 state:(ODIPointIteratorState *)a4;
+ (void)processFollowingSiblingAxisFromPoint:(id)a3 state:(ODIPointIteratorState *)a4;
@end

@implementation ODIPointIterator

+ (id)pointsForSpecification:(id)a3 startingPoint:(id)a4 isLast:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 attributesList];
  v11 = [v10 objectEnumerator];
  v12 = 0;
  while (1)
  {

    v10 = [v11 nextObject];
    if (!v10)
    {
      break;
    }

    v13 = [a1 processAttributes:v10 startingPoint:v9 isLast:v5];
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

+ (id)processAttributes:(id)a3 startingPoint:(id)a4 isLast:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [v8 start];
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v20[0] = [v8 pointType];
  v13 = (v12 - 1);
  v20[1] = [v8 count] + v13;
  v21 = [v8 step];
  v22 = 0;
  v14 = v10;
  v23 = v14;
  v15 = v14;
  if (v21 >= 1)
  {
    v16 = [v8 axis];
    switch(v16)
    {
      case 7:
        [a1 processFollowingSiblingAxisFromPoint:v9 state:v20];
        break;
      case 1:
        [a1 processChildAxisFromPoint:v9 state:v20];
        break;
      case 0:
        [a1 processSelfAxisFromPoint:v9 state:v20];
        break;
    }

    if (v13 && [v14 count] > v13)
    {
      [v14 removeObjectsInRange:{0, v13}];
    }

    if (v5)
    {
      if ([v8 hideLastTransition])
      {
        if ([v14 count])
        {
          v17 = [v14 lastObject];
          v18 = [v17 type];

          if (v18 == 5 || v18 == 3)
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

+ (BOOL)addPoint:(id)a3 state:(ODIPointIteratorState *)a4
{
  v6 = a3;
  if ([a1 isDoneForState:a4])
  {
    v7 = 1;
  }

  else if ([a1 isPoint:v6 ofType:a4->var0])
  {
    var3 = a4->var3;
    if (var3)
    {
      v7 = 0;
      a4->var3 = var3 - 1;
    }

    else
    {
      [a4->var4 addObject:v6];
      a4->var3 = a4->var2 - 1;
      v7 = [a1 isDoneForState:a4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isPoint:(id)a3 ofType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 type];
    v8 = v7 == 3;
    v9 = v7 == 4;
    v10 = v7 == 5;
    if (a4 != 9)
    {
      v10 = 0;
    }

    if (a4 != 8)
    {
      v9 = v10;
    }

    if (a4 != 7)
    {
      v8 = v9;
    }

    v11 = v7 == 0;
    v12 = v7 != 0;
    if (a4 != 6)
    {
      v12 = 0;
    }

    if (a4 != 5)
    {
      v11 = v12;
    }

    if (a4 <= 6)
    {
      v8 = v11;
    }

    v13 = v7 == 2;
    v15 = v7 == 5 || (v7 - 1) < 3;
    v16 = (v7 & 0xFFFFFFFB) == 0;
    if (a4 != 4)
    {
      v16 = 0;
    }

    if (a4 != 3)
    {
      v15 = v16;
    }

    if (a4 != 2)
    {
      v13 = v15;
    }

    v17 = v7 == 1;
    if (a4 != 1)
    {
      v17 = 0;
    }

    if (a4)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if (a4 <= 1)
    {
      v13 = v18;
    }

    if (a4 <= 4)
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

+ (void)processChildAxisFromPoint:(id)a3 state:(ODIPointIteratorState *)a4
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v11 children];
    v7 = [v6 objectEnumerator];

    v8 = 0;
    v9 = 0;
    while ((v8 & 1) == 0)
    {
      v10 = [v7 nextObject];

      if (!v10)
      {
        v9 = 0;
        break;
      }

      v9 = v10;
      v8 = [a1 addPoint:v10 state:a4];
    }
  }
}

+ (void)processFollowingSiblingAxisFromPoint:(id)a3 state:(ODIPointIteratorState *)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 siblingTransition];
    [a1 addPoint:v6 state:a4];
  }
}

@end