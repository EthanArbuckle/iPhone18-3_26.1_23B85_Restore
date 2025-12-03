@interface CNAutocompleteObservable
- (CNAutocompleteObservable)initWithBlock:(id)block;
- (id)subscribe:(id)subscribe;
@end

@implementation CNAutocompleteObservable

- (CNAutocompleteObservable)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CNAutocompleteObservable;
  v5 = [(CNAutocompleteObservable *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CFBE60] observableWithBlock:blockCopy];
    observable = v5->_observable;
    v5->_observable = v6;
  }

  return v5;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  observable = [(CNAutocompleteObservable *)self observable];
  v6 = [observable subscribe:subscribeCopy];

  return v6;
}

@end