@interface CNAutocompleteCalendarQueryAssembler
- (CNAutocompleteCalendarQueryAssembler)initWithRawCachedObservable:(id)observable rawUncachedObservable:(id)uncachedObservable;
- (id)description;
- (void)assemble;
@end

@implementation CNAutocompleteCalendarQueryAssembler

- (CNAutocompleteCalendarQueryAssembler)initWithRawCachedObservable:(id)observable rawUncachedObservable:(id)uncachedObservable
{
  observableCopy = observable;
  uncachedObservableCopy = uncachedObservable;
  v13.receiver = self;
  v13.super_class = CNAutocompleteCalendarQueryAssembler;
  v9 = [(CNAutocompleteCalendarQueryAssembler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rawCachedObservable, observable);
    objc_storeStrong(&v10->_rawUncachedObservable, uncachedObservable);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  rawCachedObservable = [(CNAutocompleteCalendarQueryAssembler *)self rawCachedObservable];
  v5 = [v3 appendName:@"rawCachedObservable" object:rawCachedObservable];

  rawUncachedObservable = [(CNAutocompleteCalendarQueryAssembler *)self rawUncachedObservable];
  v7 = [v3 appendName:@"rawUncachedObservable" object:rawUncachedObservable];

  build = [v3 build];

  return build;
}

- (void)assemble
{
  rawCachedObservable = [(CNAutocompleteCalendarQueryAssembler *)self rawCachedObservable];
  rawUncachedObservable = [(CNAutocompleteCalendarQueryAssembler *)self rawUncachedObservable];
  v5 = [rawCachedObservable onEmpty:rawUncachedObservable];

  v6 = [v5 onError:rawUncachedObservable];

  cachedObservable = self->_cachedObservable;
  self->_cachedObservable = v6;
  v9 = v6;

  uncachedObservable = self->_uncachedObservable;
  self->_uncachedObservable = rawUncachedObservable;
}

@end