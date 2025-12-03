@interface FudStorage
+ (FudStorage)storageWithFile:(id)file;
- (BOOL)_load;
- (BOOL)_overrideAllowRemoteFindNow;
- (BOOL)_policyAllowsRemoteFind:(id)find filter:(id)filter revision:(id)revision date:(id)date;
- (BOOL)isAnyStateMachineActive;
- (BOOL)isAnyStateMachineActiveForPlugin:(id)plugin;
- (BOOL)isPluginTracked:(id)tracked;
- (BOOL)policyAllowsRemoteFindNow:(id)now filter:(id)filter revision:(id)revision;
- (BOOL)save;
- (BOOL)setStateMachine:(id)machine forPlugin:(id)plugin forFilter:(id)filter;
- (FudStorage)initWithStorageFile:(id)file;
- (id)getFiltersInExclusionGroup:(id)group;
- (id)getPolicyForFilterName:(id)name;
- (id)getPolicyForPlugin:(id)plugin;
- (id)getStateMachineForFilterName:(id)name;
- (void)addPolicy:(id)policy;
- (void)dealloc;
- (void)recordSuccessfulRemoteFindForPolicy:(id)policy filter:(id)filter revision:(id)revision date:(id)date;
- (void)setPoliciesWithArray:(id)array;
@end

@implementation FudStorage

+ (FudStorage)storageWithFile:(id)file
{
  if (file | qword_1000997D8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B648;
    block[3] = &unk_100080FC8;
    block[4] = file;
    if (qword_1000997E0 != -1)
    {
      dispatch_once(&qword_1000997E0, block);
    }

    return qword_1000997D8;
  }

  else
  {
    FudLog();
    selfCopy = self;
    return 0;
  }
}

- (FudStorage)initWithStorageFile:(id)file
{
  v6.receiver = self;
  v6.super_class = FudStorage;
  v4 = [(FudStorage *)&v6 init];
  if (v4)
  {
    FudLog();
    v4->storageFile = [file copy];
    v4->pluginToPolicy = [[NSMutableDictionary alloc] initWithCapacity:5];
    v4->pluginToStateMachines = [[NSMutableDictionary alloc] initWithCapacity:5];
    v4->pluginToRemoteCheckDate = 0;
    v4->lock = objc_alloc_init(NSRecursiveLock);
  }

  return v4;
}

