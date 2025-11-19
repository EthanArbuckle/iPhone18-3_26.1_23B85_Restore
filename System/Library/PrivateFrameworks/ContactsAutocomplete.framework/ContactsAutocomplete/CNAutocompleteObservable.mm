@interface CNAutocompleteObservable
- (CNAutocompleteObservable)initWithBlock:(id)a3;
- (id)subscribe:(id)a3;
@end

@implementation CNAutocompleteObservable

- (CNAutocompleteObservable)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNAutocompleteObservable;
  v5 = [(CNAutocompleteObservable *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CFBE60] observableWithBlock:v4];
    observable = v5->_observable;
    v5->_observable = v6;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteObservable *)self observable];
  v6 = [v5 subscribe:v4];

  return v6;
}

@end