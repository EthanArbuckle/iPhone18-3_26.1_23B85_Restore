@interface CSAttendingUsecaseManager
- (CSAttendingUsecaseManager)init;
- (id)usecaseForType:(int64_t)type audioProviderSelector:(id)selector;
- (void)_cleanupUsecases:(id)usecases;
- (void)startAttending:(id)attending options:(id)options completion:(id)completion;
- (void)stopAttending:(id)attending reason:(int64_t)reason;
@end

@implementation CSAttendingUsecaseManager

- (void)_cleanupUsecases:(id)usecases
{
  usecasesCopy = usecases;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [usecasesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(usecasesCopy);
      }

      if (*(*(&v9 + 1) + 8 * i))
      {
        ++v6;
      }
    }

    v5 = [usecasesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_11:
    [usecasesCopy removeAllObjects];
  }
}

- (void)stopAttending:(id)attending reason:(int64_t)reason
{
  attendingCopy = attending;
  queue = [(CSAttendingUsecaseManager *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000712F0;
  v8[3] = &unk_100253C48;
  v9 = attendingCopy;
  selfCopy = self;
  v7 = attendingCopy;
  dispatch_async(queue, v8);
}

- (void)startAttending:(id)attending options:(id)options completion:(id)completion
{
  attendingCopy = attending;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100071518;
  v15[3] = &unk_100253220;
  completionCopy = completion;
  v16 = completionCopy;
  v9 = objc_retainBlock(v15);
  v10 = v9;
  if (attendingCopy)
  {
    queue = [(CSAttendingUsecaseManager *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100071530;
    v12[3] = &unk_1002533A0;
    v12[4] = self;
    v13 = attendingCopy;
    v14 = v10;
    dispatch_async(queue, v12);
  }

  else
  {
    (v9[2])(v9, 0, 0);
  }
}

- (id)usecaseForType:(int64_t)type audioProviderSelector:(id)selector
{
  v5 = [CSAttendingUsecaseFactory attendingUseCaseByAttendingType:type audioProviderSelector:selector];
  if (v5)
  {
    queue = [(CSAttendingUsecaseManager *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100071758;
    v8[3] = &unk_100253C48;
    v8[4] = self;
    v9 = v5;
    dispatch_async(queue, v8);
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