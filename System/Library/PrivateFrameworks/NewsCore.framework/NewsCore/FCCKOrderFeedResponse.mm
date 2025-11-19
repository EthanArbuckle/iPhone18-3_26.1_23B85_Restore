@interface FCCKOrderFeedResponse
- (id)description;
@end

@implementation FCCKOrderFeedResponse

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = v3;
  if (self)
  {
    [v3 addField:@"feedID" value:self->_feedID];
    feedItemAndArticleRecords = self->_feedItemAndArticleRecords;
  }

  else
  {
    [v3 addField:@"feedID" value:0];
    feedItemAndArticleRecords = 0;
  }

  [v4 addField:@"feedItemAndArticleRecords" format:{@"%lu", -[NSArray count](feedItemAndArticleRecords, "count")}];
  if (self)
  {
    if (self->_reachedEnd)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    [v4 addField:@"reachedEnd" value:v6];
    if (self->_reachedMinOrder)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [v4 addField:@"reachedMinOrder" value:v7];
    if (self->_wasDropped)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }
  }

  else
  {
    v8 = @"NO";
    [v4 addField:@"reachedEnd" value:@"NO"];
    [v4 addField:@"reachedMinOrder" value:@"NO"];
  }

  [v4 addField:@"wasDropped" value:v8];
  v9 = [v4 descriptionString];

  return v9;
}

@end