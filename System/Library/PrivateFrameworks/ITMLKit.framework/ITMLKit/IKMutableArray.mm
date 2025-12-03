@interface IKMutableArray
- (IKMutableArray)initWithCapacity:(int64_t)capacity;
- (void)_convertToArrayStore;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)insertObject:(id)object atIndex:(int64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(int64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)setObject:(id)object atIndexedSubscript:(int64_t)subscript;
@end

@implementation IKMutableArray

- (IKMutableArray)initWithCapacity:(int64_t)capacity
{
  v5.receiver = self;
  v5.super_class = IKMutableArray;
  result = [(IKMutableArray *)&v5 init];
  if (result)
  {
    result->_expectedCapacity = capacity;
  }

  return result;
}

- (void)setObject:(id)object atIndexedSubscript:(int64_t)subscript
{
  objectCopy = object;
  [(IKMutableArray *)self removeObjectAtIndex:subscript];
  [(IKMutableArray *)self insertObject:objectCopy atIndex:subscript];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(IKMutableArray *)self insertObject:objectCopy atIndex:[(IKArray *)self count]];
}

- (void)removeObject:(id)object
{
  v4 = [(IKArray *)self indexOfObject:object];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(IKMutableArray *)self removeObjectAtIndex:v4];
  }
}

- (void)insertObject:(id)object atIndex:(int64_t)index
{
  objectCopy = object;
  if (!objectCopy)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot insert nil object", v13];
    goto LABEL_6;
  }

  if (index < 0 || [(IKArray *)self count]< index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Index :%ld out of range", index];
    v8 = LABEL_6:;
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  if ([(IKArray *)self count]== 2)
  {
    [(IKMutableArray *)self _convertToArrayStore];
  }

  arrayStore = [(IKArray *)self arrayStore];

  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    [arrayStore2 insertObject:objectCopy atIndex:index];
  }

  else if (index)
  {
    [(IKArray *)self setObj1:objectCopy];
  }

  else
  {
    obj0 = [(IKArray *)self obj0];
    [(IKArray *)self setObj1:obj0];

    [(IKArray *)self setObj0:objectCopy];
  }
}

- (void)removeObjectAtIndex:(int64_t)index
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
    [arrayStore2 removeObjectAtIndex:index];

    arrayStore3 = [(IKArray *)self arrayStore];
    v12 = [arrayStore3 count];

    if (v12 == 2)
    {
      arrayStore4 = [(IKArray *)self arrayStore];
      v14 = [arrayStore4 objectAtIndexedSubscript:0];
      [(IKArray *)self setObj0:v14];

      arrayStore5 = [(IKArray *)self arrayStore];
      v16 = [arrayStore5 objectAtIndexedSubscript:1];
      [(IKArray *)self setObj1:v16];

      [(IKArray *)self setArrayStore:0];
    }
  }

  else
  {
    if (!index)
    {
      obj1 = [(IKArray *)self obj1];
      [(IKArray *)self setObj0:obj1];
    }

    [(IKArray *)self setObj1:0];
  }
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  obj0 = [arrayCopy obj0];

  if (obj0)
  {
    obj02 = [arrayCopy obj0];
    [(IKMutableArray *)self addObject:obj02];

    obj1 = [arrayCopy obj1];

    if (!obj1)
    {
      goto LABEL_7;
    }

    obj12 = [arrayCopy obj1];
    [(IKMutableArray *)self addObject:obj12];
  }

  else
  {
    arrayStore = [arrayCopy arrayStore];

    if (!arrayStore)
    {
      goto LABEL_7;
    }

    [(IKMutableArray *)self _convertToArrayStore];
    obj12 = [(IKArray *)self arrayStore];
    arrayStore2 = [arrayCopy arrayStore];
    [obj12 addObjectsFromArray:arrayStore2];
  }

LABEL_7:
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  objectsCopy = objects;
  indexesCopy = indexes;
  obj0 = [objectsCopy obj0];

  if (obj0)
  {
    obj02 = [objectsCopy obj0];
    -[IKMutableArray insertObject:atIndex:](self, "insertObject:atIndex:", obj02, [indexesCopy firstIndex]);

    obj1 = [objectsCopy obj1];

    if (!obj1)
    {
      goto LABEL_7;
    }

    obj12 = [objectsCopy obj1];
    -[IKMutableArray insertObject:atIndex:](self, "insertObject:atIndex:", obj12, [indexesCopy lastIndex]);
  }

  else
  {
    arrayStore = [objectsCopy arrayStore];

    if (!arrayStore)
    {
      goto LABEL_7;
    }

    [(IKMutableArray *)self _convertToArrayStore];
    obj12 = [(IKArray *)self arrayStore];
    arrayStore2 = [objectsCopy arrayStore];
    [obj12 insertObjects:arrayStore2 atIndexes:indexesCopy];
  }

LABEL_7:
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  arrayStore = [(IKArray *)self arrayStore];

  if (arrayStore)
  {
    arrayStore2 = [(IKArray *)self arrayStore];
    [arrayStore2 removeObjectsAtIndexes:indexesCopy];

    arrayStore3 = [(IKArray *)self arrayStore];
    v7 = [arrayStore3 count];

    if (v7 > 2)
    {
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      arrayStore4 = [(IKArray *)self arrayStore];
      v11 = [arrayStore4 objectAtIndexedSubscript:0];
      [(IKArray *)self setObj0:v11];
    }

    else
    {
      if (v7 != 2)
      {
LABEL_12:
        [(IKArray *)self setArrayStore:0];
        goto LABEL_13;
      }

      arrayStore5 = [(IKArray *)self arrayStore];
      v9 = [arrayStore5 objectAtIndexedSubscript:0];
      [(IKArray *)self setObj0:v9];

      arrayStore4 = [(IKArray *)self arrayStore];
      v11 = [arrayStore4 objectAtIndexedSubscript:1];
      [(IKArray *)self setObj1:v11];
    }

    goto LABEL_12;
  }

  lastIndex = [indexesCopy lastIndex];
  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indexesCopy indexLessThanIndex:i])
    {
      [(IKMutableArray *)self removeObjectAtIndex:i];
    }
  }

LABEL_13:
}

- (void)_convertToArrayStore
{
  v3 = MEMORY[0x277CBEB18];
  expectedCapacity = [(IKMutableArray *)self expectedCapacity];
  if (expectedCapacity)
  {
    v5 = expectedCapacity;
  }

  else
  {
    v5 = 2;
  }

  v10 = [v3 arrayWithCapacity:v5];
  obj0 = [(IKArray *)self obj0];

  if (obj0)
  {
    obj02 = [(IKArray *)self obj0];
    [v10 addObject:obj02];

    [(IKArray *)self setObj0:0];
    obj1 = [(IKArray *)self obj1];

    if (obj1)
    {
      obj12 = [(IKArray *)self obj1];
      [v10 addObject:obj12];

      [(IKArray *)self setObj1:0];
    }
  }

  [(IKArray *)self setArrayStore:v10];
}

@end