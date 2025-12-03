@interface FCFeedDatabaseLookup
- (BOOL)hasMaxCount;
- (id)description;
@end

@implementation FCFeedDatabaseLookup

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  feedID = [(FCFeedDatabaseLookup *)self feedID];
  [v3 addField:@"feedID" value:feedID];

  feedRange = [(FCFeedDatabaseLookup *)self feedRange];
  dateRange = [feedRange dateRange];
  [v3 addField:@"feedRange" format:{@"%@", dateRange}];

  [v3 addField:@"maxCount" format:{@"%lu", -[FCFeedDatabaseLookup maxCount](self, "maxCount")}];
  if ([(FCFeedDatabaseLookup *)self cachedOnly])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 addField:@"cachedOnly" value:v7];
  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (BOOL)hasMaxCount
{
  maxCount = [(FCFeedDatabaseLookup *)self maxCount];
  if (maxCount)
  {
    LOBYTE(maxCount) = [(FCFeedDatabaseLookup *)self maxCount]!= -1;
  }

  return maxCount;
}

@end