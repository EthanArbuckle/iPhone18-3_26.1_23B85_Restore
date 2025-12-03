@interface ICCRTuple
+ (id)tupleWithArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (ICCRTuple)initWithArray:(id)array;
- (ICCRTuple)initWithICCRCoder:(id)coder;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRTuple

+ (id)tupleWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[ICCRTuple alloc] initWithArray:arrayCopy];

  return v4;
}

- (ICCRTuple)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = ICCRTuple;
  v5 = [(ICCRTuple *)&v9 init];
  if (v5)
  {
    v6 = [arrayCopy copy];
    contents = v5->_contents;
    v5->_contents = v6;
  }

  return v5;
}

- (ICCRTuple)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 0];
  v7 = [coderCopy decodeObjectForKey:v6];

  if (v7)
  {
    v8 = 1;
    do
    {
      [v5 addObject:v7];

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v8];
      v7 = [coderCopy decodeObjectForKey:v9];

      ++v8;
    }

    while (v7);
  }

  v10 = [(ICCRTuple *)self initWithArray:v5];

  return v10;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  contents = [(ICCRTuple *)self contents];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ICCRTuple_encodeWithICCRCoder___block_invoke;
  v7[3] = &unk_278197B98;
  v8 = coderCopy;
  v6 = coderCopy;
  [contents enumerateObjectsUsingBlock:v7];
}

void __33__ICCRTuple_encodeWithICCRCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"%ld", a3];
  [v4 encodeObject:v6 forKey:v7];
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE648];
    v10 = @"Invalid merge ICCRTuple, classes must be equal for merge.";
    goto LABEL_6;
  }

  v5 = [withCopy count];
  if (v5 != [(ICCRTuple *)self count])
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE648];
    v10 = @"Invalid merge ICCRTuple, arrays must always have same count.";
LABEL_6:
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  contents = [(ICCRTuple *)self contents];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __23__ICCRTuple_mergeWith___block_invoke;
  v12[3] = &unk_27819A358;
  v13 = withCopy;
  v7 = withCopy;
  [contents enumerateObjectsUsingBlock:v12];
}

void __23__ICCRTuple_mergeWith___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [MEMORY[0x277CBEB68] null];

  if (v5 != v6)
  {
    [v7 mergeWith:v5];
  }
}

- (id)deltaSince:(id)since in:(id)in
{
  v23 = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  inCopy = in;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  contents = [(ICCRTuple *)self contents];
  v10 = [contents countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(contents);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) deltaSince:sinceCopy in:inCopy];
        if (v14)
        {
          [v8 addObject:v14];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [v8 addObject:null];
        }
      }

      v11 = [contents countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [[ICCRTuple alloc] initWithArray:v8];

  return v16;
}

- (void)walkGraph:(id)graph
{
  v15 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contents = [(ICCRTuple *)self contents];
  v6 = [contents countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(contents);
        }

        graphCopy[2](graphCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [contents countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(ICCRTuple *)self contents];
    contents2 = [equalCopy contents];
    v7 = [contents isEqual:contents2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  contents = [(ICCRTuple *)self contents];
  v3 = [contents hash];

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  contents = [(ICCRTuple *)self contents];
  v5 = [contents objectAtIndex:index];

  return v5;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  contents = [(ICCRTuple *)self contents];
  v5 = [contents objectAtIndexedSubscript:subscript];

  return v5;
}

- (unint64_t)count
{
  contents = [(ICCRTuple *)self contents];
  v3 = [contents count];

  return v3;
}

- (NSString)description
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(ICCRTuple *)self count])
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contents = [(ICCRTuple *)self contents];
    v8 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(contents);
          }

          [v6 appendFormat:@"  %@, \n", *(*(&v16 + 1) + 8 * i)];
        }

        v9 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v6 = [v12 stringWithFormat:@"<%@ %p>", v14, self];
  }

  return v6;
}

@end