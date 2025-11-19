@interface _MSPQueryState
- (_MSPQueryState)initWithContainerContents:(id)a3;
- (_MSPQueryState)initWithContents:(id)a3 identifiers:(id)a4;
- (id)stateByDeletingObjectAtIndex:(unint64_t)a3;
- (id)stateByDeletingObjectsAtIndexes:(id)a3;
- (id)stateByInvokingPreprocessingBlock:(id)a3 mappingBlock:(id)a4;
- (id)stateByMovingObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
@end

@implementation _MSPQueryState

- (_MSPQueryState)initWithContainerContents:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _MSPQueryState;
  v5 = [(_MSPQueryState *)&v20 init];
  if (v5)
  {
    v6 = [v4 copy];
    contents = v5->_contents;
    v5->_contents = v6;

    v8 = v4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * v14) storageIdentifier];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (_MSPQueryState)initWithContents:(id)a3 identifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _MSPQueryState;
  v8 = [(_MSPQueryState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    contents = v8->_contents;
    v8->_contents = v9;

    v11 = [v7 copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v11;
  }

  return v8;
}

- (id)stateByInvokingPreprocessingBlock:(id)a3 mappingBlock:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(_MSPQueryState *)self contents];
    v24 = v6[2](v6, v8);
  }

  else
  {
    v24 = 0;
  }

  v20 = v6;
  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(_MSPQueryState *)self contents];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = v7[2](v7, *(*(&v25 + 1) + 8 * i), v24);
        if (v14)
        {
          v15 = [(_MSPQueryState *)self identifiers];
          v16 = [v15 objectAtIndexedSubscript:v11];

          [v23 addObject:v14];
          [v22 addObject:v16];
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v17 = [objc_alloc(objc_opt_class()) initWithContents:v23 identifiers:v22];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)stateByDeletingObjectAtIndex:(unint64_t)a3
{
  v5 = [(_MSPQueryState *)self contents];
  v6 = [v5 mutableCopy];

  v7 = [(_MSPQueryState *)self identifiers];
  v8 = [v7 mutableCopy];

  [v6 removeObjectAtIndex:a3];
  [v8 removeObjectAtIndex:a3];
  v9 = [objc_alloc(objc_opt_class()) initWithContents:v6 identifiers:v8];

  return v9;
}

- (id)stateByDeletingObjectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(_MSPQueryState *)self contents];
  v6 = [v5 mutableCopy];

  v7 = [(_MSPQueryState *)self identifiers];
  v8 = [v7 mutableCopy];

  [v6 removeObjectsAtIndexes:v4];
  [v8 removeObjectsAtIndexes:v4];

  v9 = [objc_alloc(objc_opt_class()) initWithContents:v6 identifiers:v8];

  return v9;
}

- (id)stateByMovingObjectAtIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(_MSPQueryState *)self contents];
  v8 = [v7 mutableCopy];

  v9 = [(_MSPQueryState *)self identifiers];
  v10 = [v9 mutableCopy];

  v11 = [v8 objectAtIndexedSubscript:a3];
  [v8 removeObjectAtIndex:a3];
  [v8 insertObject:v11 atIndex:a4];
  v12 = [v10 objectAtIndexedSubscript:a3];
  [v10 removeObjectAtIndex:a3];
  [v10 insertObject:v12 atIndex:a4];
  v13 = [objc_alloc(objc_opt_class()) initWithContents:v8 identifiers:v10];

  return v13;
}

@end