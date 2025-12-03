@interface SFTextSearchMatchesCounter
- (BOOL)canSkipCountingMatchesForQueryString:(id)string wordMatchMethod:(int64_t)method;
- (BOOL)searchTookTooLong;
- (NSOrderedSet)allFoundRanges;
- (SFTextSearchMatchesCounter)initWithQueryString:(id)string completionHandler:(id)handler;
- (void)finishedSearching;
- (void)foundRange:(id)range forSearchString:(id)string inDocument:(id)document;
- (void)invalidateFoundRange:(id)range inDocument:(id)document;
@end

@implementation SFTextSearchMatchesCounter

- (SFTextSearchMatchesCounter)initWithQueryString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SFTextSearchMatchesCounter;
  v8 = [(SFTextSearchMatchesCounter *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    startDateOfSearch = v8->_startDateOfSearch;
    v8->_startDateOfSearch = v9;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    allFoundRanges = v8->_allFoundRanges;
    v8->_allFoundRanges = orderedSet;

    v13 = _Block_copy(handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v13;

    v15 = [stringCopy copy];
    queryString = v8->_queryString;
    v8->_queryString = v15;

    v8->_valid = 1;
    v17 = v8;
  }

  return v8;
}

- (BOOL)canSkipCountingMatchesForQueryString:(id)string wordMatchMethod:(int64_t)method
{
  stringCopy = string;
  if (method == 2 || self->_valid || [(NSMutableOrderedSet *)self->_allFoundRanges count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [stringCopy hasPrefix:self->_queryString];
  }

  return v7;
}

- (BOOL)searchTookTooLong
{
  endDateOfSearch = self->_endDateOfSearch;
  if (!endDateOfSearch)
  {
    return 1;
  }

  [(NSDate *)endDateOfSearch timeIntervalSinceDate:self->_startDateOfSearch];
  return v4 > 1.0;
}

- (NSOrderedSet)allFoundRanges
{
  v2 = [(NSMutableOrderedSet *)self->_allFoundRanges copy];

  return v2;
}

- (void)foundRange:(id)range forSearchString:(id)string inDocument:(id)document
{
  if (self->_valid)
  {
    [(NSMutableOrderedSet *)self->_allFoundRanges addObject:range, string, document];
  }
}

- (void)invalidateFoundRange:(id)range inDocument:(id)document
{
  if (self->_valid)
  {
    [(NSMutableOrderedSet *)self->_allFoundRanges removeObject:range, document];
  }
}

- (void)finishedSearching
{
  v3 = [MEMORY[0x1E695DF00] now];
  endDateOfSearch = self->_endDateOfSearch;
  self->_endDateOfSearch = v3;

  if (self->_valid)
  {
    searchTookTooLong = [(SFTextSearchMatchesCounter *)self searchTookTooLong];
    completionHandler = self->_completionHandler;
    if (searchTookTooLong)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = [(NSMutableOrderedSet *)self->_allFoundRanges count];
    }

    completionHandler[2](completionHandler, v7);

    [(SFTextSearchMatchesCounter *)self invalidate];
  }
}

@end