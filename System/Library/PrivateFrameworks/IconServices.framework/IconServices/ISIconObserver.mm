@interface ISIconObserver
- (ISIconObserver)initWithDelegate:(id)delegate;
- (ISIconObserverDelegate)delegate;
- (void)dealloc;
- (void)iconManager:(id)manager didInvalidateIcons:(id)icons;
@end

@implementation ISIconObserver

- (ISIconObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ISIconObserver;
  v5 = [(ISIconObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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

- (void)iconManager:(id)manager didInvalidateIcons:(id)icons
{
  iconsCopy = icons;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained iconObserver:self didInvalidateIcons:iconsCopy];
}

- (ISIconObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end