@interface IKMutableArray
- (IKMutableArray)initWithCapacity:(int64_t)a3;
- (void)_convertToArrayStore;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)insertObject:(id)a3 atIndex:(int64_t)a4;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndex:(int64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)setObject:(id)a3 atIndexedSubscript:(int64_t)a4;
@end

@implementation IKMutableArray

- (IKMutableArray)initWithCapacity:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IKMutableArray;
  result = [(IKMutableArray *)&v5 init];
  if (result)
  {
    result->_expectedCapacity = a3;
  }

  return result;
}

- (void)setObject:(id)a3 atIndexedSubscript:(int64_t)a4
{
  v6 = a3;
  [(IKMutableArray *)self removeObjectAtIndex:a4];
  [(IKMutableArray *)self insertObject:v6 atIndex:a4];
}

- (void)addObject:(id)a3
{
  v4 = a3;
  [(IKMutableArray *)self insertObject:v4 atIndex:[(IKArray *)self count]];
}

- (void)removeObject:(id)a3
{
  v4 = [(IKArray *)self indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(IKMutableArray *)self removeObjectAtIndex:v4];
  }
}

- (void)insertObject:(id)a3 atIndex:(int64_t)a4
{
  v14 = a3;
  if (!v14)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot insert nil object", v13];
    goto LABEL_6;
  }

  if (a4 < 0 || [(IKArray *)self count]< a4)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Index :%ld out of range", a4];
    v8 = LABEL_6:;
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  if ([(IKArray *)self count]== 2)
  {
    [(IKMutableArray *)self _convertToArrayStore];
  }

  v10 = [(IKArray *)self arrayStore];

  if (v10)
  {
    v11 = [(IKArray *)self arrayStore];
    [v11 insertObject:v14 atIndex:a4];
  }

  else if (a4)
  {
    [(IKArray *)self setObj1:v14];
  }

  else
  {
    v12 = [(IKArray *)self obj0];
    [(IKArray *)self setObj1:v12];

    [(IKArray *)self setObj0:v14];
  }
}

- (void)removeObjectAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(IKArray *)self count]<= a3)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE730];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Index :%ld out of range", a3];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    [v8 raise];
  }

  v9 = [(IKArray *)self arrayStore];

  if (v9)
  {
    v10 = [(IKArray *)self arrayStore];
    [v10 removeObjectAtIndex:a3];

    v11 = [(IKArray *)self arrayStore];
    v12 = [v11 count];

    if (v12 == 2)
    {
      v13 = [(IKArray *)self arrayStore];
      v14 = [v13 objectAtIndexedSubscript:0];
      [(IKArray *)self setObj0:v14];

      v15 = [(IKArray *)self arrayStore];
      v16 = [v15 objectAtIndexedSubscript:1];
      [(IKArray *)self setObj1:v16];

      [(IKArray *)self setArrayStore:0];
    }
  }

  else
  {
    if (!a3)
    {
      v17 = [(IKArray *)self obj1];
      [(IKArray *)self setObj0:v17];
    }

    [(IKArray *)self setObj1:0];
  }
}

- (void)addObjectsFromArray:(id)a3
{
  v10 = a3;
  v4 = [v10 obj0];

  if (v4)
  {
    v5 = [v10 obj0];
    [(IKMutableArray *)self addObject:v5];

    v6 = [v10 obj1];

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [v10 obj1];
    [(IKMutableArray *)self addObject:v7];
  }

  else
  {
    v8 = [v10 arrayStore];

    if (!v8)
    {
      goto LABEL_7;
    }

    [(IKMutableArray *)self _convertToArrayStore];
    v7 = [(IKArray *)self arrayStore];
    v9 = [v10 arrayStore];
    [v7 addObjectsFromArray:v9];
  }

LABEL_7:
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 obj0];

  if (v7)
  {
    v8 = [v13 obj0];
    -[IKMutableArray insertObject:atIndex:](self, "insertObject:atIndex:", v8, [v6 firstIndex]);

    v9 = [v13 obj1];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [v13 obj1];
    -[IKMutableArray insertObject:atIndex:](self, "insertObject:atIndex:", v10, [v6 lastIndex]);
  }

  else
  {
    v11 = [v13 arrayStore];

    if (!v11)
    {
      goto LABEL_7;
    }

    [(IKMutableArray *)self _convertToArrayStore];
    v10 = [(IKArray *)self arrayStore];
    v12 = [v13 arrayStore];
    [v10 insertObjects:v12 atIndexes:v6];
  }

LABEL_7:
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v14 = a3;
  v4 = [(IKArray *)self arrayStore];

  if (v4)
  {
    v5 = [(IKArray *)self arrayStore];
    [v5 removeObjectsAtIndexes:v14];

    v6 = [(IKArray *)self arrayStore];
    v7 = [v6 count];

    if (v7 > 2)
    {
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v10 = [(IKArray *)self arrayStore];
      v11 = [v10 objectAtIndexedSubscript:0];
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

      v8 = [(IKArray *)self arrayStore];
      v9 = [v8 objectAtIndexedSubscript:0];
      [(IKArray *)self setObj0:v9];

      v10 = [(IKArray *)self arrayStore];
      v11 = [v10 objectAtIndexedSubscript:1];
      [(IKArray *)self setObj1:v11];
    }

    goto LABEL_12;
  }

  v12 = [v14 lastIndex];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v12; i != 0x7FFFFFFFFFFFFFFFLL; i = [v14 indexLessThanIndex:i])
    {
      [(IKMutableArray *)self removeObjectAtIndex:i];
    }
  }

LABEL_13:
}

- (void)_convertToArrayStore
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(IKMutableArray *)self expectedCapacity];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  v10 = [v3 arrayWithCapacity:v5];
  v6 = [(IKArray *)self obj0];

  if (v6)
  {
    v7 = [(IKArray *)self obj0];
    [v10 addObject:v7];

    [(IKArray *)self setObj0:0];
    v8 = [(IKArray *)self obj1];

    if (v8)
    {
      v9 = [(IKArray *)self obj1];
      [v10 addObject:v9];

      [(IKArray *)self setObj1:0];
    }
  }

  [(IKArray *)self setArrayStore:v10];
}

@end