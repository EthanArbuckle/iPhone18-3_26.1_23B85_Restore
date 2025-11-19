@interface COStateManagerClientInterfaceMediator
- (COStateManager)manager;
- (COStateManagerClientInterfaceMediator)initWithStateManager:(id)a3;
- (void)changesObserved:(id)a3 forPredicate:(id)a4;
@end

@implementation COStateManagerClientInterfaceMediator

- (COStateManagerClientInterfaceMediator)initWithStateManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COStateManagerClientInterfaceMediator;
  v5 = [(COStateManagerClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, v4);
  }

  return v6;
}

- (void)changesObserved:(id)a3 forPredicate:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained changesObserved:v9 forPredicate:v6];
  }
}

- (COStateManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end