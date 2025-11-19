@interface IDSDataMigrationTracker
+ (id)sharedInstance;
- (BOOL)hasPerformedMigration;
- (IDSDataMigrationTracker)init;
- (id)performMigrationIfNeeded;
@end

@implementation IDSDataMigrationTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004E83D0;
  block[3] = &unk_100BD75B8;
  block[4] = a1;
  if (qword_100CBD660 != -1)
  {
    dispatch_once(&qword_100CBD660, block);
  }

  v2 = qword_100CBD658;

  return v2;
}

- (IDSDataMigrationTracker)init
{
  v3.receiver = self;
  v3.super_class = IDSDataMigrationTracker;
  result = [(IDSDataMigrationTracker *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)hasPerformedMigration
{
  os_unfair_lock_lock(&self->_lock);
  completedMigration = self->_completedMigration;
  os_unfair_lock_unlock(&self->_lock);
  return completedMigration;
}

- (id)performMigrationIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_completedMigration)
  {
    os_unfair_lock_unlock(&self->_lock);
    v3 = +[NSNull null];
    v4 = [CUTPromise fulfilledPromiseWithValue:v3];
  }

  else
  {
    currentPromise = self->_currentPromise;
    if (!currentPromise)
    {
      v6 = dispatch_get_global_queue(0, 0);
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = sub_10000AA14;
      v15 = sub_10000BC7C;
      v16 = [[CUTPromiseSeal alloc] initWithQueue:v6];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1004E863C;
      v10[3] = &unk_100BD9038;
      v10[4] = self;
      v10[5] = &v11;
      dispatch_async(v6, v10);
      v7 = [v12[5] promise];
      v8 = self->_currentPromise;
      self->_currentPromise = v7;

      _Block_object_dispose(&v11, 8);
      currentPromise = self->_currentPromise;
    }

    v4 = currentPromise;
    os_unfair_lock_unlock(&self->_lock);
  }

  return v4;
}

@end