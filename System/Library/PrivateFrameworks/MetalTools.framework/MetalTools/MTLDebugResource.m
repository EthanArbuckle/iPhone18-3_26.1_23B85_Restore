@interface MTLDebugResource
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (MTLDebugResource)initWithBaseObject:(id)a3;
@end

@implementation MTLDebugResource

- (MTLDebugResource)initWithBaseObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = MTLDebugResource;
  result = [(MTLDebugResource *)&v5 init];
  if (result)
  {
    result->_baseObject = a3;
  }

  return result;
}

- (BOOL)doesAliasResource:(id)a3
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (![a3 heap])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return [-[MTLDebugResource baseObject](self "baseObject")];
}

- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (a4)
  {
    if (a3)
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
    v7 = a3 == 0;
  }

  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (a4)
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
    if (!a4)
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
      if (![a3[v10] heap])
      {
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (a4 != v10);
    _MTLMessageContextEnd();
  }

  v11 = 0;
  do
  {
    *(&v13 + 8 * v11 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0)) = [a3[v11] baseObject];
    ++v11;
  }

  while (a4 != v11);
  result = [-[MTLDebugResource baseObject](self "baseObject")];
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4
{
  [-[MTLDebugResource baseObject](self baseObject];
  _MTLMessageContextBegin_();
  if (a4)
  {
    if (a3)
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
    v7 = a3 == 0;
  }

  if (![-[MTLDebugResource baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (a4)
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
    if (!a4)
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
      if (![a3[v10] heap])
      {
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (a4 != v10);
    _MTLMessageContextEnd();
  }

  v11 = 0;
  do
  {
    *(&v13 + 8 * v11 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0)) = [a3[v11] baseObject];
    ++v11;
  }

  while (a4 != v11);
  result = [-[MTLDebugResource baseObject](self "baseObject")];
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end