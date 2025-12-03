@interface COObserver
- (id)initForName:(id)name onObservable:(id)observable handler:(id)handler queue:(id)queue;
- (unint64_t)hash;
- (void)dealloc;
- (void)notify:(id)notify;
@end

@implementation COObserver

- (id)initForName:(id)name onObservable:(id)observable handler:(id)handler queue:(id)queue
{
  nameCopy = name;
  observableCopy = observable;
  handlerCopy = handler;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = COObserver;
  v14 = [(COObserver *)&v20 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_observable, observable);
    v17 = [handlerCopy copy];
    handler = v14->_handler;
    v14->_handler = v17;

    objc_storeStrong(&v14->_queue, queue);
  }

  return v14;
}

- (void)dealloc
{
  observable = [(COObserver *)self observable];
  [observable removeObserver:self];

  v4.receiver = self;
  v4.super_class = COObserver;
  [(COObserver *)&v4 dealloc];
}

- (unint64_t)hash
{
  name = [(COObserver *)self name];
  v3 = [name hash];

  return v3;
}

- (void)notify:(id)notify
{
  notifyCopy = notify;
  objc_initWeak(&location, self);
  queue = [(COObserver *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__COObserver_notify___block_invoke;
  v7[3] = &unk_278E12878;
  objc_copyWeak(&v9, &location);
  v6 = notifyCopy;
  v8 = v6;
  [queue addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __21__COObserver_notify___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained handler];
    v3[2](v3, *(a1 + 32));

    WeakRetained = v4;
  }
}

@end