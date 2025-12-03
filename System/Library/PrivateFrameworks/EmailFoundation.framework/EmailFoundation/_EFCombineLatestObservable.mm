@interface _EFCombineLatestObservable
- (_EFCombineLatestObservable)initWithObservables:(id)observables;
- (id)subscribe:(id)subscribe;
@end

@implementation _EFCombineLatestObservable

- (_EFCombineLatestObservable)initWithObservables:(id)observables
{
  observablesCopy = observables;
  v9.receiver = self;
  v9.super_class = _EFCombineLatestObservable;
  v5 = [(_EFCombineLatestObservable *)&v9 init];
  if (v5)
  {
    v6 = [observablesCopy copy];
    observables = v5->_observables;
    v5->_observables = v6;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_EFCombineLatestObservableSubscription alloc];
  observables = [(_EFCombineLatestObservable *)self observables];
  v7 = [(_EFCombineLatestObservableSubscription *)v5 initWithObservables:observables];
  v8 = [(_EFCombineLatestObservableSubscription *)v7 subscribe:subscribeCopy];

  return v8;
}

@end