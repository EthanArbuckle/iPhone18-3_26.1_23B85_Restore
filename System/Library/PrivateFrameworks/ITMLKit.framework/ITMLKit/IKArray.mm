@interface IKArray
+ (id)array;
- (IKArray)initWithNSArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(int64_t)index;
- (id)objectEnumerator;
- (id)toNSArray;
- (int64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (void)_setupWithNSArray:(id)array;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation IKArray

+ (id)array
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (IKArray)initWithNSArray:(id)array
{
  arrayCopy = array;
  v8.receiver = self;
  v8.super_class = IKArray;
  v5 = [(IKArray *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IKArray *)v5 _setupWithNSArray:arrayCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(IKArray *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v4 = [IKArray alloc];
    toNSArray = [(IKArray *)self toNSArray];
    v6 = [(IKArray *)v4 initWithNSArray:toNSArray];

    return v6;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [IKMutableArray alloc];
  toNSArray = [(IKArray *)self toNSArray];
  v6 = [(IKArray *)v4 initWithNSArray:toNSArray];

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  arrayStore = [(IKArray *)self arrayStore];

  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    v11 = [arrayStore2 countByEnumeratingWithState:state objects:objects count:count];

    return v11;
  }

  else
  {
    var0 = state->var0;
    v14 = [(IKArray *)self count];
    if (v14 - state->var0 < count)
    {
      count = v14 - state->var0;
    }

    if (count)
    {
      v15 = var0;
      objectsCopy = objects;
      countCopy = count;
      do
      {
        *objectsCopy++ = [(IKArray *)self objectAtIndex:v15++];
        --countCopy;
      }

      while (countCopy);
    }

    state->var0 = count + var0;
    state->var1 = objects;
    state->var2 = state->var3;
    return count;
  }
}

- (id)objectAtIndex:(int64_t)index
{
  if (index < 0 || [(IKArray *)self count]<= index)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE730];
    index = [MEMORY[0x277CCACA8] stringWithFormat:@"Index :%ld out of range", index];
    v8 = [v5 exceptionWithName:v6 reason:index userInfo:0];
    [v8 raise];
  }

  arrayStore = [(IKArray *)self arrayStore];
  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    v11 = [arrayStore2 objectAtIndexedSubscript:index];

    goto LABEL_12;
  }

  if (index == 1)
  {
    obj1 = [(IKArray *)self obj1];
    goto LABEL_10;
  }

  if (!index)
  {
    obj1 = [(IKArray *)self obj0];
LABEL_10:
    v11 = obj1;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    arrayStore = [(IKArray *)self arrayStore];
    if (arrayStore)
    {
      arrayStore2 = [(IKArray *)self arrayStore];
      v7 = [arrayStore2 indexOfObject:objectCopy];
    }

    else
    {
      arrayStore2 = [(IKArray *)self obj1];
      if ([arrayStore2 isEqual:objectCopy])
      {
        v7 = 1;
      }

      else
      {
        obj0 = [(IKArray *)self obj0];
        if ([obj0 isEqual:objectCopy])
        {
          v7 = 0;
        }

        else
        {
          v7 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)count
{
  arrayStore = [(IKArray *)self arrayStore];
  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    v5 = [arrayStore2 count];
  }

  else
  {
    arrayStore2 = [(IKArray *)self obj1];
    if (arrayStore2)
    {
      v5 = 2;
    }

    else
    {
      obj0 = [(IKArray *)self obj0];
      v5 = obj0 != 0;
    }
  }

  return v5;
}

- (id)firstObject
{
  obj0 = [(IKArray *)self obj0];
  v4 = obj0;
  if (obj0)
  {
    firstObject = obj0;
  }

  else
  {
    arrayStore = [(IKArray *)self arrayStore];
    firstObject = [arrayStore firstObject];
  }

  return firstObject;
}

- (id)lastObject
{
  obj1 = [(IKArray *)self obj1];
  v4 = obj1;
  if (obj1)
  {
    lastObject = obj1;
  }

  else
  {
    obj0 = [(IKArray *)self obj0];
    v7 = obj0;
    if (obj0)
    {
      lastObject = obj0;
    }

    else
    {
      arrayStore = [(IKArray *)self arrayStore];
      lastObject = [arrayStore lastObject];
    }
  }

  return lastObject;
}

- (id)objectEnumerator
{
  v2 = [[_IKArrayEnumerator alloc] initWithArray:self];

  return v2;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  arrayStore = [(IKArray *)self arrayStore];

  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    [arrayStore2 enumerateObjectsUsingBlock:blockCopy];
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
  obj0 = [(IKArray *)self obj0];

  if (!obj0 || ([(IKArray *)self obj0], v8 = objc_claimAutoreleasedReturnValue(), blockCopy[2](blockCopy, v8, 0, &v10), v8, (v10 & 1) == 0))
  {
    obj1 = [(IKArray *)self obj1];

    if (obj1)
    {
      arrayStore2 = [(IKArray *)self obj1];
      blockCopy[2](blockCopy, arrayStore2, 1, &v10);
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)toNSArray
{
  v15[2] = *MEMORY[0x277D85DE8];
  arrayStore = [(IKArray *)self arrayStore];
  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    v5 = [arrayStore2 copy];
    goto LABEL_9;
  }

  arrayStore2 = [(IKArray *)self obj1];
  obj0 = [(IKArray *)self obj0];
  v7 = obj0;
  if (arrayStore2)
  {
    v15[0] = obj0;
    obj1 = [(IKArray *)self obj1];
    v15[1] = obj1;
    v9 = MEMORY[0x277CBEA60];
    v10 = v15;
    v11 = 2;
  }

  else
  {
    if (!obj0)
    {
      v5 = 0;
      goto LABEL_8;
    }

    obj1 = [(IKArray *)self obj0];
    v14 = obj1;
    v9 = MEMORY[0x277CBEA60];
    v10 = &v14;
    v11 = 1;
  }

  v5 = [v9 arrayWithObjects:v10 count:{v11, v14}];

LABEL_8:
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setupWithNSArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4 < 3)
  {
    if (v4 == 2)
    {
      v7 = [arrayCopy objectAtIndexedSubscript:0];
      obj0 = self->_obj0;
      self->_obj0 = v7;

      v5 = [arrayCopy objectAtIndexedSubscript:1];
      v6 = 16;
    }

    else
    {
      v9 = v4 < 1;
      v10 = arrayCopy;
      if (v9)
      {
        goto LABEL_8;
      }

      v5 = [arrayCopy objectAtIndexedSubscript:0];
      v6 = 8;
    }
  }

  else
  {
    v5 = [arrayCopy mutableCopy];
    v6 = 24;
  }

  v11 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v5;

  v10 = arrayCopy;
LABEL_8:
}

@end