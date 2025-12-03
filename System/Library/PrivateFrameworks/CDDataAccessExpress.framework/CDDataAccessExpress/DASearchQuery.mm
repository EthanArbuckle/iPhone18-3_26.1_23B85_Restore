@interface DASearchQuery
+ (id)searchQueryWithSearchString:(id)string consumer:(id)consumer;
- (DASearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer;
- (DASearchQuery)initWithSearchString:(id)string consumer:(id)consumer;
- (DASearchQuery)initWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer;
- (DASearchQueryConsumer)consumer;
- (_NSRange)range;
- (id)description;
- (id)dictionaryRepresentation;
- (void)sendFinishedToConsumerWithError:(id)error;
- (void)sendResultsToConsumer:(id)consumer;
@end

@implementation DASearchQuery

+ (id)searchQueryWithSearchString:(id)string consumer:(id)consumer
{
  consumerCopy = consumer;
  stringCopy = string;
  v7 = [[DASearchQuery alloc] initWithSearchString:stringCopy consumer:consumerCopy];

  return v7;
}

- (DASearchQuery)initWithSearchString:(id)string consumer:(id)consumer
{
  stringCopy = string;
  consumerCopy = consumer;
  v11.receiver = self;
  v11.super_class = DASearchQuery;
  v8 = [(DASearchQuery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DASearchQuery *)v8 setSearchString:stringCopy];
    [(DASearchQuery *)v9 setState:0];
    [(DASearchQuery *)v9 setRange:0, 25];
    [(DASearchQuery *)v9 setTimeLimit:0];
    [(DASearchQuery *)v9 setSearchID:&stru_2854C3900];
    [(DASearchQuery *)v9 setConsumer:consumerCopy];
  }

  return v9;
}

- (DASearchQuery)initWithSearchString:(id)string predicate:(id)predicate consumer:(id)consumer
{
  stringCopy = string;
  predicateCopy = predicate;
  consumerCopy = consumer;
  v14.receiver = self;
  v14.super_class = DASearchQuery;
  v11 = [(DASearchQuery *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(DASearchQuery *)v11 setSearchString:stringCopy];
    [(DASearchQuery *)v12 setSearchPredicate:predicateCopy];
    [(DASearchQuery *)v12 setState:0];
    [(DASearchQuery *)v12 setRange:0, 25];
    [(DASearchQuery *)v12 setTimeLimit:0];
    [(DASearchQuery *)v12 setSearchID:&stru_2854C3900];
    [(DASearchQuery *)v12 setConsumer:consumerCopy];
  }

  return v12;
}

- (id)description
{
  v3 = DALoggingwithCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    searchString = [(DASearchQuery *)self searchString];
    range = [(DASearchQuery *)self range];
    [(DASearchQuery *)self range];
    v9 = [v5 stringWithFormat:@"<DASearchQuery %p>: %@ range: {%ld, %ld}, timeLimit: %d", self, searchString, range, v8, -[DASearchQuery timeLimit](self, "timeLimit")];
  }

  else
  {
    range2 = [(DASearchQuery *)self range];
    [(DASearchQuery *)self range];
    v9 = [v5 stringWithFormat:@"<DASearchQuery %p>: range: {%ld, %ld}, timeLimit: %d", self, range2, v11, -[DASearchQuery timeLimit](self, "timeLimit")];
  }

  return v9;
}

- (DASearchQuery)initWithDictionaryRepresentation:(id)representation consumer:(id)consumer
{
  representationCopy = representation;
  consumerCopy = consumer;
  v15.receiver = self;
  v15.super_class = DASearchQuery;
  v8 = [(DASearchQuery *)&v15 init];
  if (v8)
  {
    v9 = [representationCopy objectForKeyedSubscript:@"SearchString"];
    [(DASearchQuery *)v8 setSearchString:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"RangeLoc"];
    unsignedIntValue = [v10 unsignedIntValue];
    v12 = [representationCopy objectForKeyedSubscript:@"RangeLength"];
    -[DASearchQuery setRange:](v8, "setRange:", unsignedIntValue, [v12 unsignedIntValue]);

    v13 = [representationCopy objectForKeyedSubscript:@"TimeLimit"];
    -[DASearchQuery setTimeLimit:](v8, "setTimeLimit:", [v13 intValue]);

    [(DASearchQuery *)v8 setConsumer:consumerCopy];
  }

  return v8;
}

- (void)sendResultsToConsumer:(id)consumer
{
  consumerCopy = consumer;
  if ([(DASearchQuery *)self state]!= 2)
  {
    consumer = [(DASearchQuery *)self consumer];
    [consumer searchQuery:self returnedResults:consumerCopy];
  }
}

- (void)sendFinishedToConsumerWithError:(id)error
{
  errorCopy = error;
  if ([(DASearchQuery *)self state]!= 2)
  {
    consumer = [(DASearchQuery *)self consumer];
    [consumer searchQuery:self finishedWithError:errorCopy];
  }
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  searchString = [(DASearchQuery *)self searchString];
  [v3 setObject:searchString forKeyedSubscript:@"SearchString"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DASearchQuery range](self, "range")}];
  [v3 setObject:v5 forKeyedSubscript:@"RangeLoc"];

  v6 = MEMORY[0x277CCABB0];
  [(DASearchQuery *)self range];
  v8 = [v6 numberWithUnsignedInteger:v7];
  [v3 setObject:v8 forKeyedSubscript:@"RangeLength"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[DASearchQuery timeLimit](self, "timeLimit")}];
  [v3 setObject:v9 forKeyedSubscript:@"TimeLimit"];

  return v3;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (DASearchQueryConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end