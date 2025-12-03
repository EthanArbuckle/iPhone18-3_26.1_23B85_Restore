@interface SUUIPageComponent
- (SUUIPageComponent)initWithCustomPageContext:(id)context;
- (SUUIPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (SUUIPageComponent)initWithViewElement:(id)element;
- (int64_t)componentType;
- (void)_enumerateMissingItemIdentifiersFromBricks:(id)bricks startIndex:(int64_t)index usingBlock:(id)block;
- (void)_enumerateMissingItemIdentifiersFromLinks:(id)links startIndex:(int64_t)index usingBlock:(id)block;
- (void)_enumerateMissingItemIdentifiersFromLockups:(id)lockups startIndex:(int64_t)index usingBlock:(id)block;
@end

@implementation SUUIPageComponent

- (SUUIPageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  componentDictionary = [contextCopy componentDictionary];
  v6 = [componentDictionary objectForKey:@"startTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy pageGenerationTime];
    v8 = v7;
    [v6 doubleValue];
    v10 = v8 < v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [componentDictionary objectForKey:@"endTime"];
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

  [contextCopy pageGenerationTime];
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

- (SUUIPageComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  v5.receiver = self;
  v5.super_class = SUUIPageComponent;
  return [(SUUIPageComponent *)&v5 init:context];
}

- (SUUIPageComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIPageComponent;
  v6 = [(SUUIPageComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
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

- (void)_enumerateMissingItemIdentifiersFromBricks:(id)bricks startIndex:(int64_t)index usingBlock:(id)block
{
  bricksCopy = bricks;
  blockCopy = block;
  v9 = [bricksCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v17 = 0;
      v12 = [bricksCopy objectAtIndex:index];
      link = [v12 link];
      itemIdentifier = [link itemIdentifier];
      if (([link isActionable] & 1) == 0 && itemIdentifier)
      {
        blockCopy[2](blockCopy, itemIdentifier, index, &v17);
      }

      v15 = v17;

      objc_autoreleasePoolPop(v11);
      if (v15)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLinks:(id)links startIndex:(int64_t)index usingBlock:(id)block
{
  linksCopy = links;
  blockCopy = block;
  v9 = [linksCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v16 = 0;
      v12 = [linksCopy objectAtIndex:index];
      itemIdentifier = [v12 itemIdentifier];
      if (([v12 isActionable] & 1) == 0 && itemIdentifier)
      {
        blockCopy[2](blockCopy, itemIdentifier, index, &v16);
      }

      v14 = v16;

      objc_autoreleasePoolPop(v11);
      if (v14)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

- (void)_enumerateMissingItemIdentifiersFromLockups:(id)lockups startIndex:(int64_t)index usingBlock:(id)block
{
  lockupsCopy = lockups;
  blockCopy = block;
  v9 = [lockupsCopy count];
  if (v9 > index)
  {
    v10 = v9 - 1;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v18 = 0;
      v12 = [lockupsCopy objectAtIndex:index];
      itemIdentifier = [v12 itemIdentifier];
      if (itemIdentifier)
      {
        v14 = itemIdentifier;
        if ([v12 _needsItemData])
        {
          v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v14];
          blockCopy[2](blockCopy, v15, index, &v18);
        }
      }

      v16 = v18;

      objc_autoreleasePoolPop(v11);
      if (v16)
      {
        break;
      }
    }

    while (v10 != index++);
  }
}

@end