- (void)addPolicy:(id)policy
{
  [(NSRecursiveLock *)self->lock lock];
  if (policy)
  {
    -[NSMutableDictionary setObject:forKey:](self->pluginToPolicy, "setObject:forKey:", policy, [policy pluginName]);
  }

  else
  {
    FudLog();
  }

  lock = self->lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setPoliciesWithArray:(id)array
{
  [(NSRecursiveLock *)self->lock lock];
  if (array)
  {
    [(NSMutableDictionary *)self->pluginToPolicy removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(array);
          }

          -[NSMutableDictionary setObject:forKey:](self->pluginToPolicy, "setObject:forKey:", *(*(&v9 + 1) + 8 * i), [*(*(&v9 + 1) + 8 * i) pluginName]);
        }

        v6 = [array countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else
  {
    FudLog();
  }

  [(NSRecursiveLock *)self->lock unlock];
}

- (void)dealloc
{
  self->storageFile = 0;

  self->pluginToPolicy = 0;
  self->pluginToStateMachines = 0;

  self->pluginToRemoteCheckDate = 0;
  self->lock = 0;
  v3.receiver = self;
  v3.super_class = FudStorage;
  [(FudStorage *)&v3 dealloc];
}

- (id)getPolicyForPlugin:(id)plugin
{
  [(NSRecursiveLock *)self->lock lock];
  if (plugin)
  {
    plugin = [(NSMutableDictionary *)self->pluginToPolicy objectForKey:plugin];
  }

  else
  {
    FudLog();
  }

  [(NSRecursiveLock *)self->lock unlock];
  return plugin;
}

- (id)getPolicyForFilterName:(id)name
{
  [(NSRecursiveLock *)self->lock lock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v6 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        matchingFilters = [v10 matchingFilters];
        v12 = [matchingFilters countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(matchingFilters);
            }

            if ([objc_msgSend(*(*(&v18 + 1) + 8 * v15) "filterName")])
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [matchingFilters countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          if (v10)
          {
            goto LABEL_19;
          }
        }

LABEL_16:
        ;
      }

      v7 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v10 = 0;
LABEL_19:
  [(NSRecursiveLock *)selfCopy->lock unlock];
  return v10;
}

- (BOOL)isPluginTracked:(id)tracked
{
  [(NSRecursiveLock *)self->lock lock];
  LOBYTE(tracked) = [(FudStorage *)self getPolicyForPlugin:tracked]!= 0;
  [(NSRecursiveLock *)self->lock unlock];
  return tracked;
}

- (BOOL)setStateMachine:(id)machine forPlugin:(id)plugin forFilter:(id)filter
{
  [(NSRecursiveLock *)self->lock lock];
  if (!plugin || !filter)
  {
    filterCopy = filter;
    pluginCopy = plugin;
    goto LABEL_10;
  }

  v9 = [(FudStorage *)self getPolicyForFilterName:filter];
  if (!v9)
  {
LABEL_10:
    FudLog();
    v12 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = -[NSMutableDictionary objectForKey:](self->pluginToStateMachines, "objectForKey:", [v9 pluginName]);
  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    -[NSMutableDictionary setValue:forKey:](self->pluginToStateMachines, "setValue:forKey:", v11, [v10 pluginName]);
  }

  [v11 removeObjectForKey:filter];
  if (machine)
  {
    [v11 setValue:machine forKey:filter];
  }

  v12 = 1;
LABEL_11:
  [(NSRecursiveLock *)self->lock unlock:filterCopy];
  return v12;
}

- (id)getStateMachineForFilterName:(id)name
{
  [(NSRecursiveLock *)self->lock lock];
  v5 = [(FudStorage *)self getPolicyForFilterName:name];
  if (v5)
  {
    v6 = [-[NSMutableDictionary objectForKey:](self->pluginToStateMachines objectForKey:{objc_msgSend(v5, "pluginName")), "objectForKey:", name}];
  }

  else
  {
    FudLog();
    v6 = 0;
  }

  [(NSRecursiveLock *)self->lock unlock];
  return v6;
}

- (BOOL)isAnyStateMachineActiveForPlugin:(id)plugin
{
  [(NSRecursiveLock *)self->lock lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v6 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v19 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        matchingFilters = [v10 matchingFilters];
        v12 = [matchingFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(matchingFilters);
              }

              v16 = -[FudStorage getStateMachineForFilterName:](self, "getStateMachineForFilterName:", [*(*(&v20 + 1) + 8 * j) filterName]);
              if ([v16 isActive] && (objc_msgSend(objc_msgSend(v16, "stateMachinePluginName"), "isEqualToString:", plugin) & 1) != 0)
              {
                v17 = 1;
                goto LABEL_20;
              }
            }

            v13 = [matchingFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v19;
      }

      v7 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v7);
  }

  else
  {
    v17 = 0;
  }

LABEL_20:
  [(NSRecursiveLock *)self->lock unlock];
  return v17;
}

- (BOOL)isAnyStateMachineActive
{
  [(NSRecursiveLock *)self->lock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v4 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        matchingFilters = [v8 matchingFilters];
        v10 = [matchingFilters countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(matchingFilters);
              }

              if ([-[FudStorage getStateMachineForFilterName:](self getStateMachineForFilterName:{objc_msgSend(*(*(&v16 + 1) + 8 * j), "filterName")), "isActive"}])
              {
                v14 = 1;
                goto LABEL_19;
              }
            }

            v11 = [matchingFilters countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v5);
  }

  else
  {
    v14 = 0;
  }

LABEL_19:
  [(NSRecursiveLock *)self->lock unlock];
  return v14;
}

- (id)getFiltersInExclusionGroup:(id)group
{
  v5 = [NSMutableArray arrayWithCapacity:1];
  [(NSRecursiveLock *)self->lock lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        matchingFilters = [v10 matchingFilters];
        v12 = [matchingFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(matchingFilters);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if ([objc_msgSend(v16 "exclusionGroup")])
              {
                [(NSMutableArray *)v5 addObject:v16];
              }
            }

            v13 = [matchingFilters countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)selfCopy->lock unlock];
  return v5;
}

- (BOOL)_overrideAllowRemoteFindNow
{
  v2 = MGGetBoolAnswer();
  FudLog();
  return v2;
}

