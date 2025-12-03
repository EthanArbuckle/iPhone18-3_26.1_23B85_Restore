@interface PSDSchedulerObserver
- (PSDSchedulerObserver)initWithObserver:(id)observer;
- (PSDSchedulerObserver)observer;
- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
@end

@implementation PSDSchedulerObserver

- (PSDSchedulerObserver)initWithObserver:(id)observer
{
  observerCopy = observer;
  v10.receiver = self;
  v10.super_class = PSDSchedulerObserver;
  v5 = [(PSDSchedulerObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
    *&v6->_flags = *&v6->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->_flags = *&v6->_flags & 0xFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&v6->_flags = *&v6->_flags & 0xFB | v8;
  }

  return v6;
}

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  if (*&self->_flags)
  {
    sessionCopy = session;
    schedulerCopy = scheduler;
    observer = [(PSDSchedulerObserver *)self observer];
    [observer scheduler:schedulerCopy willStartSyncSession:sessionCopy];
  }
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  if ((*&self->_flags & 2) != 0)
  {
    updateCopy = update;
    schedulerCopy = scheduler;
    observer = [(PSDSchedulerObserver *)self observer];
    [observer scheduler:schedulerCopy didUpdateSyncSessionWithUpdate:updateCopy];
  }
}

- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block
{
  schedulerCopy = scheduler;
  sessionCopy = session;
  blockCopy = block;
  if ((*&self->_flags & 4) != 0 && ([(PSDSchedulerObserver *)self observer], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    observer = [(PSDSchedulerObserver *)self observer];
    [observer scheduler:schedulerCopy didClearSyncSession:sessionCopy withBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (PSDSchedulerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end