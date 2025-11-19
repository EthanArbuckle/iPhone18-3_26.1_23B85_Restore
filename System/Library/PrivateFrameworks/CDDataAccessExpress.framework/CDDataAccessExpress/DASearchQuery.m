@interface DASearchQuery
+ (id)searchQueryWithSearchString:(id)a3 consumer:(id)a4;
- (DASearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4;
- (DASearchQuery)initWithSearchString:(id)a3 consumer:(id)a4;
- (DASearchQuery)initWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5;
- (DASearchQueryConsumer)consumer;
- (_NSRange)range;
- (id)description;
- (id)dictionaryRepresentation;
- (void)sendFinishedToConsumerWithError:(id)a3;
- (void)sendResultsToConsumer:(id)a3;
@end

@implementation DASearchQuery

+ (id)searchQueryWithSearchString:(id)a3 consumer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DASearchQuery alloc] initWithSearchString:v6 consumer:v5];

  return v7;
}

- (DASearchQuery)initWithSearchString:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DASearchQuery;
  v8 = [(DASearchQuery *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DASearchQuery *)v8 setSearchString:v6];
    [(DASearchQuery *)v9 setState:0];
    [(DASearchQuery *)v9 setRange:0, 25];
    [(DASearchQuery *)v9 setTimeLimit:0];
    [(DASearchQuery *)v9 setSearchID:&stru_2854C3900];
    [(DASearchQuery *)v9 setConsumer:v7];
  }

  return v9;
}

- (DASearchQuery)initWithSearchString:(id)a3 predicate:(id)a4 consumer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DASearchQuery;
  v11 = [(DASearchQuery *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(DASearchQuery *)v11 setSearchString:v8];
    [(DASearchQuery *)v12 setSearchPredicate:v9];
    [(DASearchQuery *)v12 setState:0];
    [(DASearchQuery *)v12 setRange:0, 25];
    [(DASearchQuery *)v12 setTimeLimit:0];
    [(DASearchQuery *)v12 setSearchID:&stru_2854C3900];
    [(DASearchQuery *)v12 setConsumer:v10];
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
    v6 = [(DASearchQuery *)self searchString];
    v7 = [(DASearchQuery *)self range];
    [(DASearchQuery *)self range];
    v9 = [v5 stringWithFormat:@"<DASearchQuery %p>: %@ range: {%ld, %ld}, timeLimit: %d", self, v6, v7, v8, -[DASearchQuery timeLimit](self, "timeLimit")];
  }

  else
  {
    v10 = [(DASearchQuery *)self range];
    [(DASearchQuery *)self range];
    v9 = [v5 stringWithFormat:@"<DASearchQuery %p>: range: {%ld, %ld}, timeLimit: %d", self, v10, v11, -[DASearchQuery timeLimit](self, "timeLimit")];
  }

  return v9;
}

- (DASearchQuery)initWithDictionaryRepresentation:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DASearchQuery;
  v8 = [(DASearchQuery *)&v15 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"SearchString"];
    [(DASearchQuery *)v8 setSearchString:v9];

    v10 = [v6 objectForKeyedSubscript:@"RangeLoc"];
    v11 = [v10 unsignedIntValue];
    v12 = [v6 objectForKeyedSubscript:@"RangeLength"];
    -[DASearchQuery setRange:](v8, "setRange:", v11, [v12 unsignedIntValue]);

    v13 = [v6 objectForKeyedSubscript:@"TimeLimit"];
    -[DASearchQuery setTimeLimit:](v8, "setTimeLimit:", [v13 intValue]);

    [(DASearchQuery *)v8 setConsumer:v7];
  }

  return v8;
}

- (void)sendResultsToConsumer:(id)a3
{
  v5 = a3;
  if ([(DASearchQuery *)self state]!= 2)
  {
    v4 = [(DASearchQuery *)self consumer];
    [v4 searchQuery:self returnedResults:v5];
  }
}

- (void)sendFinishedToConsumerWithError:(id)a3
{
  v5 = a3;
  if ([(DASearchQuery *)self state]!= 2)
  {
    v4 = [(DASearchQuery *)self consumer];
    [v4 searchQuery:self finishedWithError:v5];
  }
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(DASearchQuery *)self searchString];
  [v3 setObject:v4 forKeyedSubscript:@"SearchString"];

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