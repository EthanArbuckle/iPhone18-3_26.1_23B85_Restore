@interface SUUIPageComponent
- (SUUIPageComponent)initWithCustomPageContext:(id)a3;
- (SUUIPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SUUIPageComponent)initWithViewElement:(id)a3;
- (int64_t)componentType;
- (void)_enumerateMissingItemIdentifiersFromBricks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
- (void)_enumerateMissingItemIdentifiersFromLinks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
- (void)_enumerateMissingItemIdentifiersFromLockups:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5;
@end

@implementation SUUIPageComponent

- (SUUIPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v5 = [v4 componentDictionary];
  v6 = [v5 objectForKey:@"startTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pageGenerationTime];
    v8 = v7;
    [v6 doubleValue];
    v10 = v8 < v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 objectForKey:@"endTime"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_8:

    v15 = 0;
    goto LABEL_9;
  }

  [v4 pageGenerationTime];
  v13 = v12;
  [v11 doubleValue];
  if (v13 > v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = SUUIPageComponent;
  v15 = [(SUUIPageComponent *)&v17 init];
LABEL_9:

  return v15;
}

- (SUUIPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = SUUIPageComponent;
  return [(SUUIPageComponent *)&v5 init:a3];
}

- (SUUIPageComponent)initWithViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIPageComponent;
  v6 = [(SUUIPageComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

- (int64_t)componentType
{
  result = self->_viewElement;
  if (result)
  {
    return [result pageComponentType];
  }

  return result;
}

- (void)_enumerateMissingItemIdentifiersFromBricks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v17 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 link];
      v14 = [v13 itemIdentifier];
      if (([v13 isActionable] & 1) == 0 && v14)
      {
        v8[2](v8, v14, a4, &v17);
      }

      v15 = v17;

      objc_autoreleasePoolPop(v11);
      if (v15)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLinks:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v16 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 itemIdentifier];
      if (([v12 isActionable] & 1) == 0 && v13)
      {
        v8[2](v8, v13, a4, &v16);
      }

      v14 = v16;

      objc_autoreleasePoolPop(v11);
      if (v14)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLockups:(id)a3 startIndex:(int64_t)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  if (v9 > a4)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v18 = 0;
      v12 = [v7 objectAtIndex:a4];
      v13 = [v12 itemIdentifier];
      if (v13)
      {
        v14 = v13;
        if ([v12 _needsItemData])
        {
          v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v14];
          v8[2](v8, v15, a4, &v18);
        }
      }

      v16 = v18;

      objc_autoreleasePoolPop(v11);
      if (v16)
      {
        break;
      }
    }

    while (v10 != a4++);
  }
}

@end