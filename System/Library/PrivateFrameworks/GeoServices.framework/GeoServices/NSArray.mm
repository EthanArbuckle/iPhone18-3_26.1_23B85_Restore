@interface NSArray
- (id)_geo_compactMap:(id)map;
- (id)_geo_filtered:(id)_geo_filtered;
- (id)_geo_map:(id)_geo_map;
@end

@implementation NSArray

- (id)_geo_compactMap:(id)map
{
  mapCopy = map;
  if ([(NSArray *)self count])
  {
    v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          v11 = mapCopy[2](mapCopy, *(*(&v13 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_geo_map:(id)_geo_map
{
  _geo_mapCopy = _geo_map;
  if ([(NSArray *)self count])
  {
    v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          v11 = _geo_mapCopy[2](_geo_mapCopy, *(*(&v13 + 1) + 8 * i));
          [v5 addObject:{v11, v13}];
        }

        v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_geo_filtered:(id)_geo_filtered
{
  _geo_filteredCopy = _geo_filtered;
  if ([(NSArray *)self count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005231C;
    v8[3] = &unk_100083D08;
    v9 = _geo_filteredCopy;
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