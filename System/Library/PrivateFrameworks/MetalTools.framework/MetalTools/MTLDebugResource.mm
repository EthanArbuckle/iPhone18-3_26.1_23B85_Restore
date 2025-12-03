@interface MTLDebugResource
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (MTLDebugResource)initWithBaseObject:(id)object;
@end

@implementation MTLDebugResource

- (MTLDebugResource)initWithBaseObject:(id)object
{
  v5.receiver = self;
  v5.super_class = MTLDebugResource;
  result = [(MTLDebugResource *)&v5 init];
  if (result)
  {
    result->_baseObject = object;
  }

  return result;
}

- (BOOL)doesAliasResource:(id)resource
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (![resource heap])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [-[MTLDebugResource baseObject](self "baseObject")];
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (count)
  {
    if (resources)
    {
      v7 = 0;
    }

    else
    {
      _MTLMessageContextPush_();
      v7 = 1;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    v7 = resources == 0;
  }

  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (count)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    _MTLMessageContextEnd();
    if (!count)
    {
      result = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (![resources[v10] heap])
      {
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (count != v10);
    _MTLMessageContextEnd();
  }

  v11 = 0;
  do
  {
    *(&v13 + 8 * v11 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0)) = [resources[v11] baseObject];
    ++v11;
  }

  while (count != v11);
  result = [-[MTLDebugResource baseObject](self "baseObject")];
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (count)
  {
    if (resources)
    {
      v7 = 0;
    }

    else
    {
      _MTLMessageContextPush_();
      v7 = 1;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    v7 = resources == 0;
  }

  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (count)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    _MTLMessageContextEnd();
    if (!count)
    {
      result = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (![resources[v10] heap])
      {
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (count != v10);
    _MTLMessageContextEnd();
  }

  v11 = 0;
  do
  {
    *(&v13 + 8 * v11 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0)) = [resources[v11] baseObject];
    ++v11;
  }

  while (count != v11);
  result = [-[MTLDebugResource baseObject](self "baseObject")];
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end