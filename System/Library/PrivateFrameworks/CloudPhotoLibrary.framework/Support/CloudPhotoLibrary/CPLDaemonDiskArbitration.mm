@interface CPLDaemonDiskArbitration
- (CPLDaemonDiskArbitration)initWithVolumeURL:(id)l queue:(id)queue;
- (id)description;
- (id)redactedDescription;
- (void)addVolumeUnmountObserver:(id)observer;
- (void)removeVolumeUnmountObserver:(id)observer;
@end

@implementation CPLDaemonDiskArbitration

- (void)addVolumeUnmountObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeVolumeUnmountObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  path = [(NSURL *)self->_volumeURL path];
  v6 = [v3 initWithFormat:@"<%@ %@>", v4, path];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  if (self->_isRootVolume)
  {
    v5 = "Root Volume";
  }

  else
  {
    v5 = "External Volume";
  }

  v6 = [v3 initWithFormat:@"<%@ %s>", v4, v5];

  return v6;
}

- (CPLDaemonDiskArbitration)initWithVolumeURL:(id)l queue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CPLDaemonDiskArbitration;
  v8 = [(CPLDaemonDiskArbitration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = +[NSHashTable weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v10;

    v12 = [lCopy copy];
    volumeURL = v9->_volumeURL;
    v9->_volumeURL = v12;

    path = [(NSURL *)v9->_volumeURL path];
    v9->_isRootVolume = [path isEqualToString:@"/"];

    objc_storeStrong(&v9->_queue, queue);
    if ((_CPLSilentLogging & 1) == 0)
    {
      if (qword_1002C4FC0 != -1)
      {
        dispatch_once(&qword_1002C4FC0, &stru_1002734A8);
      }

      v15 = qword_1002C4FC8;
      if (os_log_type_enabled(qword_1002C4FC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initialized Volume Unmount Monitor %@", buf, 0xCu);
      }
    }
  }

  return v9;
}

@end