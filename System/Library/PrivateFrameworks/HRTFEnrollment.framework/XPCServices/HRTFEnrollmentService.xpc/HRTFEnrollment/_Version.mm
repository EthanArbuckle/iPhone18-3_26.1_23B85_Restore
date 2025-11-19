@interface _Version
- (_Version)initWithString:(id)a3;
- (int64_t)compareTo:(id)a3;
@end

@implementation _Version

- (_Version)initWithString:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = _Version;
  v6 = [(_Version *)&v22 init];
  if (v6)
  {
    v7 = [v5 componentsSeparatedByString:@"."];
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v18 + 1) + 8 * v13) integerValue]);
          [(NSArray *)v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    components = v6->_components;
    v6->_components = v8;
    v16 = v8;

    objc_storeStrong(&v6->_versionString, a3);
  }

  return v6;
}

- (int64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(_Version *)self components];
  v6 = [v5 count];

  v7 = [v4 components];
  v8 = [v7 count];

  if (v8 > v6)
  {
    v7 = [v4 components];
    v6 = [v7 count];
  }

  if (v6 < 1)
  {
LABEL_19:
    v7 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = [(_Version *)self components];
      v11 = [v10 count];

      if (v11 <= v9)
      {
        v14 = 0;
      }

      else
      {
        v12 = [(_Version *)self components];
        v13 = [v12 objectAtIndexedSubscript:v9];
        v14 = [v13 integerValue];
      }

      v15 = [v4 components];
      v16 = [v15 count];

      if (v16 <= v9)
      {
        v19 = 0;
      }

      else
      {
        v17 = [v4 components];
        v18 = [v17 objectAtIndexedSubscript:v9];
        v19 = [v18 integerValue];
      }

      v20 = v14 < v19 ? -1 : v7;
      v7 = v14 > v19 ? 1 : v20;
      if (v14 != v19)
      {
        break;
      }

      if (v6 == ++v9)
      {
        goto LABEL_19;
      }
    }
  }

  return v7;
}

@end