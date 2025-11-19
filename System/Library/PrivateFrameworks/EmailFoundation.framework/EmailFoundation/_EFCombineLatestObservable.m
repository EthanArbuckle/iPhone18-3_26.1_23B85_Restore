@interface _EFCombineLatestObservable
- (_EFCombineLatestObservable)initWithObservables:(id)a3;
- (id)subscribe:(id)a3;
@end

@implementation _EFCombineLatestObservable

- (_EFCombineLatestObservable)initWithObservables:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EFCombineLatestObservable;
  v5 = [(_EFCombineLatestObservable *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    observables = v5->_observables;
    v5->_observables = v6;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [_EFCombineLatestObservableSubscription alloc];
  v6 = [(_EFCombineLatestObservable *)self observables];
  v7 = [(_EFCombineLatestObservableSubscription *)v5 initWithObservables:v6];
  v8 = [(_EFCombineLatestObservableSubscription *)v7 subscribe:v4];

  return v8;
}

@end