- (BOOL)_policyAllowsRemoteFind:(id)find filter:(id)filter revision:(id)revision date:(id)date
{
  revision = [NSString stringWithFormat:@"%@.%@", filter, revision];
  if (!date)
  {
    date = +[NSDate date];
  }

  [(NSRecursiveLock *)self->lock lock];
  pluginToRemoteCheckDate = self->pluginToRemoteCheckDate;
  if (pluginToRemoteCheckDate)
  {
    v12 = -[NSMutableDictionary objectForKey:](pluginToRemoteCheckDate, "objectForKey:", [find pluginName]);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 objectForKey:revision];
      if (v14)
      {
        v15 = v14;
        pluginName = [find pluginName];
        FudLog();
        [v15 timeIntervalSinceDate:{date, "-[FudStorage _policyAllowsRemoteFind:filter:revision:date:]", pluginName, filter, v15}];
        v17 = v16 / -3600.0;
        v25 = v16 / -3600.0;
        FudLog();
        [find remoteFirmwareCheckInterval];
        v19 = v18;
        v23 = v18;
        FudLog();
        if (v17 >= 0.0)
        {
          if (v17 < v19)
          {
            v22 = "[FudStorage _policyAllowsRemoteFind:filter:revision:date:]";
            FudLog();
            v20 = 0;
            goto LABEL_10;
          }

          v22 = "[FudStorage _policyAllowsRemoteFind:filter:revision:date:]";
          FudLog();
        }

        else
        {
          FudLog();
          FudLog();
          [v13 removeObjectForKey:{revision, "-[FudStorage _policyAllowsRemoteFind:filter:revision:date:]", revision}];
        }
      }
    }
  }

  else
  {
    [(FudStorage *)self _load];
  }

  v20 = 1;
LABEL_10:
  [(NSRecursiveLock *)self->lock unlock:v22];
  return v20;
}

- (BOOL)policyAllowsRemoteFindNow:(id)now filter:(id)filter revision:(id)revision
{
  if ([(FudStorage *)self _overrideAllowRemoteFindNow])
  {
    return 1;
  }

  return [(FudStorage *)self _policyAllowsRemoteFind:now filter:filter revision:revision date:0];
}

- (void)recordSuccessfulRemoteFindForPolicy:(id)policy filter:(id)filter revision:(id)revision date:(id)date
{
  revision = [NSString stringWithFormat:@"%@.%@", filter, revision];
  if (policy && filter)
  {
    v11 = revision;
    if (!date)
    {
      date = +[NSDate date];
    }

    [(NSRecursiveLock *)self->lock lock];
    pluginToRemoteCheckDate = self->pluginToRemoteCheckDate;
    if (pluginToRemoteCheckDate)
    {
      v13 = -[NSMutableDictionary objectForKey:](pluginToRemoteCheckDate, "objectForKey:", [policy pluginName]);
      if (!v13)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
      }
    }

    else if ([(FudStorage *)self _load])
    {
      v13 = 0;
    }

    else
    {
      self->pluginToRemoteCheckDate = objc_alloc_init(NSMutableDictionary);
      v13 = objc_alloc_init(NSMutableDictionary);
      -[NSMutableDictionary setValue:forKey:](self->pluginToRemoteCheckDate, "setValue:forKey:", v13, [policy pluginName]);
    }

    [v13 setObject:date forKey:v11];
    [(NSRecursiveLock *)self->lock unlock];
    [policy pluginName];
  }

  FudLog();
}

- (BOOL)save
{
  [(NSRecursiveLock *)self->lock lock];
  pluginToRemoteCheckDate = self->pluginToRemoteCheckDate;
  if (pluginToRemoteCheckDate && [(NSMutableDictionary *)pluginToRemoteCheckDate count])
  {
    v4 = +[NSFileManager defaultManager];
    if (![(NSFileManager *)v4 fileExistsAtPath:self->storageFile])
    {
      [(NSFileManager *)v4 createFileAtPath:self->storageFile contents:0 attributes:0];
    }

    [(NSMutableDictionary *)self->pluginToRemoteCheckDate writeToFile:self->storageFile atomically:1];
  }

  [(NSRecursiveLock *)self->lock unlock];
  return 1;
}

- (BOOL)_load
{
  [(NSRecursiveLock *)self->lock lock];
  if (self->pluginToRemoteCheckDate)
  {
    v3 = 1;
  }

  else if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v4 = [[NSMutableDictionary dictionaryWithContentsOfFile:?]];
    self->pluginToRemoteCheckDate = v4;
    v3 = v4 != 0;
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->lock unlock];
  return v3;
}

@end