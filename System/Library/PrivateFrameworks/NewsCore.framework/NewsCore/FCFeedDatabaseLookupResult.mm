@interface FCFeedDatabaseLookupResult
- (id)description;
@end

@implementation FCFeedDatabaseLookupResult

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  feedItems = [(FCFeedDatabaseLookupResult *)self feedItems];
  [v3 addField:@"feedItems" format:{@"%lu", objc_msgSend(feedItems, "count")}];

  feedRange = [(FCFeedDatabaseLookupResult *)self feedRange];
  dateRange = [feedRange dateRange];
  [v3 addField:@"feedRange" format:{@"%@", dateRange}];

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
  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end