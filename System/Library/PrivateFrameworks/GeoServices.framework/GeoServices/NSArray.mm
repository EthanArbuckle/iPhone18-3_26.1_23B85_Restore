@interface NSArray
- (id)_geo_compactMap:(id)a3;
- (id)_geo_filtered:(id)a3;
- (id)_geo_map:(id)a3;
@end

@implementation NSArray

- (id)_geo_compactMap:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self count])
  {
    v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_geo_map:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self count])
  {
    v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
          [v5 addObject:{v11, v13}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_geo_filtered:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005231C;
    v8[3] = &unk_100083D08;
    v9 = v4;
    v5 = [NSPredicate predicateWithBlock:v8];
    v6 = [(NSArray *)self filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

@end