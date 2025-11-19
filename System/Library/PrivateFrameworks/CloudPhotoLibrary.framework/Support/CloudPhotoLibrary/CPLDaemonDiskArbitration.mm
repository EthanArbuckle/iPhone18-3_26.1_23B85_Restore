@interface CPLDaemonDiskArbitration
- (CPLDaemonDiskArbitration)initWithVolumeURL:(id)a3 queue:(id)a4;
- (id)description;
- (id)redactedDescription;
- (void)addVolumeUnmountObserver:(id)a3;
- (void)removeVolumeUnmountObserver:(id)a3;
@end

@implementation CPLDaemonDiskArbitration

- (void)addVolumeUnmountObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeVolumeUnmountObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(NSURL *)self->_volumeURL path];
  v6 = [v3 initWithFormat:@"<%@ %@>", v4, v5];

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

- (CPLDaemonDiskArbitration)initWithVolumeURL:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v12 = [v6 copy];
    volumeURL = v9->_volumeURL;
    v9->_volumeURL = v12;

    v14 = [(NSURL *)v9->_volumeURL path];
    v9->_isRootVolume = [v14 isEqualToString:@"/"];

    objc_storeStrong(&v9->_queue, a4);
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