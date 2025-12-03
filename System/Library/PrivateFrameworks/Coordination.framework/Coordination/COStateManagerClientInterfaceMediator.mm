@interface COStateManagerClientInterfaceMediator
- (COStateManager)manager;
- (COStateManagerClientInterfaceMediator)initWithStateManager:(id)manager;
- (void)changesObserved:(id)observed forPredicate:(id)predicate;
@end

@implementation COStateManagerClientInterfaceMediator

- (COStateManagerClientInterfaceMediator)initWithStateManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = COStateManagerClientInterfaceMediator;
  v5 = [(COStateManagerClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (void)changesObserved:(id)observed forPredicate:(id)predicate
{
  observedCopy = observed;
  predicateCopy = predicate;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained changesObserved:observedCopy forPredicate:predicateCopy];
  }
}

- (COStateManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end