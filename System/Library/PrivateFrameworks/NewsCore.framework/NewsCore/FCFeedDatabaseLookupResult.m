@interface FCFeedDatabaseLookupResult
- (id)description;
@end

@implementation FCFeedDatabaseLookupResult

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = [(FCFeedDatabaseLookupResult *)self feedItems];
  [v3 addField:@"feedItems" format:{@"%lu", objc_msgSend(v4, "count")}];

  v5 = [(FCFeedDatabaseLookupResult *)self feedRange];
  v6 = [v5 dateRange];
  [v3 addField:@"feedRange" format:{@"%@", v6}];

  if ([(FCFeedDatabaseLookupResult *)self exhaustedRange])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 addField:@"exhaustedRange" value:v7];
  [v3 addField:@"ckFromOrder" format:{@"%llu", -[FCFeedDatabaseLookupResult ckFromOrder](self, "ckFromOrder")}];
  [v3 addField:@"ckToOrder" format:{@"%llu", -[FCFeedDatabaseLookupResult ckToOrder](self, "ckToOrder")}];
  if ([(FCFeedDatabaseLookupResult *)self ckFromOrder])
  {
    v8 = @"non-nil";
  }

  else
  {
    v8 = @"nil";
  }

  [v3 addField:@"insertionToken" value:v8];
  v9 = [v3 descriptionString];

  return v9;
}

@end