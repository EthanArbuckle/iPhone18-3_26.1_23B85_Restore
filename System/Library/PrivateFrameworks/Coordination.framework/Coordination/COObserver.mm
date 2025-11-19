@interface COObserver
- (id)initForName:(id)a3 onObservable:(id)a4 handler:(id)a5 queue:(id)a6;
- (unint64_t)hash;
- (void)dealloc;
- (void)notify:(id)a3;
@end

@implementation COObserver

- (id)initForName:(id)a3 onObservable:(id)a4 handler:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = COObserver;
  v14 = [(COObserver *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_observable, a4);
    v17 = [v12 copy];
    handler = v14->_handler;
    v14->_handler = v17;

    objc_storeStrong(&v14->_queue, a6);
  }

  return v14;
}

- (void)dealloc
{
  v3 = [(COObserver *)self observable];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COObserver;
  [(COObserver *)&v4 dealloc];
}

- (unint64_t)hash
{
  v2 = [(COObserver *)self name];
  v3 = [v2 hash];

  return v3;
}

- (void)notify:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(COObserver *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__COObserver_notify___block_invoke;
  v7[3] = &unk_278E12878;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addOperationWithBlock:v7];

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