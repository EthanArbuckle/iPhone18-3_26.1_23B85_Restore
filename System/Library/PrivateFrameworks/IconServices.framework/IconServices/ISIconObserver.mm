@interface ISIconObserver
- (ISIconObserver)initWithDelegate:(id)a3;
- (ISIconObserverDelegate)delegate;
- (void)dealloc;
- (void)iconManager:(id)a3 didInvalidateIcons:(id)a4;
@end

@implementation ISIconObserver

- (ISIconObserver)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ISIconObserver;
  v5 = [(ISIconObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[ISIconManager sharedInstance];
    [v7 addObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[ISIconManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ISIconObserver;
  [(ISIconObserver *)&v4 dealloc];
}

- (void)iconManager:(id)a3 didInvalidateIcons:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained iconObserver:self didInvalidateIcons:v5];
}

- (ISIconObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end