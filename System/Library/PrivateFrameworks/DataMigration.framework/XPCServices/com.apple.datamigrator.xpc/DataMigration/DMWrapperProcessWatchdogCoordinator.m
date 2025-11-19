@interface DMWrapperProcessWatchdogCoordinator
- (DMWrapperProcessWatchdogCoordinator)init;
- (id)_pluginStateThatBlocksNewRunEvents_onPropertyAccessQueue;
- (unint64_t)_countOfPlugins;
- (void)_killIfAppropriate_onPropertyAccessQueue;
- (void)callRunEventBlock:(id)a3 forPlugin:(id)a4;
- (void)watchdogPlugin:(id)a3 withPid:(int)a4;
@end

@implementation DMWrapperProcessWatchdogCoordinator

- (DMWrapperProcessWatchdogCoordinator)init
{
  v7.receiver = self;
  v7.super_class = DMWrapperProcessWatchdogCoordinator;
  v2 = [(DMWrapperProcessWatchdogCoordinator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    [(DMWrapperProcessWatchdogCoordinator *)v2 setPluginStates:v3];

    v4 = objc_alloc_init(NSMutableSet);
    [(DMWrapperProcessWatchdogCoordinator *)v2 setPidsKilled:v4];

    v5 = dispatch_queue_create("com.apple.datamigrator.watchdogCoordinator.propertyAccess", 0);
    [(DMWrapperProcessWatchdogCoordinator *)v2 setPropertyAccessQueue:v5];
  }

  return v2;
}

- (id)_pluginStateThatBlocksNewRunEvents_onPropertyAccessQueue
{
  v3 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
  dispatch_assert_queue_V2(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DMWrapperProcessWatchdogCoordinator *)self pluginStates];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 watchdogged])
        {
          if ([v10 pid])
          {
            if (!v7 || (v11 = [v10 pid], v11 < objc_msgSend(v7, "pid")))
            {
              v12 = v10;

              v7 = v12;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)callRunEventBlock:(id)a3 forPlugin:(id)a4
{
  v6 = a3;
  v7 = a4;
  _DMLogFunc();
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_1000109B0;
  v47[4] = sub_1000109C0;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1000109B0;
  v45 = sub_1000109C0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000109B0;
  v39 = sub_1000109C0;
  v40 = 0;
  v8 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000109C8;
  block[3] = &unk_100024DB8;
  block[4] = self;
  v9 = v7;
  v31 = v9;
  v32 = &v35;
  v33 = v47;
  v34 = &v41;
  dispatch_sync(v8, block);

  v10 = v36[5];
  if (v10)
  {
    objc_exception_throw(v10);
  }

  while (1)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000109B0;
    v28 = sub_1000109C0;
    v29 = 0;
    v11 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100010B94;
    v21[3] = &unk_100024DE0;
    v21[4] = self;
    v12 = v9;
    v22 = v12;
    v23 = &v24;
    dispatch_sync(v11, v21);

    if (!v25[5])
    {
      break;
    }

    [(DMWrapperProcessWatchdogCoordinator *)self _blockedByPendingWatchdogOfAnotherPluginOnQueue:?];
    v16 = v12;
    _DMLogFunc();

    _Block_object_dispose(&v24, 8);
  }

  _Block_object_dispose(&v24, 8);
  v13 = v42[5];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010C40;
  v17[3] = &unk_100024E08;
  v19 = v6;
  v20 = v47;
  v17[4] = self;
  v18 = v12;
  v14 = v12;
  v15 = v6;
  dispatch_sync(v13, v17);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(v47, 8);
}

- (void)watchdogPlugin:(id)a3 withPid:(int)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000109B0;
  v19 = sub_1000109C0;
  v20 = 0;
  v7 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100010ED8;
  v10[3] = &unk_100024E30;
  v8 = v6;
  v14 = a4;
  v11 = v8;
  v12 = self;
  v13 = &v15;
  dispatch_sync(v7, v10);

  v9 = v16[5];
  if (v9)
  {
    objc_exception_throw(v9);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_killIfAppropriate_onPropertyAccessQueue
{
  v3 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
  dispatch_assert_queue_V2(v3);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(DMWrapperProcessWatchdogCoordinator *)self pluginStates];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v8 += [v11 watchdogged];
        v7 += [v11 running];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);

    if (v8 != v7)
    {
      _DMLogFunc();
      return;
    }
  }

  else
  {
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(DMWrapperProcessWatchdogCoordinator *)self pluginStates];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        if ([v17 watchdogged] && objc_msgSend(v17, "pid"))
        {
          v18 = [(DMWrapperProcessWatchdogCoordinator *)self pidsKilled];
          v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 pid]);
          v20 = [v18 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 pid]);
            _DMLogFunc();

            v21 = [(DMWrapperProcessWatchdogCoordinator *)self pidsKilled];
            v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 pid]);
            [v21 addObject:v22];

            +[DMProcessTerminator killPid:](DMProcessTerminator, "killPid:", [v17 pid]);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }
}

- (unint64_t)_countOfPlugins
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(DMWrapperProcessWatchdogCoordinator *)self propertyAccessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000114D4;
  v6[3] = &unk_100024E58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end