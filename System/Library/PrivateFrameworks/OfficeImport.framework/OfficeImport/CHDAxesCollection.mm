@interface CHDAxesCollection
- (id)axesAtPosition:(int)position;
- (id)axisAtPosition:(int)position;
- (void)adjustAxesPositionForHorizontalChart;
@end

@implementation CHDAxesCollection

- (void)adjustAxesPositionForHorizontalChart
{
  v3 = [(EDCollection *)self count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(EDCollection *)self objectAtIndex:i];
      [v6 adjustAxisPositionForHorizontalChart];
    }
  }
}

- (id)axesAtPosition:(int)position
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(EDCollection *)self count];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [(EDCollection *)self objectAtIndex:i];
      if ([v8 axisPosition] == position)
      {
        [array addObject:v8];
      }
    }
  }

  return array;
}

- (id)axisAtPosition:(int)position
{
  v5 = [(CHDAxesCollection *)self axesAtPosition:?];
  v6 = [v5 count];
  v7 = position & 0xFFFFFFFE;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [v5 objectAtIndex:v8];

      if ((((v7 == 2) ^ [v10 isSecondary]) & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 = v10;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    v12 = v5;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_7:
  if (position >= 4)
  {
    positionCopy = position;
  }

  else
  {
    positionCopy = (3 - position);
  }

  v12 = [(CHDAxesCollection *)self axesAtPosition:positionCopy];

  v13 = 0;
  v14 = [v12 count];
  if (v14)
  {
    while (1)
    {
      v15 = [v12 objectAtIndex:v13];

      if ((((v7 == 2) ^ [v15 isSecondary]) & 1) == 0)
      {
        break;
      }

      ++v13;
      v10 = v15;
      if (v14 == v13)
      {
        v13 = 0;
        v10 = v15;
        goto LABEL_17;
      }
    }

    v10 = v15;
LABEL_16:
    v10 = v10;
    v13 = v10;
  }

LABEL_17:

  return v13;
}

@end