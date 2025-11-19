@interface SFTextSearchMatchesCounter
- (BOOL)canSkipCountingMatchesForQueryString:(id)a3 wordMatchMethod:(int64_t)a4;
- (BOOL)searchTookTooLong;
- (NSOrderedSet)allFoundRanges;
- (SFTextSearchMatchesCounter)initWithQueryString:(id)a3 completionHandler:(id)a4;
- (void)finishedSearching;
- (void)foundRange:(id)a3 forSearchString:(id)a4 inDocument:(id)a5;
- (void)invalidateFoundRange:(id)a3 inDocument:(id)a4;
@end

@implementation SFTextSearchMatchesCounter

- (SFTextSearchMatchesCounter)initWithQueryString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SFTextSearchMatchesCounter;
  v8 = [(SFTextSearchMatchesCounter *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    startDateOfSearch = v8->_startDateOfSearch;
    v8->_startDateOfSearch = v9;

    v11 = [MEMORY[0x1E695DFA0] orderedSet];
    allFoundRanges = v8->_allFoundRanges;
    v8->_allFoundRanges = v11;

    v13 = _Block_copy(v7);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v13;

    v15 = [v6 copy];
    queryString = v8->_queryString;
    v8->_queryString = v15;

    v8->_valid = 1;
    v17 = v8;
  }

  return v8;
}

- (BOOL)canSkipCountingMatchesForQueryString:(id)a3 wordMatchMethod:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2 || self->_valid || [(NSMutableOrderedSet *)self->_allFoundRanges count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 hasPrefix:self->_queryString];
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

- (void)foundRange:(id)a3 forSearchString:(id)a4 inDocument:(id)a5
{
  if (self->_valid)
  {
    [(NSMutableOrderedSet *)self->_allFoundRanges addObject:a3, a4, a5];
  }
}

- (void)invalidateFoundRange:(id)a3 inDocument:(id)a4
{
  if (self->_valid)
  {
    [(NSMutableOrderedSet *)self->_allFoundRanges removeObject:a3, a4];
  }
}

- (void)finishedSearching
{
  v3 = [MEMORY[0x1E695DF00] now];
  endDateOfSearch = self->_endDateOfSearch;
  self->_endDateOfSearch = v3;

  if (self->_valid)
  {
    v5 = [(SFTextSearchMatchesCounter *)self searchTookTooLong];
    completionHandler = self->_completionHandler;
    if (v5)
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