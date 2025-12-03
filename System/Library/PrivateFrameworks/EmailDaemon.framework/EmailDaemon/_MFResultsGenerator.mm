@interface _MFResultsGenerator
- (_MFResultsGenerator)init;
- (_MFResultsGenerator)initWithKeys:(id)keys;
- (id)copyResults;
- (id)results;
- (id)valueForKey:(id)key;
@end

@implementation _MFResultsGenerator

- (_MFResultsGenerator)init
{
  [(_MFResultsGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_MFResultsGenerator)initWithKeys:(id)keys
{
  keysCopy = keys;
  v10.receiver = self;
  v10.super_class = _MFResultsGenerator;
  v5 = [(_MFResultsGenerator *)&v10 init];
  if (v5)
  {
    v6 = [keysCopy copy];
    resultKeys = v5->_resultKeys;
    v5->_resultKeys = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyResults
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_resultKeys, "count")}];
  v4 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_resultKeys;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(_MFResultsGenerator *)self blockForKey:v9, v14];
        v11 = v10;
        if (v10)
        {
          v12 = (*(v10 + 16))(v10, self, v9);
          if (v12)
          {
            [v3 setObject:v12 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (id)results
{
  copyResults = [(_MFResultsGenerator *)self copyResults];

  return copyResults;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = [(_MFResultsGenerator *)self blockForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self, keyCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end