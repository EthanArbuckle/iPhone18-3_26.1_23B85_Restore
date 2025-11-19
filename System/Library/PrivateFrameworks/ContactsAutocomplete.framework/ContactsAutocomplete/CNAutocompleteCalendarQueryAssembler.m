@interface CNAutocompleteCalendarQueryAssembler
- (CNAutocompleteCalendarQueryAssembler)initWithRawCachedObservable:(id)a3 rawUncachedObservable:(id)a4;
- (id)description;
- (void)assemble;
@end

@implementation CNAutocompleteCalendarQueryAssembler

- (CNAutocompleteCalendarQueryAssembler)initWithRawCachedObservable:(id)a3 rawUncachedObservable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAutocompleteCalendarQueryAssembler;
  v9 = [(CNAutocompleteCalendarQueryAssembler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rawCachedObservable, a3);
    objc_storeStrong(&v10->_rawUncachedObservable, a4);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNAutocompleteCalendarQueryAssembler *)self rawCachedObservable];
  v5 = [v3 appendName:@"rawCachedObservable" object:v4];

  v6 = [(CNAutocompleteCalendarQueryAssembler *)self rawUncachedObservable];
  v7 = [v3 appendName:@"rawUncachedObservable" object:v6];

  v8 = [v3 build];

  return v8;
}

- (void)assemble
{
  v3 = [(CNAutocompleteCalendarQueryAssembler *)self rawCachedObservable];
  v4 = [(CNAutocompleteCalendarQueryAssembler *)self rawUncachedObservable];
  v5 = [v3 onEmpty:v4];

  v6 = [v5 onError:v4];

  cachedObservable = self->_cachedObservable;
  self->_cachedObservable = v6;
  v9 = v6;

  uncachedObservable = self->_uncachedObservable;
  self->_uncachedObservable = v4;
}

@end