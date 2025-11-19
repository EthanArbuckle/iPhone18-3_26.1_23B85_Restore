@interface ACCMemUsageStat
- (ACCMemUsageStat)initWithName:(id)a3;
- (BOOL)update;
- (double)timeIntervalSinceMark:(id)a3;
- (id)description;
- (void)mark:(id)a3;
@end

@implementation ACCMemUsageStat

- (ACCMemUsageStat)initWithName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ACCMemUsageStat;
  v6 = [(ACCMemUsageStat *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [[ACCMemUsageStatInfo alloc] initWithName:&stru_10022D360];
    statInfo = v7->_statInfo;
    v7->_statInfo = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    markList = v7->_markList;
    v7->_markList = v10;

    [(ACCMemUsageStat *)v7 update];
  }

  return v7;
}

- (id)description
{
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = &stru_10022D360;
  }

  return [NSMutableString stringWithFormat:@"ACCMemUsageStat:%@ \nstatinfo: \n%@ markList: %lu entries \n", name, self->_statInfo, [(NSMutableDictionary *)self->_markList count]];
}

- (BOOL)update
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  MemoryUse = getMemoryUse(&v16, &v15, &v14);
  if (MemoryUse)
  {
    [(ACCMemUsageStatInfo *)self->_statInfo updateResident:v16 virtualValue:v15 physFootprintValue:v14];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSMutableDictionary *)self->_markList allValues];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) updateResident:v16 virtualValue:v15 physFootprintValue:v14];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return MemoryUse;
}

- (void)mark:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_markList objectForKey:?];
  if (!v4)
  {
    v5 = [ACCMemUsageStatInfo alloc];
    v6 = [NSString stringWithFormat:@"%@-mark-%@", self->_name, v7];
    v4 = [(ACCMemUsageStatInfo *)v5 initWithName:v6 andInfo:self->_statInfo];

    [(NSMutableDictionary *)self->_markList setObject:v4 forKey:v7];
  }
}

- (double)timeIntervalSinceMark:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_markList objectForKey:a3];
  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [v3 startTime];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

@end