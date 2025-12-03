@interface ACCMemUsageStat
- (ACCMemUsageStat)initWithName:(id)name;
- (BOOL)update;
- (double)timeIntervalSinceMark:(id)mark;
- (id)description;
- (void)mark:(id)mark;
@end

@implementation ACCMemUsageStat

- (ACCMemUsageStat)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ACCMemUsageStat;
  v6 = [(ACCMemUsageStat *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
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
    allValues = [(NSMutableDictionary *)self->_markList allValues];
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v17 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v10 + 1) + 8 * i) updateResident:v16 virtualValue:v15 physFootprintValue:v14];
        }

        v6 = [allValues countByEnumeratingWithState:&v10 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return MemoryUse;
}

- (void)mark:(id)mark
{
  markCopy = mark;
  v4 = [(NSMutableDictionary *)self->_markList objectForKey:?];
  if (!v4)
  {
    v5 = [ACCMemUsageStatInfo alloc];
    markCopy = [NSString stringWithFormat:@"%@-mark-%@", self->_name, markCopy];
    v4 = [(ACCMemUsageStatInfo *)v5 initWithName:markCopy andInfo:self->_statInfo];

    [(NSMutableDictionary *)self->_markList setObject:v4 forKey:markCopy];
  }
}

- (double)timeIntervalSinceMark:(id)mark
{
  v3 = [(NSMutableDictionary *)self->_markList objectForKey:mark];
  if (v3)
  {
    v4 = +[NSDate date];
    startTime = [v3 startTime];
    [v4 timeIntervalSinceDate:startTime];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  return v7;
}

@end