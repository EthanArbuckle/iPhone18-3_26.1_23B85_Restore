@interface FudStorage
+ (FudStorage)storageWithFile:(id)a3;
- (BOOL)_load;
- (BOOL)_overrideAllowRemoteFindNow;
- (BOOL)_policyAllowsRemoteFind:(id)a3 filter:(id)a4 revision:(id)a5 date:(id)a6;
- (BOOL)isAnyStateMachineActive;
- (BOOL)isAnyStateMachineActiveForPlugin:(id)a3;
- (BOOL)isPluginTracked:(id)a3;
- (BOOL)policyAllowsRemoteFindNow:(id)a3 filter:(id)a4 revision:(id)a5;
- (BOOL)save;
- (BOOL)setStateMachine:(id)a3 forPlugin:(id)a4 forFilter:(id)a5;
- (FudStorage)initWithStorageFile:(id)a3;
- (id)getFiltersInExclusionGroup:(id)a3;
- (id)getPolicyForFilterName:(id)a3;
- (id)getPolicyForPlugin:(id)a3;
- (id)getStateMachineForFilterName:(id)a3;
- (void)addPolicy:(id)a3;
- (void)dealloc;
- (void)recordSuccessfulRemoteFindForPolicy:(id)a3 filter:(id)a4 revision:(id)a5 date:(id)a6;
- (void)setPoliciesWithArray:(id)a3;
@end

@implementation FudStorage

+ (FudStorage)storageWithFile:(id)a3
{
  if (a3 | qword_1000997D8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B648;
    block[3] = &unk_100080FC8;
    block[4] = a3;
    if (qword_1000997E0 != -1)
    {
      dispatch_once(&qword_1000997E0, block);
    }

    return qword_1000997D8;
  }

  else
  {
    FudLog();
    v4 = a1;
    return 0;
  }
}

- (FudStorage)initWithStorageFile:(id)a3
{
  v6.receiver = self;
  v6.super_class = FudStorage;
  v4 = [(FudStorage *)&v6 init];
  if (v4)
  {
    FudLog();
    v4->storageFile = [a3 copy];
    v4->pluginToPolicy = [[NSMutableDictionary alloc] initWithCapacity:5];
    v4->pluginToStateMachines = [[NSMutableDictionary alloc] initWithCapacity:5];
    v4->pluginToRemoteCheckDate = 0;
    v4->lock = objc_alloc_init(NSRecursiveLock);
  }

  return v4;
}

- (void)addPolicy:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  if (a3)
  {
    -[NSMutableDictionary setObject:forKey:](self->pluginToPolicy, "setObject:forKey:", a3, [a3 pluginName]);
  }

  else
  {
    FudLog();
  }

  lock = self->lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setPoliciesWithArray:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  if (a3)
  {
    [(NSMutableDictionary *)self->pluginToPolicy removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(a3);
          }

          -[NSMutableDictionary setObject:forKey:](self->pluginToPolicy, "setObject:forKey:", *(*(&v9 + 1) + 8 * i), [*(*(&v9 + 1) + 8 * i) pluginName]);
        }

        v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)getPolicyForPlugin:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  if (a3)
  {
    a3 = [(NSMutableDictionary *)self->pluginToPolicy objectForKey:a3];
  }

  else
  {
    FudLog();
  }

  [(NSRecursiveLock *)self->lock unlock];
  return a3;
}

- (id)getPolicyForFilterName:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self;
  v5 = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 matchingFilters];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
              objc_enumerationMutation(v11);
            }

            if ([objc_msgSend(*(*(&v18 + 1) + 8 * v15) "filterName")])
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v10 = 0;
LABEL_19:
  [(NSRecursiveLock *)v17->lock unlock];
  return v10;
}

- (BOOL)isPluginTracked:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  LOBYTE(a3) = [(FudStorage *)self getPolicyForPlugin:a3]!= 0;
  [(NSRecursiveLock *)self->lock unlock];
  return a3;
}

- (BOOL)setStateMachine:(id)a3 forPlugin:(id)a4 forFilter:(id)a5
{
  [(NSRecursiveLock *)self->lock lock];
  if (!a4 || !a5)
  {
    v14 = a5;
    v15 = a4;
    goto LABEL_10;
  }

  v9 = [(FudStorage *)self getPolicyForFilterName:a5];
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

  [v11 removeObjectForKey:a5];
  if (a3)
  {
    [v11 setValue:a3 forKey:a5];
  }

  v12 = 1;
LABEL_11:
  [(NSRecursiveLock *)self->lock unlock:v14];
  return v12;
}

