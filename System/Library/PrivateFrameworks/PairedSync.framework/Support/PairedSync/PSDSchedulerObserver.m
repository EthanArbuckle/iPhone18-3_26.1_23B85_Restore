@interface PSDSchedulerObserver
- (PSDSchedulerObserver)initWithObserver:(id)a3;
- (PSDSchedulerObserver)observer;
- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5;
- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
@end

@implementation PSDSchedulerObserver

- (PSDSchedulerObserver)initWithObserver:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PSDSchedulerObserver;
  v5 = [(PSDSchedulerObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
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

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  if (*&self->_flags)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PSDSchedulerObserver *)self observer];
    [v9 scheduler:v8 willStartSyncSession:v7];
  }
}

- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4
{
  if ((*&self->_flags & 2) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PSDSchedulerObserver *)self observer];
    [v9 scheduler:v8 didUpdateSyncSessionWithUpdate:v7];
  }
}

- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ((*&self->_flags & 4) != 0 && ([(PSDSchedulerObserver *)self observer], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(PSDSchedulerObserver *)self observer];
    [v11 scheduler:v12 didClearSyncSession:v8 withBlock:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (PSDSchedulerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end