@interface FCFeedDatabaseLookup
- (BOOL)hasMaxCount;
- (id)description;
@end

@implementation FCFeedDatabaseLookup

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = [(FCFeedDatabaseLookup *)self feedID];
  [v3 addField:@"feedID" value:v4];

  v5 = [(FCFeedDatabaseLookup *)self feedRange];
  v6 = [v5 dateRange];
  [v3 addField:@"feedRange" format:{@"%@", v6}];

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
  v8 = [v3 descriptionString];

  return v8;
}

- (BOOL)hasMaxCount
{
  v3 = [(FCFeedDatabaseLookup *)self maxCount];
  if (v3)
  {
    LOBYTE(v3) = [(FCFeedDatabaseLookup *)self maxCount]!= -1;
  }

  return v3;
}

@end