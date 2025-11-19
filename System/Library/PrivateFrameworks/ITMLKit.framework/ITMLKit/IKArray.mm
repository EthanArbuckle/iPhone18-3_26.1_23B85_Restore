@interface IKArray
+ (id)array;
- (IKArray)initWithNSArray:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstObject;
- (id)lastObject;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(int64_t)a3;
- (id)objectEnumerator;
- (id)toNSArray;
- (int64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfObject:(id)a3;
- (void)_setupWithNSArray:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation IKArray

+ (id)array
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (IKArray)initWithNSArray:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IKArray;
  v5 = [(IKArray *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IKArray *)v5 _setupWithNSArray:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(IKArray *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v4 = [IKArray alloc];
    v5 = [(IKArray *)self toNSArray];
    v6 = [(IKArray *)v4 initWithNSArray:v5];

    return v6;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [IKMutableArray alloc];
  v5 = [(IKArray *)self toNSArray];
  v6 = [(IKArray *)v4 initWithNSArray:v5];

  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v9 = [(IKArray *)self arrayStore];

  if (v9)
  {
    v10 = [(IKArray *)self arrayStore];
    v11 = [v10 countByEnumeratingWithState:a3 objects:a4 count:a5];

    return v11;
  }

  else
  {
    var0 = a3->var0;
    v14 = [(IKArray *)self count];
    if (v14 - a3->var0 < a5)
    {
      a5 = v14 - a3->var0;
    }

    if (a5)
    {
      v15 = var0;
      v16 = a4;
      v17 = a5;
      do
      {
        *v16++ = [(IKArray *)self objectAtIndex:v15++];
        --v17;
      }

      while (v17);
    }

    a3->var0 = a5 + var0;
    a3->var1 = a4;
    a3->var2 = a3->var3;
    return a5;
  }
}

- (id)objectAtIndex:(int64_t)a3
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
    v11 = [v10 objectAtIndexedSubscript:a3];

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v12 = [(IKArray *)self obj1];
    goto LABEL_10;
  }

  if (!a3)
  {
    v12 = [(IKArray *)self obj0];
LABEL_10:
    v11 = v12;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IKArray *)self arrayStore];
    if (v5)
    {
      v6 = [(IKArray *)self arrayStore];
      v7 = [v6 indexOfObject:v4];
    }

    else
    {
      v6 = [(IKArray *)self obj1];
      if ([v6 isEqual:v4])
      {
        v7 = 1;
      }

      else
      {
        v8 = [(IKArray *)self obj0];
        if ([v8 isEqual:v4])
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
  v3 = [(IKArray *)self arrayStore];
  if (v3)
  {
    v4 = [(IKArray *)self arrayStore];
    v5 = [v4 count];
  }

  else
  {
    v4 = [(IKArray *)self obj1];
    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v6 = [(IKArray *)self obj0];
      v5 = v6 != 0;
    }
  }

  return v5;
}

- (id)firstObject
{
  v3 = [(IKArray *)self obj0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(IKArray *)self arrayStore];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (id)lastObject
{
  v3 = [(IKArray *)self obj1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(IKArray *)self obj0];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(IKArray *)self arrayStore];
      v5 = [v8 lastObject];
    }
  }

  return v5;
}

- (id)objectEnumerator
{
  v2 = [[_IKArrayEnumerator alloc] initWithArray:self];

  return v2;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(IKArray *)self arrayStore];

  if (v5)
  {
    v6 = [(IKArray *)self arrayStore];
    [v6 enumerateObjectsUsingBlock:v4];
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
  v7 = [(IKArray *)self obj0];

  if (!v7 || ([(IKArray *)self obj0], v8 = objc_claimAutoreleasedReturnValue(), v4[2](v4, v8, 0, &v10), v8, (v10 & 1) == 0))
  {
    v9 = [(IKArray *)self obj1];

    if (v9)
    {
      v6 = [(IKArray *)self obj1];
      v4[2](v4, v6, 1, &v10);
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)toNSArray
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [(IKArray *)self arrayStore];
  if (v3)
  {
    v4 = [(IKArray *)self arrayStore];
    v5 = [v4 copy];
    goto LABEL_9;
  }

  v4 = [(IKArray *)self obj1];
  v6 = [(IKArray *)self obj0];
  v7 = v6;
  if (v4)
  {
    v15[0] = v6;
    v8 = [(IKArray *)self obj1];
    v15[1] = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = v15;
    v11 = 2;
  }

  else
  {
    if (!v6)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v8 = [(IKArray *)self obj0];
    v14 = v8;
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

- (void)_setupWithNSArray:(id)a3
{
  v12 = a3;
  v4 = [v12 count];
  if (v4 < 3)
  {
    if (v4 == 2)
    {
      v7 = [v12 objectAtIndexedSubscript:0];
      obj0 = self->_obj0;
      self->_obj0 = v7;

      v5 = [v12 objectAtIndexedSubscript:1];
      v6 = 16;
    }

    else
    {
      v9 = v4 < 1;
      v10 = v12;
      if (v9)
      {
        goto LABEL_8;
      }

      v5 = [v12 objectAtIndexedSubscript:0];
      v6 = 8;
    }
  }

  else
  {
    v5 = [v12 mutableCopy];
    v6 = 24;
  }

  v11 = *(&self->super.isa + v6);
  *(&self->super.isa + v6) = v5;

  v10 = v12;
LABEL_8:
}

@end