- (id)getStateMachineForFilterName:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  v5 = [(FudStorage *)self getPolicyForFilterName:a3];
  if (v5)
  {
    v6 = [-[NSMutableDictionary objectForKey:](self->pluginToStateMachines objectForKey:{objc_msgSend(v5, "pluginName")), "objectForKey:", a3}];
  }

  else
  {
    FudLog();
    v6 = 0;
  }

  [(NSRecursiveLock *)self->lock unlock];
  return v6;
}

- (BOOL)isAnyStateMachineActiveForPlugin:(id)a3
{
  [(NSRecursiveLock *)self->lock lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [v10 matchingFilters];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = -[FudStorage getStateMachineForFilterName:](self, "getStateMachineForFilterName:", [*(*(&v20 + 1) + 8 * j) filterName]);
              if ([v16 isActive] && (objc_msgSend(objc_msgSend(v16, "stateMachinePluginName"), "isEqualToString:", a3) & 1) != 0)
              {
                v17 = 1;
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v19;
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
  v3 = [(NSMutableDictionary *)self->pluginToPolicy allValues];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 matchingFilters];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(v9);
              }

              if ([-[FudStorage getStateMachineForFilterName:](self getStateMachineForFilterName:{objc_msgSend(*(*(&v16 + 1) + 8 * j), "filterName")), "isActive"}])
              {
                v14 = 1;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (id)getFiltersInExclusionGroup:(id)a3
{
  v5 = [NSMutableArray arrayWithCapacity:1];
  [(NSRecursiveLock *)self->lock lock];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self;
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
        v11 = [v10 matchingFilters];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if ([objc_msgSend(v16 "exclusionGroup")])
              {
                [(NSMutableArray *)v5 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)v18->lock unlock];
  return v5;
}

- (BOOL)_overrideAllowRemoteFindNow
{
  v2 = MGGetBoolAnswer();
  FudLog();
  return v2;
}

- (BOOL)_policyAllowsRemoteFind:(id)a3 filter:(id)a4 revision:(id)a5 date:(id)a6
{
  v10 = [NSString stringWithFormat:@"%@.%@", a4, a5];
  if (!a6)
  {
    a6 = +[NSDate date];
  }

  [(NSRecursiveLock *)self->lock lock];
  pluginToRemoteCheckDate = self->pluginToRemoteCheckDate;
  if (pluginToRemoteCheckDate)
  {
    v12 = -[NSMutableDictionary objectForKey:](pluginToRemoteCheckDate, "objectForKey:", [a3 pluginName]);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 objectForKey:v10];
      if (v14)
      {
        v15 = v14;
        v24 = [a3 pluginName];
        FudLog();
        [v15 timeIntervalSinceDate:{a6, "-[FudStorage _policyAllowsRemoteFind:filter:revision:date:]", v24, a4, v15}];
        v17 = v16 / -3600.0;
        v25 = v16 / -3600.0;
        FudLog();
        [a3 remoteFirmwareCheckInterval];
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
          [v13 removeObjectForKey:{v10, "-[FudStorage _policyAllowsRemoteFind:filter:revision:date:]", v10}];
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

- (BOOL)policyAllowsRemoteFindNow:(id)a3 filter:(id)a4 revision:(id)a5
{
  if ([(FudStorage *)self _overrideAllowRemoteFindNow])
  {
    return 1;
  }

  return [(FudStorage *)self _policyAllowsRemoteFind:a3 filter:a4 revision:a5 date:0];
}

- (void)recordSuccessfulRemoteFindForPolicy:(id)a3 filter:(id)a4 revision:(id)a5 date:(id)a6
{
  v10 = [NSString stringWithFormat:@"%@.%@", a4, a5];
  if (a3 && a4)
  {
    v11 = v10;
    if (!a6)
    {
      a6 = +[NSDate date];
    }

    [(NSRecursiveLock *)self->lock lock];
    pluginToRemoteCheckDate = self->pluginToRemoteCheckDate;
    if (pluginToRemoteCheckDate)
    {
      v13 = -[NSMutableDictionary objectForKey:](pluginToRemoteCheckDate, "objectForKey:", [a3 pluginName]);
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
      -[NSMutableDictionary setValue:forKey:](self->pluginToRemoteCheckDate, "setValue:forKey:", v13, [a3 pluginName]);
    }

    [v13 setObject:a6 forKey:v11];
    [(NSRecursiveLock *)self->lock unlock];
    [a3 pluginName];
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