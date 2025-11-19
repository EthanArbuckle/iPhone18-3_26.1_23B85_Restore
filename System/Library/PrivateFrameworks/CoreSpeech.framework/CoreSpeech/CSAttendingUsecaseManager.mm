@interface CSAttendingUsecaseManager
- (CSAttendingUsecaseManager)init;
- (id)usecaseForType:(int64_t)a3 audioProviderSelector:(id)a4;
- (void)_cleanupUsecases:(id)a3;
- (void)startAttending:(id)a3 options:(id)a4 completion:(id)a5;
- (void)stopAttending:(id)a3 reason:(int64_t)a4;
@end

@implementation CSAttendingUsecaseManager

- (void)_cleanupUsecases:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v10;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v3);
      }

      if (*(*(&v9 + 1) + 8 * i))
      {
        ++v6;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_11:
    [v3 removeAllObjects];
  }
}

- (void)stopAttending:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [(CSAttendingUsecaseManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000712F0;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)startAttending:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100071518;
  v15[3] = &unk_100253220;
  v8 = a5;
  v16 = v8;
  v9 = objc_retainBlock(v15);
  v10 = v9;
  if (v7)
  {
    v11 = [(CSAttendingUsecaseManager *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100071530;
    v12[3] = &unk_1002533A0;
    v12[4] = self;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, v12);
  }

  else
  {
    (v9[2])(v9, 0, 0);
  }
}

- (id)usecaseForType:(int64_t)a3 audioProviderSelector:(id)a4
{
  v5 = [CSAttendingUsecaseFactory attendingUseCaseByAttendingType:a3 audioProviderSelector:a4];
  if (v5)
  {
    v6 = [(CSAttendingUsecaseManager *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100071758;
    v8[3] = &unk_100253C48;
    v8[4] = self;
    v9 = v5;
    dispatch_async(v6, v8);
  }

  return v5;
}

- (CSAttendingUsecaseManager)init
{
  v10.receiver = self;
  v10.super_class = CSAttendingUsecaseManager;
  v2 = [(CSAttendingUsecaseManager *)&v10 init];
  if (v2)
  {
    v3 = [CSUtils getSerialQueue:@"CSAttendingUsecaseManager Queue" qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    idleUsecases = v2->_idleUsecases;
    v2->_idleUsecases = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    activeUsecases = v2->_activeUsecases;
    v2->_activeUsecases = v7;
  }

  return v2;
}

@end